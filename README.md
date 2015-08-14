Plugin name: local-exec

Install the plugin to $RDECK_BASE/libext

Configure it for the project. 
eg $RDECK_BASE/projects/fun/etc/project.properties

   project.plugin.NodeExecutor.local-exec.envfile=/path/to/my/env/file

Add the `local-node-executor` attribute to the rundeck node in your project.

eg in $RDECK_BASE/projects/fun/etc/resources.xml

    <project>
      <node name="Targa-2.local" description="Rundeck server node" tags="" hostname="Targa-2.local" osArch="x86_64" osFamily="unix" osName="Mac OS X" osVersion="10.10.4" username="alexh" 
        local-node-executor="local-exec" />
     </project>


