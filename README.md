# generic-platformer

This is my generic project for testing out various game engines. This project is
designed for 2d sprite games.


## Implementation info

- **Language**: Lua
- **Framework**: LÖVE (https://love2d.org/)
    - **Framework Type**: Framework-calls-source
    - **Entry point**: `main.lua` (non-configurable)
    - **Documentation**: https://love2d.org/wiki/love
- **Phase**: Basic mechanics


## Repo Layout

- `master`: Where various resources (e.g. spritesheets, sounds, levels, etc) go.
- Other branches:
    - Take the form `{lang}-{fw}-{branch}`, where:
        - `{lang}` is the programming language the project is written in
        - `{fw}` is the framework used
        - `{branch}` is the name of any feature branches
        - e.g. `lua-love2d-master`
    - All branches may pull in any changes to master at any time to update
      resources. All resources should be organized such that master can be
      pulled in at any time and nothing breaks and everything still makes sense.
- Release tags:
    - Take the form `{lang}-{fw}-v{semver}`, borrowing `{lang}` and `{fw}` from
      above. `{semver}` is a SemVer-style version number.
    - The same `{semver}` for a different `{lang}` or `{fw}` does NOT
      necessarily represent the same or even similar functionality in any way.
