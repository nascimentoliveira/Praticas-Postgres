DELETE FROM compras WHERE (id_cliente, id_produto) = (
  (SELECT (id) FROM clientes WHERE nome='Martinha Lima Zambujal'), 
  (SELECT (id) FROM produtos WHERE nome='Fone Topo de Linha')
);