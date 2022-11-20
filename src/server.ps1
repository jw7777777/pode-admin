Start-PodeServer {
    Add-PodeEndpoint -Address * -Port 8080 -Protocol Http

    Add-PodeRoute -Method Get -Path '/' -ScriptBlock {
        Write-PodeViewResponse -Path 'index'
    }
    Add-PodeRoute -Method Get -Path '/buttons' -ScriptBlock {
        Write-PodeViewResponse -Path 'buttons'
    }
    Add-PodeRoute -Method Get -Path '/cards' -ScriptBlock {
        Write-PodeViewResponse -Path 'cards'
    }
    Add-PodeRoute -Method Get -Path '/utilities-color' -ScriptBlock {
        Write-PodeViewResponse -Path 'utilities-color'
    }
    Add-PodeRoute -Method Get -Path '/login' -ScriptBlock {
        Write-PodeViewResponse -Path 'login'
    }
    Add-PodeRoute -Method Get -Path '/register' -ScriptBlock {
        Write-PodeViewResponse -Path 'register'
    }
    Add-PodeRoute -Method Get -Path '/charts' -ScriptBlock {
        Write-PodeViewResponse -Path 'charts'
    }
    Add-PodeRoute -Method Get -Path '/tables' -ScriptBlock {
        Write-PodeViewResponse -Path 'tables'
    }
}

