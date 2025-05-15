import streamlit as st

st.title("Prensu's  Coffee App")
st.subheader("Brewed with streamlit")
st.text("Welcome to your first interactive app")
st.write("Choose your fav variety of coffee")



coffee=st.selectbox("Choose your fav variety of coffee",["Espresso","Latte","Cappuccino","Mocha"])

st.write(f"You choose {coffee} . Excellent choice!")
st.write("You can also add some extra toppings to your coffee")

st.success("Your coffee is ready")  

#if we need we can handle with uv or uvx it will handle all the environment variables