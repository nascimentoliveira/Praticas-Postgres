INSERT INTO compras (id_cliente, id_produto) VALUES 
(
  (SELECT (id) FROM clientes WHERE nome='Olga Cascais Fortunato'), 
  (SELECT (id) FROM produtos WHERE nome='Celular Topo de Linha')
),
(
  (SELECT (id) FROM clientes WHERE nome='Olga Cascais Fortunato'), 
  (SELECT (id) FROM produtos WHERE nome='Celular Topo de Linha')
);