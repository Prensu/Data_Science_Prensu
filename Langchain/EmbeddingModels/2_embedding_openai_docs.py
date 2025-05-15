from langchain_openai import OpenAIEmbeddings
from dotenv import load_dotenv

load_dotenv()

# Create the embedding model instance correctly
embeddings = OpenAIEmbeddings(
    model="text-embedding-3-large",
    dimensions=32  
)

documents=[
    "Delhi is the capital of India.",
    "Kathmandu is the capital of Nepal.",   
    "Dhaka is the capital of Bangladesh."
]
# Use the model to embed a query
result = embeddings.embed_documents("What is the capital of Nepal?")

# Print the embedding vector
print(str(result))
