import time
import yaml
from lib import mod3


# Code here will change quite frequently
def main(event, context):
    """
    Main function to be executed when the Lambda is invoked.

    :param event: AWS Lambda uses this parameter to pass in event data to the handler.
    :param context: AWS Lambda uses this parameter to provide runtime information to your handler.
    """
    print(f"Event: {event}, Context: {context}")
    print(f"Running with yaml version: [{yaml.__version__}]")
    if mod3(int(time.time())):
        raise Exception("Random exception 1/3 of the time")
