---
title: "Concourse Targets"
date: 2023-06-27T22:37:44+03:00
draft: false
---

# What are targets exactly?

When starting out with Concourse targets can be a bit confusing at first. In this article I will try to explain their purpose. A Concourse deployment gives the users a web UI where they can visualise the teams along with their pipelines. To set pipelines, we write their definition in a yaml file and apply it using `fly` CLI.

To do a login with fly on we can issue the following comand:

```bash
fly login --target abc  --concourse-url http://your-concourse.com/ -u test -p test
```

If we omit the `--team-name` flag, we will be logged into the `main` team. So if we want to target other team we can specify the team as well:

```bash
fly login --target abc --team-name docker-build  --concourse-url http://your-concourse.com/ -u test -p test
```


>NOTE: In this example I used user/pass for authentication. In your case you might use OIDC or something different but the main idea regarding targets still holds.


Now this is where the confusing part comes. **Why do we have the `--target` flag and also the `--team-name`?** Do we set them to the same value? You can, but is not necessary and and some casses it might be better to give it a different name. Let's see why!


Later to set a pipeline (or do any other operation) we simply use the target name.

```bash
fly -t main set-pipeline -p application1 -c pipeline.yaml
```

The fact that you have to specify the target every time is acutally intentional to prevent you from running a command against a wrong environment. This is clearly specified in the [docs](https://concourse-ci.org/fly.html#fly-login):

>"The -t flag is intentionally stateless and must be explicitly added to each command. This reduces the risk of accidentally running a command against the wrong environment when you have multiple targets defined."