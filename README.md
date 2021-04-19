
## Orchestrator
You need to provide a fabric `fabfile.py` orchestrator to coordinate the
configuration of the cluster once it is started.

### `fabfile_pre.py` 
It supports including the content of config files using `include_file_contents` 
without having to include them directly in the fabfile.

For example:

    MONGOD_CONF = """{{ include_file_contents('files/mongod.conf.jinja') }}"""

Then you can generate the `fabfile.py` orchestrator using the provided script:

    ./generate_orchestrator.py

This will produce the required fabfile.py file.



