# GeyserMC Module

## What is GeyserMC?

[GeyserMC](https://geysermc.org/) is a proxy that enabled Minecraft Bedrock clients to connect to Minecraft Java servers.

## How do I set this up?

1. Create a new instance from the Generic template.
2. Delete the file named `GenericModule.kvp` in your instance's root directory.
3. Copy the `GeyserModule.kvp` file to the earlier mentioned directory and rename it to `GenericModule.kvp`.
4. Go to your instance and click manage, then click the update button to download the latest version of Geyser.
5. Optionally you can edit the `GenericModule.kvp` file to change the IP binding, port binding, and max users to your liking.
6. Run your server once, a configuration file will be created called `config.yml`, update it to your liking and restart.
7. Go to your AMP instance and update any other Geyser related settings by clicking going to `Configuration -> Geyser Configuration`.
8. Congratulations, Bedrock clients can now seemlessly connect to your Java server! 🎉

## Known Problems

- The console shows weird jumbled characters.
  - This will be fixed in a future release.
- The server doesn't recognize that it has started, and doesn't recognize players joining and leaving. 
  - This is related to the above issue, and thus will be fixed in the future.