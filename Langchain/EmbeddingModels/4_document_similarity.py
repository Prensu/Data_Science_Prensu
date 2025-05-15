from sklearn.metrics.pairwise import cosine_similarity
from dotenv import load_dotenv
from langchain.embeddings import OpenAIEmbeddings
import numpy as np 

load_dotenv()

embedding=OpenAIEmbeddings(model="text-embedding-3-large",dimensions=300)

documents = [
    "Virat Kohli is an indian cricket known for his aggressive batting and leadership.",
    "MS Dhoni is a former Indian cricketer and captain of the Indian national team.",
    "Sachin Tendulkar is widely regarded as one of the greatest batsmen in the history of cricket.",    
    "Rohit Sharma is known for his elegant batting style and has multiple double centuries in ODIs.",
    "Jasprit Bumrah is a fast bowler known for his unique bowling action and death overs expertise.",

]

query="tell me about king kohli"

doc_embeddings = embedding.embed_documents(documents)
query_embedding = embedding.embed_query(query)

print(cosine_similarity([query_embedding], doc_embeddings))[0]

index, score= sorted(list(enumerate(scores)),key=lambda x:x[1])[-1]
print(f"Most similar document: {documents[index]}")
print(f"Similarity score: {score}")