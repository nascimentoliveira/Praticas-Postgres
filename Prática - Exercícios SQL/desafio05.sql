SELECT * FROM produtos WHERE id IN (
  SELECT (id_produto) FROM compras WHERE id_cliente=(
    SELECT (id) from clientes WHERE nome='Benício Freire Sampaio'));