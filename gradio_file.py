import gradio as gr

# Define a function to be wrapped by the Gradio interface
def greet(name):
    return "Hello, " + name + "!"

# Create a Gradio interface with the greet function
demo = gr.Interface(
    fn=greet,
    inputs="text",
    outputs="text"
)

# Launch the interface
demo.launch(server_port=7860)
