# Análise de E-commerce com SQL

## Visão Geral

Este projeto realiza uma análise completa de um banco de dados de e-commerce utilizando SQL, com foco em vendas, comportamento de clientes e retenção.

O objetivo é transformar dados transacionais em insights de negócio que apoiem decisões estratégicas em marketing, produto e gestão.

## Objetivo do Projeto

Analisar um e-commerce fictício com dados mockados para identificar oportunidades de:

- Aumento de receita
- Melhoria da retenção de clientes
- Entendimento do comportamento dos clientes
- Otimização de produtos


## Estrutura do Banco de Dados

O projeto utiliza um modelo relacional composto pelas seguintes tabelas:

- **customers** → informações dos clientes e data de cadastro  
- **products** → catálogo de produtos com categorias e preços  
- **orders** → pedidos realizados pelos clientes  
- **order_items** → itens contidos em cada pedido  

Essa estrutura segue um modelo normalizado adequado para análises SQL.


## Principais Métricas (KPIs)

### Métricas de Negócio
- Receita total
- Ticket médio por pedido (AOV)
- Receita por cliente (LTV)

### Métricas de Clientes
- Frequência de compras por cliente
- Distribuição de comportamento de compra

### Métricas de Retenção
- Taxa de churn (clientes inativos há 60 dias ou mais)
- Análise de cohort (retenção por mês de aquisição)

### Métricas de Produto
- Receita por produto
- Produtos com melhor performance


### Principais Análises Realizadas

## Análise de Receita
A receita total foi calculada com base nos itens vendidos, permitindo uma visão precisa do faturamento do e-commerce.


## Análise de Valor do Cliente (LTV)
O LTV foi calculado somando o valor total gasto por cada cliente ao longo do tempo, identificando clientes mais valiosos.


## Análise de Comportamento de Compra
Foi analisada a frequência de compras por cliente, permitindo entender padrões de recorrência.


## Análise de Churn
O churn foi definido como clientes sem compras há mais de 60 dias, permitindo identificar clientes inativos e em risco de perda.


## Análise de Cohort
Clientes foram agrupados pelo mês da primeira compra para analisar a retenção ao longo do tempo.

Essa análise mostra como o comportamento dos clientes evolui após a aquisição. 


## Principais Insights

- Uma pequena parte dos clientes concentra grande parte da receita (padrão 80/20)
- A retenção de clientes cai significativamente após a primeira compra
- O churn indica uma quantidade relevante de clientes inativos
- A análise de cohort revelou uma queda significativa na retenção após o primeiro mês, indicando que a maior parte dos clientes realiza poucas compras recorrentes.


## Recomendações de Negócio

- Focar em estratégias de retenção nos primeiros 30 dias após a primeira compra
- Criar campanhas de reativação para clientes inativos (churn)
- Identificar produtos que incentivam recompra e fidelização
- Priorizar clientes de alto valor (alto LTV)


## Tecnologias Utilizadas

- SQL Server
- Joins
- CTEs (Common Table Expressions)
- Funções de agregação (SUM, AVG, COUNT)
- Window Functions
- Funções de data


## 📁 Estrutura do Projeto


```text
/ecommerce-sql-analysis
│
├── 📁 Data SQL (Queries desenvolvidas)
├── 📁 Evidências (Registros do Banco)
└── README.md
```


## Resumo Executivo

A análise revelou padrões claros de comportamento dos clientes, destacando uma forte concentração de receita em uma pequena base de usuários e uma queda significativa na retenção após a primeira compra.

O estudo de churn identificou clientes inativos há mais de 60 dias, enquanto a análise de cohort mostrou uma redução progressiva na retenção ao longo do tempo, indicando desafios na fidelização de clientes.

Esses resultados reforçam a importância de estratégias de retenção, especialmente nos primeiros ciclos de compra.



## Principais Impactos do Projeto

Este projeto demonstra como dados transacionais podem ser transformados em decisões de negócio, permitindo:

Identificação de clientes de alto valor (LTV), 
Monitoramento de perda de clientes (churn),
Avaliação de retenção por período (cohort) e 
Apoio à criação de estratégias de marketing e fidelização


## Destaques Técnicos:

Uso de SQL avançado com JOINs, CTEs e Window Functions
Implementação de análise de churn baseada em regra de inatividade (60 dias)
Construção de cohort analysis para retenção de clientes
Modelagem de dados relacional aplicada a cenário de e-commerce


## Conclusão

Este projeto demonstra como dados transacionais de e-commerce podem ser transformados em insights estratégicos utilizando SQL.

O processo completo envolveu:
modelagem de dados → criação de KPI's → análise de comportamento → churn → cohort → geração de insights de negócio.
