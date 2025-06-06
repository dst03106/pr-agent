## Overview

The `add_docs` tool scans the PR code changes, and automatically suggests documentation for any code components that changed in the PR (functions, classes, etc.).

It can be invoked manually by commenting on any PR:

```
/add_docs
```

## Example usage

Invoke the tool manually by commenting `/add_docs` on any PR:

![Docs command](https://codium.ai/images/pr_agent/docs_command.png){width=768}

The tool will generate documentation for all the components that changed in the PR:

![Docs component](https://codium.ai/images/pr_agent/docs_components.png){width=768}

![Docs single component](https://codium.ai/images/pr_agent/docs_single_component.png){width=768}

You can state a name of a specific component in the PR to get documentation only for that component:

```
/add_docs component_name
```

## Manual triggering

Comment `/add_docs` on a PR to invoke it manually.

## Automatic triggering

To automatically run the `add_docs` tool when a pull request is opened, define in a [configuration file](https://qodo-merge-docs.qodo.ai/usage-guide/configuration_options/):


```toml
[github_app]
pr_commands = [
    "/add_docs",
    ...
]
```

The `pr_commands` list defines commands that run automatically when a PR is opened.
Since this is under the [github_app] section, it only applies when using the Qodo Merge GitHub App in GitHub environments.

## Configuration options

- `docs_style`: The exact style of the documentation (for python docstring). you can choose between: `google`, `numpy`, `sphinx`, `restructuredtext`, `plain`. Default is `sphinx`.
- `extra_instructions`: Optional extra instructions to the tool. For example: "focus on the changes in the file X. Ignore change in ...".

!!! note "Notes"
    - The following languages are currently supported: Python, Java, C++, JavaScript, TypeScript, C#.
    - This tool can also be triggered interactively by using the [`analyze`](./analyze.md) tool.
