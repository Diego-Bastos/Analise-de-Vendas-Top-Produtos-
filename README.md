# Análise de Vendas: Top 10 Produtos Mais Vendidos

> "Quero saber quais são os nossos 10 produtos campeões de vendas. Não só quantidade — quero ver faturamento também. Isso vai entrar na apresentação da diretoria."

## 📌 Visão Geral do Projeto
Este projeto tem como objetivo responder à demanda acima, analisando o histórico de vendas de uma operação comercial para identificar os **10 produtos com maior faturamento** e avaliar o desempenho geral por categoria.

---

## 🛠️ Tecnologias e Ferramentas Utilizadas
* **SQL:** Consultas relacionais, cruzamento de tabelas, agregações e filtros.
* **Power BI:** Conexão com a base tratada e construção de indicadores visuais (KPIs).

---

## 🔍 Estrutura da Análise em SQL
Para consolidar os dados das vendas com as informações de produtos e categorias, foi executada uma consulta utilizando múltiplos relacionamentos:
* **`INNER JOIN` Triplo:** Conexão da tabela de fatos de vendas com a dimensão de produtos e a dimensão de categorias.
* **Agregação e Ordenação:** Utilização de `SUM()` para calcular o faturamento total por item, `GROUP BY` e `ORDER BY ... DESC` para obter o ranking exato dos 10 produtos mais vendidos.

---

## 📊 Principais Resultados e Insights
* **Liderança por Faturamento:** O produto mais vendido em faturamento total foi o **Proseware Projector 1080p DLP86 White**, gerando R$ 52 Mi (Representando 11% do faturamento Total).
* **Relação Ticket Médio vs. Volume:** O produto com o **maior ticket médio** (Litware Refrigerator 24.7CuFt X980 Grey - R$ 3.141) figura na 10ª posição de faturamento total, apresentando volume de vendas reduzido (~14 mil unidades).
* **Estratégia de Curva de Vendas:** Os líderes em faturamento do ranking (projetores) possuem ticket médio menor, porém compensam em alto volume acumulado de vendas (na casa de 20 mil a 22 mil unidades por item).

### 🖥️ Dashboard Interativo (Power BI)
![Dashboard de Vendas](./Dashboard_top10)
---

## 📁 Estrutura do Repositório
* `README.md`: Apresentação geral do projeto e insights.
* `consulta_top10_produtos.sql`: Script SQL contendo todas as consultas realizadas.
