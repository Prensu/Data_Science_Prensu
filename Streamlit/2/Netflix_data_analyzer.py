import streamlit as st
import pandas as pd
import plotly.express as px

# Title
st.title("📊 CSV Data Analyzer")
st.write("Upload a CSV file to explore, summarize, and visualize your data interactively.")

# File uploader
uploaded_file = st.file_uploader("Upload your CSV file", type=["csv"])

if uploaded_file is not None:
    # Read the CSV
    df = pd.read_csv(uploaded_file)

    st.success("✅ File uploaded successfully!")

    # Show raw data
    with st.expander("🔍 Preview Data"):
        st.dataframe(df)

    # Basic Summary
    st.header("📈 Data Summary")
    st.write("Shape of the dataset:", df.shape)
    st.write("Data Types:")
    st.write(df.dtypes)
    
    st.subheader("📊 Statistical Summary")
    st.write(df.describe(include='all'))

    # Column selection
    numeric_cols = df.select_dtypes(include='number').columns.tolist()
    cat_cols = df.select_dtypes(include='object').columns.tolist()

    # Dashboard
    st.header("📉 Visualizations Dashboard")

    # Histogram
    with st.expander("📌 Histogram"):
        col = st.selectbox("Select a numeric column for histogram", numeric_cols)
        fig = px.histogram(df, x=col, nbins=30)
        st.plotly_chart(fig)

    # Box plot
    with st.expander("📦 Box Plot"):
        col = st.selectbox("Select a numeric column for box plot", numeric_cols, key='box')
        fig = px.box(df, y=col)
        st.plotly_chart(fig)

    # Pie chart
    with st.expander("🥧 Pie Chart"):
        if cat_cols:
            col = st.selectbox("Select a categorical column", cat_cols)
            pie_data = df[col].value_counts().reset_index()
            fig = px.pie(pie_data, values=col, names='index', title=f"{col} Distribution")
            st.plotly_chart(fig)
        else:
            st.warning("No categorical column available for pie chart.")

    # Correlation Heatmap
    with st.expander("🔗 Correlation Heatmap"):
        if len(numeric_cols) >= 2:
            st.write("Correlation among numeric variables:")
            corr = df[numeric_cols].corr()
            fig = px.imshow(corr, text_auto=True, color_continuous_scale='RdBu_r')
            st.plotly_chart(fig)
        else:
            st.warning("Need at least two numeric columns to show a heatmap.")

else:
    st.info("Please upload a CSV file to get started.")
