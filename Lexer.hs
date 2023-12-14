module Lexer where

import Data.Char

data Expr =  BTrue
           | BFalse
           | Num Int            
           | Add Expr Expr
           | Sub Expr Expr
           | Mul Expr Expr
           | And Expr Expr      
           | If Expr Expr Expr 
           | Or Expr Expr
           | Var String
           | Lam String Ty Expr
           | App  Expr Expr
           | Paren Expr
           | Let String Expr Expr 
           | Bigger Expr Expr
           | Smaller Expr Expr
           | GreaterEquals Expr Expr
           | LeastEqual Expr Expr
           | Equals Expr Expr
           | Different Expr Expr
           | Not Expr
       deriving Show

data Ty = TBool
          | TNum
          | TFun Ty Ty
       deriving (Show, Eq)

data Token = TokenTrue
           | TokenFalse
           | TokenNum Int
           | TokenAdd
           | TokenSub      
           | TokenMul     
           | TokenAnd
           | TokenIf
           | TokenOr
           | TokenThen
           | TokenElse
           | TokenVar String
           | TokenLam
           | TokenArrow
           | TokenLParen
           | TokenRParen
           | TokenLet
           | TokenEq
           | TokenIn
           | TokenColon
           | TokenBoolean
           | TokenNumber
           | TokenBigger
           | TokenSmaller
           | TokenGreaterEquals
           | TokenLeastEqual
           | TokenEquals
           | TokenDifferent
           | TokenNot
        deriving (Show, Eq)

isSymb :: Char -> Bool
isSymb c = c `elem` "+&|-*\\->()=:<!"

lexer :: String -> [Token]
lexer [] = []
lexer ('(':cs) = TokenLParen : lexer cs
lexer (')':cs) = TokenRParen : lexer cs
lexer (c:cs) | isSpace c = lexer cs     
             | isDigit c = lexNum (c:cs)  
             | isSymb  c = lexSymbol (c:cs)  
             | isAlpha c = lexKW (c:cs) 

lexNum :: String -> [Token]
lexNum cs = case span isDigit cs of
                (num, rest) -> TokenNum (read num) : lexer rest   --read converte para integer.

lexSymbol :: String -> [Token]
lexSymbol cs = case span isSymb cs of
                ("+", rest)  -> TokenAdd : lexer rest
                ("-", rest)  -> TokenSub : lexer rest
                ("*", rest)  -> TokenMul : lexer rest
                ("&&", rest) -> TokenAnd : lexer rest
                ("||", rest) -> TokenOr  : lexer rest
                ("\\", rest) -> TokenLam : lexer rest
                ("->", rest) -> TokenArrow : lexer rest 
                ("=", rest)  -> TokenEq : lexer rest 
                (":", rest)  -> TokenColon : lexer rest 
                (">", rest)  -> TokenBigger : lexer rest
                ("<", rest)  -> TokenSmaller : lexer rest
                (">=", rest) -> TokenGreaterEquals : lexer rest
                ("<=", rest) -> TokenLeastEqual : lexer rest
                ("==", rest) -> TokenEquals : lexer rest
                ("!=", rest) -> TokenDifferent : lexer rest
                ("!", rest) -> TokenNot : lexer rest
                _-> error "Lexial error: Invalid Symbol!"

lexKW :: String -> [Token]
lexKW cs = case span isAlpha cs of
             ("true", rest)  -> TokenTrue  : lexer rest
             ("false", rest) -> TokenFalse : lexer rest
             ("if", rest)    -> TokenIf    : lexer rest
             ("then", rest)  -> TokenThen  : lexer rest
             ("else", rest)  -> TokenElse  : lexer rest
             ("let", rest) -> TokenLet : lexer rest 
             ("in", rest) -> TokenIn : lexer rest 
             ("Num", rest) -> TokenNumber : lexer rest 
             ("Bool", rest) -> TokenBoolean : lexer rest 
             (var, rest) -> TokenVar var : lexer rest 