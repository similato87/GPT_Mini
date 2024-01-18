import os
import subprocess
import tempfile

from openai import OpenAI


def get_api_key():
    return os.getenv('OPENAI_API_KEY')


def chat_with_gpt(api_key):
    client = OpenAI(api_key=api_key)

    while True:
        user_message = input("Enter your message (or 'quit' to exit): ")
        if user_message.lower() == 'quit':
            break

        completion = client.chat.completions.create(
            model="gpt-4-1106-preview",
            messages=[
                {"role": "user", "content": user_message}
            ]
        )

        print_to_editor(completion.choices[0].message.content)


def print_to_editor(message):
    # Write the message to a temporary file and open it in the default text editor
    with tempfile.NamedTemporaryFile(suffix=".txt", delete=False) as tmp_file:
        tmp_file.write(message.encode())
        tmp_file_name = tmp_file.name
    subprocess.call(['notepad', tmp_file_name] if os.name == 'nt' else ['open', tmp_file_name])


if __name__ == "__main__":
    api_key = get_api_key()
    if not api_key:
        print("API key not found. Please set it in 'api_key.txt' or as an environment variable.")
    else:
        chat_with_gpt(api_key)
