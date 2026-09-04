const mysql = require('mysql2/promise');

async function consultarDados() {
  // Conexão com o banco local
  const conexao = await mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '', // Senha vazia conforme Homebrew
    database: 'imobiliaria_migrante'
  });

  console.log('Conexão estabelecida com sucesso!');

  // Consulta do item d (sem WHERE e sem GROUP BY)
  const sql = `
    SELECT 
        p.id AS id_venda,
        p.data_pagamento,
        p.valor AS valor_do_pagamento,
        i.codigo AS codigo_imovel,
        i.descricao AS descricao_imovel,
        t.nome AS tipo_imovel
    FROM pagamento p
    INNER JOIN imovel i ON p.id_imovel = i.id
    INNER JOIN tipo_imovel t ON i.id_tipo_imovel = t.id;
  `;

  // Execução da query carregando todos os registros na memória
  const [linhas] = await conexao.query(sql);

  console.log(`Total de registros carregados na memória: ${linhas.length}\n`);
  console.table(linhas);

  await conexao.end();
}

consultarDados().catch(erro => {
  console.error('Erro ao consultar o banco:', erro);
});