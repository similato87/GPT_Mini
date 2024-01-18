# GPT Chat Application

This project provides a Python application to interact with OpenAI's GPT-4 API, specifically using the `gpt-4-1106-preview` model. The application allows users to send messages to the GPT model and receive responses. The responses are formatted and displayed in the system's default text editor for easy reading.

## Prerequisites

Before you begin, ensure you have the following:
- Python 3.x installed on your system.
- An OpenAI API key.

## Installation

1. **Clone or Download the Repository**
   - If you have `git` installed, you can clone the repository.
   - Alternatively, download the ZIP file of the project and extract it.

2. **Set Up the API Key**
   - The application requires an OpenAI API key. You can set this key as a system environment variable named `OPENAI_API_KEY`. 
   - If you prefer not to use an environment variable, the provided batch script will prompt you to enter your API key and set it up for you.

## Usage

1. **Run the Batch File**
   - In the project directory, double-click on `run_gpt_chat.bat`. This script will check for the API key, install the required Python package (`openai`), and run the Python application.

2. **Interact with GPT-4**
   - Once the application starts, enter your message at the prompt and press Enter.
   - The application will send your message to the GPT-4 model and display the response in your default text editor.
   - To exit, type 'quit' and press Enter.

## Files in the Project

- `gpt_chat.py`: The main Python script for interacting with the GPT-4 model.
- `run_gpt_chat.bat`: A Windows batch script to set up and run the Python application.
- `README.md`: This instruction file.


