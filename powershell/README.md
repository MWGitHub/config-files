# PowerShell profile dependencies

Install the tools used by [profile.ps1](profile.ps1):

1. Install [Starship](https://starship.rs/guide/#%F0%9F%9A%80-installation) using the `winget` method and choose a nerdfont such as `FireCode Nerf Font`.

2. Install [git-completion](https://github.com/kzrnm/git-completion-pwsh) from the PowerShell Gallery:

    ```powershell
    Install-PSResource -Name git-completion -Version 2.1.0 -Scope CurrentUser
    ```
