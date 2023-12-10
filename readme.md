![Minion](https://upload.wikimedia.org/wikipedia/commons/2/2f/Logo_of_the_Haskell_programming_language.png)

# Instalação

- Visual Studio Code

  - https://code.visualstudio.com/Download
  - Instalar o plugin “Haskell Syntax Highlighting”

- Haskell Platform (Ubuntu)

  - Utilizar o comando: apt install haskell-platform
  - Instala as ferramentas necessárias para desenvolver sistemas simples em Haskell

- Haskell Stack (facilita a instalação no Windows)
  - Ferramenta para gerenciar projetos e bibliotecas
  - Instala todas as dependências automaticamente (incluindo o compilador GHC).
  - https://www.haskellstack.org/

# Logo abaixo, estão alguns comandos para rodar o interpretador desenvolvido em Haskell corretamente.

### Comando que faz gerar o arquivo Parser.hs para que então a aplicação funcione corretamente.

```
happy Parser.y
```

### Comando para chamar direto o parser passando uma expressão.

```
parser (lexer "if true && false then 4 else 3")
```

### Comando para passar um arquivo que contenha uma expressão e a aplicação retorna o resultado.

```
$ runghc Main.hs < arquivo.extensão
```

Observação: Lembrando que deve ser substituído o "arquivo.extensão" para o nome do arquivo e extensão que foi criado.

### Demais comandos que podem ser úteis para testar a aplicação

```
eval $ parser $ lexer "if true && false then 4 else 5
```

::: warning
_here be dragons_
:::
