# from langchain_huggingface import ChatHuggingFace, HuggingFacePipeline
# import os

# llm = HuggingFacePipeline.from_model_id(
#     model_id='TinyLlama/TinyLlama-1.1B-Chat-v1.0',
#     task='text-generation',
#     pipeline_kwargs=dict(
#         temperature=0.5,
#         max_new_tokens=100
#     )
# )
# model = ChatHuggingFace(llm=llm)

# result = model.invoke("What is the capital of India")

# print(result.content)

#The above code is Depricated . No longer works.
# The following code is the updated version using the new langchain_community package


from langchain_community.chat_models import ChatHuggingFace
from langchain_community.llms import HuggingFacePipeline
import os

# Load the model as a pipeline
llm = HuggingFacePipeline.from_model_id(
    model_id='TinyLlama/TinyLlama-1.1B-Chat-v1.0',
    task='text-generation',
    pipeline_kwargs=dict(
        temperature=0.5,
        max_new_tokens=100
    )
)

# Wrap it into a chat-compatible interface
model = ChatHuggingFace(llm=llm)

# Invoke the model
result = model.invoke("What is the capital of India?")

# Print the result
print(result.content)
