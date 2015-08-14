# Name: local-exec

This example plugin can overide the built in local node executor used when rundeck needs to execute any command string on the host it runs on.

# Build
make

# Install
Copy the plugin.zip to $RDECK_BASE/libext

# Configure

Configure it for the project. 

##$RDECK_BASE/projects/fun/etc/project.properties

    project.plugin.NodeExecutor.local-exec.envfile=/path/to/my/env/file

## $RDECK_BASE/projects/fun/etc/resources.xml

Add the `local-node-executor` attribute to the rundeck node in your project.

Edit the resources.xml file, specying 'local-exec':

    <project>
      <node name="Targa-2.local" description="Rundeck server node" tags="" hostname="Targa-2.local" osArch="x86_64" osFamily="unix" osName="Mac OS X" osVersion="10.10.4" username="alexh" 
        local-node-executor="local-exec" />
     </project>


