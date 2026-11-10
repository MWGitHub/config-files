# Initialize starship
Invoke-Expression (&starship init powershell)

# dotnet native argument tab completion
Register-ArgumentCompleter -Native -CommandName dotnet -ScriptBlock {
	param($wordToComplete, $commandAst, $cursorPosition)

	dotnet complete --position $cursorPosition "$commandAst" | ForEach-Object {
		[System.Management.Automation.CompletionResult]::new(
			$_, $_, 'ParameterValue', $_
		)
	}
}

# git tab completion using git-completion-pwsh
Register-ArgumentCompleter -CommandName gitk -Native -ScriptBlock {
    param($wordToComplete, $CommandAst, $CursorPosition)
    return (Complete-Gitk -CommandAst $CommandAst -CursorPosition $CursorPosition)
}
Register-ArgumentCompleter -CommandName git -Native -ScriptBlock {
    param($wordToComplete, $CommandAst, $CursorPosition)
    return (Complete-Git -CommandAst $CommandAst -CursorPosition $CursorPosition)
}
