## Example project for using CKAN harvesters in a datacats environment

### Setup
1. Install [datacats](https://github.com/datacats/datacats)
2. Clone this repo
3. Download the dependencies:

    ```
    ./unroll.sh
    ```

4. Run `datacats init` inside the project directory
5. Create a harvest source at http://mylocalckan/harvest/
6. Run the harvester gather and fetch queues

    ```
    cd ckanext-harvest/
    datacats paster -d harvester gather_consumer
    datacats paster -d harvester fetch_consumer
    ```

7. Run the harvest job:

    ```
    datacats paster harvester run
    ```

The `gather` and `fetch` stages will run as separate docker containers alongside
all the others. If you run them with `-d` as above, they will run in the
background.
