# Documento de Requisitos de Software

**Projeto:** Sistema ERP para Distribuidoras
**Versão:** 1.0
**Responsáveis:** João Vitor e Bryan Gabriel
**Data:** 23/08/2026

---

## 1. Objetivo

Desenvolver um Sistema ERP voltado para o segmento de distribuidoras, com o objetivo de centralizar e controlar os principais processos da empresa, incluindo:

* Cadastros;
* Compras;
* Recebimento;
* Estoque;
* Vendas;
* Separação;
* Expedição;
* Faturamento/Fiscal;
* Financeiro;
* Usuários e Permissões;
* Relatórios;
* Integrações.

---

# 2. Requisitos Funcionais

## Módulo: Cadastros

### RF01 — Cadastro de Clientes

**Descrição:**
O sistema deve permitir que usuários autorizados cadastrem clientes.

**Dados obrigatórios:**

* Tipo de cliente — Pessoa Física ou Pessoa Jurídica;
* Nome/Razão Social;
* CPF/CNPJ;
* Nome Fantasia, quando aplicável;
* Telefone;
* E-mail;
* Endereço;
* Cidade;
* Estado;
* CEP.

**Regras:**

* CPF/CNPJ não pode estar cadastrado para outro cliente;
* Usuários sem permissão não podem cadastrar clientes;
* Clientes inativos não podem ser utilizados em novos pedidos.

---

### RF02 — Cadastro de Fornecedores

**Descrição:**
O sistema deve permitir que usuários autorizados cadastrem fornecedores.

**Dados obrigatórios:**

* Razão Social;
* CNPJ;
* Nome Fantasia;
* Telefone;
* E-mail;
* Endereço;
* Cidade;
* Estado;
* CEP.

**Regras:**

* CNPJ não pode estar cadastrado para outro fornecedor;
* Fornecedor inativo não pode ser utilizado em novos pedidos de compra.

---

### RF03 — Cadastro de Usuários

**Descrição:**
O sistema deve permitir que usuários autorizados cadastrem usuários que terão acesso ao ERP.

**Dados obrigatórios:**

* Nome;
* CPF;
* E-mail;
* Login;
* Senha;
* Cargo/Perfil;
* Status.

**Perfis inicialmente definidos:**

* Administrador;
* Gerente;
* Vendedor;
* Comprador;
* Estoquista;
* Recebimento;
* Expedição;
* Financeiro;
* Fiscal/Faturamento;
* Auditor/Controladoria.

**Regras:**

* CPF não pode estar cadastrado para outro usuário;
* Login não pode ser duplicado;
* Usuários inativos não podem acessar o sistema;
* O usuário somente poderá executar operações permitidas pelo seu perfil.

---

### RF04 — Cadastro de Produtos

**Descrição:**
O sistema deve permitir que usuários autorizados cadastrem produtos comercializados pela distribuidora.

**Dados obrigatórios:**

* Código do produto;
* Nome;
* Marca;
* Categoria;
* Unidade de medida;
* Preço de venda;
* Status.

**Dados opcionais:**

* Descrição;
* Código de barras;
* Peso;
* Dimensões;
* Preço de custo.

**Regras:**

* Código do produto não pode ser duplicado;
* Código de barras não pode ser duplicado, quando informado;
* Produto inativo não pode ser utilizado em novos pedidos;
* Informações de lote, validade e localização devem ser controladas pelo estoque/recebimento, e não como característica única do produto.

---

### RF05 — Cadastro de Categorias

**Descrição:**
O sistema deve permitir que usuários autorizados cadastrem categorias para organizar os produtos.

**Dados obrigatórios:**

* Nome da categoria;
* Status.

**Exemplos:**

* Alimentos;
* Bebidas;
* Higiene;
* Limpeza.

**Regras:**

* Não permitir categorias com o mesmo nome;
* Categorias inativas não podem ser associadas a novos produtos.

---

### RF06 — Cadastro de Marcas

**Descrição:**
O sistema deve permitir que usuários autorizados cadastrem marcas comercializadas pela distribuidora.

**Dados obrigatórios:**

* Nome da marca;
* Status.

**Regras:**

* Não permitir duas marcas com o mesmo nome;
* Marca inativa não pode ser associada a novos produtos.

---

### RF07 — Cadastro de Unidades de Medida

**Descrição:**
O sistema deve permitir o cadastro das unidades utilizadas para comercialização e controle dos produtos.

**Dados obrigatórios:**

* Nome;
* Sigla;
* Status.

**Exemplos:**

| Unidade    | Sigla |
| ---------- | ----- |
| Unidade    | UN    |
| Caixa      | CX    |
| Quilograma | KG    |
| Litro      | LT    |
| Fardo      | FD    |

**Regras:**

* A sigla não pode ser duplicada;
* Unidades utilizadas por produtos não devem ser excluídas, apenas inativadas.

---

### RF08 — Cadastro de Transportadoras

**Descrição:**
O sistema deve permitir que usuários autorizados cadastrem transportadoras utilizadas para realizar entregas.

**Dados obrigatórios:**

* Razão Social;
* CNPJ;
* Nome Fantasia;
* Telefone;
* E-mail;
* Endereço.

**Regras:**

* CNPJ não pode estar cadastrado para outra transportadora;
* Transportadora inativa não pode ser selecionada para novas expedições.

---

### RF09 — Cadastro de Formas de Pagamento

**Descrição:**
O sistema deve permitir o cadastro das formas de pagamento utilizadas nas operações comerciais e financeiras.

**Dados obrigatórios:**

* Nome;
* Tipo;
* Status.

**Exemplos:**

* PIX;
* Dinheiro;
* Cartão de crédito;
* Cartão de débito;
* Boleto;
* Transferência bancária.

**Regras:**

* Não permitir formas de pagamento com o mesmo nome;
* Formas de pagamento inativas não podem ser utilizadas em novas operações.

---

# Módulo: Compras

### RF10 — Solicitação de Compra

O sistema deverá permitir que usuários autorizados criem solicitações de compra.

---

### RF11 — Consulta de Solicitações

O sistema deverá permitir consultar solicitações de compra.

---

### RF12 — Registro de Cotação

O sistema deverá permitir registrar cotações de fornecedores.

---

### RF13 — Comparação de Cotações

O sistema deverá permitir comparar preços e condições de diferentes fornecedores.

---

### RF14 — Pedido de Compra

O sistema deverá permitir criar pedidos de compra.

---

### RF15 — Aprovação de Compra

O sistema deverá permitir que usuários autorizados aprovem pedidos de compra.

**Regra:**

* O usuário não poderá aprovar sua própria solicitação quando a operação exigir aprovação.

---

### RF16 — Cancelamento de Compra

O sistema deverá permitir cancelar pedidos conforme o status e as permissões do usuário.

---

### RF17 — Consulta de Pedidos de Compra

O sistema deverá permitir consultar pedidos de compra.

---

### RF18 — Controle de Status de Compra

O sistema deverá controlar os seguintes status:

* Solicitado;
* Em cotação;
* Aguardando aprovação;
* Aprovado;
* Enviado ao fornecedor;
* Recebido;
* Cancelado.

---

# Módulo: Recebimento

### RF19 — Registro de Recebimento

O sistema deverá permitir registrar a chegada de mercadorias.

---

### RF20 — Conferência do Pedido

O sistema deverá permitir comparar o pedido de compra com os produtos recebidos.

---

### RF21 — Registro de Quantidade Recebida

O sistema deverá registrar a quantidade efetivamente recebida.

---

### RF22 — Registro de Lote

O sistema deverá permitir registrar lote dos produtos quando aplicável.

---

### RF23 — Registro de Validade

O sistema deverá permitir registrar validade dos produtos quando aplicável.

---

### RF24 — Registro de Divergência

O sistema deverá permitir registrar diferenças entre o pedido e a mercadoria recebida.

---

### RF25 — Registro de Avaria

O sistema deverá permitir registrar produtos danificados.

---

### RF26 — Finalização do Recebimento

O sistema deverá permitir finalizar o recebimento após a conferência.

---

### RF27 — Atualização de Estoque

Após o recebimento aprovado, o sistema deverá atualizar o estoque.

---

# Módulo: Estoque

### RF28 — Consulta de Estoque

O sistema deverá permitir consultar os produtos disponíveis em estoque.

---

### RF29 — Entrada de Estoque

O sistema deverá registrar entradas de produtos.

---

### RF30 — Saída de Estoque

O sistema deverá registrar saídas de produtos.

---

### RF31 — Transferência de Estoque

O sistema deverá permitir transferir produtos entre depósitos ou localizações.

---

### RF32 — Ajuste de Estoque

O sistema deverá permitir ajustes realizados por usuários autorizados.

**Regra:**

Todo ajuste deverá registrar:

* Usuário;
* Data;
* Quantidade;
* Motivo.

---

### RF33 — Controle de Lotes

O sistema deverá controlar produtos por lote quando aplicável.

---

### RF34 — Controle de Validade

O sistema deverá permitir consultar a validade dos produtos.

---

### RF35 — Controle de Localização

O sistema deverá permitir controlar a localização dos produtos.

---

### RF36 — Reserva de Estoque

O sistema deverá permitir reservar estoque para pedidos de venda.

---

### RF37 — Liberação de Reserva

O sistema deverá liberar estoque reservado quando necessário.

---

### RF38 — Inventário

O sistema deverá permitir realizar inventários.

---

### RF39 — Histórico de Movimentações

O sistema deverá permitir consultar o histórico das movimentações.

---

### RF40 — Alerta de Estoque Mínimo

O sistema deverá alertar quando um produto atingir o estoque mínimo configurado.

---

### RF41 — Alerta de Validade

O sistema deverá alertar sobre produtos próximos do vencimento.

---

# Módulo: Vendas

### RF42 — Criação de Pedido

O sistema deverá permitir criar pedidos de venda.

---

### RF43 — Consulta de Produtos

O sistema deverá permitir consultar produtos disponíveis.

---

### RF44 — Consulta de Estoque

O sistema deverá informar a quantidade disponível para venda.

---

### RF45 — Inclusão de Produtos

O sistema deverá permitir adicionar produtos e quantidades ao pedido.

---

### RF46 — Cálculo do Pedido

O sistema deverá calcular automaticamente:

* Subtotal;
* Descontos;
* Total.

---

### RF47 — Aplicação de Desconto

O sistema deverá permitir descontos conforme as permissões do usuário.

**Regra:**

Descontos acima do limite deverão exigir aprovação.

---

### RF48 — Condição de Pagamento

O sistema deverá permitir selecionar a forma e condição de pagamento.

---

### RF49 — Endereço de Entrega

O sistema deverá permitir informar o endereço de entrega.

---

### RF50 — Aprovação de Pedido

Usuários autorizados poderão aprovar pedidos.

---

### RF51 — Cancelamento de Pedido

Usuários autorizados poderão cancelar pedidos conforme as regras de status.

---

### RF52 — Reserva de Estoque

Após a aprovação, o sistema deverá reservar os produtos necessários.

---

### RF53 — Consulta de Pedidos

O sistema deverá permitir consultar pedidos por:

* Cliente;
* Vendedor;
* Período;
* Status.

---

# Módulo: Separação

### RF54 — Lista de Separação

O sistema deverá gerar listas de produtos para separação.

---

### RF55 — Consulta de Pedidos para Separação

O sistema deverá apresentar pedidos aguardando separação.

---

### RF56 — Localização de Produtos

O sistema deverá informar onde os produtos estão armazenados.

---

### RF57 — Registro de Separação

O sistema deverá registrar os produtos separados.

---

### RF58 — Registro de Divergência

O sistema deverá permitir registrar divergências durante a separação.

---

### RF59 — Finalização da Separação

O sistema deverá permitir finalizar a separação.

---

# Módulo: Expedição

### RF60 — Consulta de Pedidos

O sistema deverá apresentar pedidos prontos para expedição.

---

### RF61 — Conferência de Expedição

O sistema deverá permitir conferir os produtos antes da saída.

---

### RF62 — Registro de Volumes

O sistema deverá permitir registrar volumes da carga.

---

### RF63 — Seleção de Transportadora

O sistema deverá permitir selecionar a transportadora.

---

### RF64 — Registro de Expedição

O sistema deverá registrar a saída do pedido.

---

### RF65 — Atualização de Status

O sistema deverá permitir atualizar o status da entrega.

---

# Módulo: Faturamento/Fiscal

### RF66 — Faturamento de Pedido

O sistema deverá permitir faturar pedidos aprovados.

---

### RF67 — Emissão de Documento Fiscal

O sistema poderá emitir documentos fiscais através de integração com serviço fiscal.

---

### RF68 — Consulta de Documentos Fiscais

O sistema deverá permitir consultar documentos fiscais.

---

### RF69 — Cancelamento de Documento Fiscal

Usuários autorizados poderão solicitar cancelamento conforme as regras fiscais aplicáveis.

---

### RF70 — Registro de Devolução

O sistema deverá permitir registrar devoluções.

---

### RF71 — Consulta de Situação Fiscal

O sistema deverá permitir consultar a situação das operações fiscais quando houver integração.

---

# Módulo: Financeiro

## Contas a Pagar

### RF72 — Cadastro de Conta a Pagar

O sistema deverá permitir registrar obrigações financeiras.

---

### RF73 — Consulta de Contas a Pagar

O sistema deverá permitir consultar contas por:

* Período;
* Fornecedor;
* Vencimento;
* Status.

---

### RF74 — Registro de Pagamento

O sistema deverá permitir registrar pagamentos.

---

### RF75 — Baixa de Conta a Pagar

O sistema deverá permitir registrar a quitação de contas.

---

## Contas a Receber

### RF76 — Geração de Conta a Receber

O sistema deverá gerar contas a receber relacionadas às vendas.

---

### RF77 — Consulta de Contas a Receber

O sistema deverá permitir consultar valores a receber.

---

### RF78 — Registro de Recebimento

O sistema deverá permitir registrar recebimentos.

---

### RF79 — Baixa de Conta a Receber

O sistema deverá registrar a quitação das contas.

---

### RF80 — Controle de Inadimplência

O sistema deverá identificar contas vencidas e não pagas.

---

### RF81 — Fluxo de Caixa

O sistema deverá apresentar entradas e saídas financeiras.

---

# Módulo: Usuários e Permissões

### RF82 — Cadastro de Usuários

O sistema deverá permitir criar usuários.

---

### RF83 — Inativação de Usuários

O sistema deverá permitir inativar usuários.

---

### RF84 — Cadastro de Perfis

O sistema deverá permitir criar perfis de acesso.

---

### RF85 — Associação de Perfil

O sistema deverá permitir associar perfis aos usuários.

---

### RF86 — Configuração de Permissões

O sistema deverá permitir configurar permissões por perfil.

---

### RF87 — Controle de Acesso

O sistema deverá restringir funcionalidades de acordo com as permissões.

---

### RF88 — Controle de Operações

O sistema deverá controlar as seguintes operações:

* Criar;
* Consultar;
* Alterar;
* Cancelar;
* Aprovar;
* Executar.

---

### RF89 — Registro de Logs

O sistema deverá registrar operações relevantes realizadas pelos usuários.

---

### RF90 — Consulta de Auditoria

Usuários autorizados poderão consultar registros de auditoria.

---

# Módulo: Relatórios

### RF91 — Relatório de Vendas

O sistema deverá disponibilizar relatório de vendas.

### RF92 — Relatório de Compras

O sistema deverá disponibilizar relatório de compras.

### RF93 — Relatório de Estoque

O sistema deverá disponibilizar relatório de estoque.

### RF94 — Relatório de Movimentações

O sistema deverá disponibilizar relatório de movimentações.

### RF95 — Relatório de Validade

O sistema deverá disponibilizar relatório de validade.

### RF96 — Relatório de Clientes

O sistema deverá disponibilizar relatório de clientes.

### RF97 — Relatório de Fornecedores

O sistema deverá disponibilizar relatório de fornecedores.

### RF98 — Relatório Financeiro

O sistema deverá disponibilizar relatório financeiro.

### RF99 — Relatório de Pedidos

O sistema deverá disponibilizar relatório de pedidos.

### RF100 — Relatório de Expedições

O sistema deverá disponibilizar relatório de expedições.

**Regra geral:**

Os relatórios deverão possuir filtros adequados ao tipo de informação consultada.

---

# Módulo: Integrações

### RF101 — Integração Fiscal

O sistema deverá permitir integração com serviços externos relacionados às operações fiscais.

---

### RF102 — Integração com Transportadoras

O sistema poderá trocar informações de pedidos e entregas com transportadoras.

---

### RF103 — Integração Bancária

O sistema poderá integrar informações de pagamentos e recebimentos com instituições financeiras.

---

### RF104 — Integração com Sistemas Externos

O sistema poderá disponibilizar ou consumir APIs para comunicação com sistemas externos.

---

# 3. Requisitos Não Funcionais

### RNF01 — Autenticação

O sistema deverá exigir autenticação para acesso às funcionalidades protegidas.

### RNF02 — Autorização

O sistema deverá controlar o acesso de acordo com o perfil e permissões do usuário.

### RNF03 — Segurança de Senhas

As senhas deverão ser armazenadas de forma segura, utilizando mecanismo de hash adequado.

### RNF04 — Auditoria

Operações críticas deverão registrar usuário, data, horário e operação realizada.

### RNF05 — Integridade

O sistema deverá garantir a integridade dos dados armazenados.

### RNF06 — Concorrência

O sistema deverá permitir múltiplos usuários simultâneos sem comprometer a integridade das operações.

### RNF07 — Desempenho

O sistema deverá apresentar tempo de resposta adequado para as operações comuns.

### RNF08 — Disponibilidade

O sistema deverá estar disponível durante o período de operação definido para o ambiente.

### RNF09 — Backup

O banco de dados deverá possuir rotina de backup.

### RNF10 — Recuperação

Deverá existir mecanismo para recuperação dos dados a partir dos backups.

### RNF11 — Escalabilidade

A arquitetura deverá permitir crescimento do número de usuários, produtos e operações.

### RNF12 — Manutenibilidade

O sistema deverá possuir arquitetura organizada para facilitar manutenção e evolução.

### RNF13 — Comunicação Segura

A comunicação entre frontend e backend deverá utilizar HTTPS em produção.

### RNF14 — Responsividade

A interface deverá adaptar-se às diferentes resoluções suportadas pelo projeto.

### RNF15 — Compatibilidade

O sistema deverá funcionar nos navegadores definidos como suportados pelo projeto.

---

# 4. Restrições Técnicas

### RNF16 — Linguagem Backend

O backend deverá utilizar **Java 21**.

### RNF17 — Framework Backend

O backend deverá utilizar **Spring Boot**.

### RNF18 — Banco de Dados

O sistema deverá utilizar **Oracle Database**.

### RNF19 — Frontend

O frontend deverá utilizar **Angular**.

### RNF20 — Containerização

A aplicação deverá possuir suporte à execução através de **Docker**.

### RNF21 — Comunicação

Frontend e backend deverão se comunicar através de **API REST**, quando aplicável.

---

# 5. Regras de Negócio Gerais

### RN01 — Unicidade de CPF/CNPJ

CPF/CNPJ que exigir unicidade não poderá ser duplicado.

### RN02 — Usuário Inativo

Usuário inativo não poderá realizar login.

### RN03 — Produto Inativo

Produto inativo não poderá ser utilizado em novos pedidos.

### RN04 — Estoque Negativo

O sistema não deverá permitir estoque negativo, salvo quando essa possibilidade estiver autorizada por configuração específica.

### RN05 — Auditoria

Toda alteração crítica deverá possuir registro de auditoria.

### RN06 — Aprovação

Operações que necessitem aprovação deverão ser aprovadas por usuário autorizado.

### RN07 — Segregação de Funções

Quando configurado, o usuário responsável pela criação de uma operação não poderá aprová-la.

### RN08 — Operações Concluídas

Operações concluídas não poderão ser alteradas livremente.

### RN09 — Movimentação de Estoque

Movimentações de estoque deverão possuir origem ou motivo identificado.

### RN10 — Rastreabilidade

Lotes e validades deverão ser rastreáveis quando o produto exigir esse controle.

### RN11 — Desconto

Descontos acima do limite permitido deverão exigir aprovação.

### RN12 — Baixa Financeira

A baixa financeira somente poderá ser realizada por usuário autorizado.

### RN13 — Pedido Cancelado

Pedidos cancelados não poderão continuar no fluxo de separação ou expedição.

### RN14 — Disponibilidade de Estoque

Produtos sem estoque suficiente não poderão ser vendidos quando a política de estoque negativo estiver desativada.

---

# 6. Requisitos de Controle de Acesso

## 6.1 Administrador

**Descrição:**
Responsável pela administração técnica do ERP.

**Pode:**

* Criar e inativar usuários;
* Criar perfis;
* Configurar permissões;
* Configurar parâmetros do sistema;
* Consultar logs e auditoria;
* Gerenciar configurações.

**Não pode:**

* Alterar dados de negócio sem justificativa;
* Apagar movimentações históricas;
* Alterar registros de auditoria.

---

## 6.2 Gerente

**Descrição:**
Possui acesso gerencial e responsabilidade por aprovações.

**Pode:**

* Consultar vendas;
* Consultar estoque;
* Consultar compras;
* Consultar financeiro;
* Aprovar compras;
* Aprovar descontos;
* Aprovar determinadas alterações;
* Consultar relatórios;
* Cancelar determinadas operações.

**Não pode:**

* Alterar configurações técnicas do sistema;
* Gerenciar usuários tecnicamente;
* Alterar registros de auditoria.

---

## 6.3 Comprador

**Descrição:**
Responsável pelas compras.

**Pode:**

* Consultar estoque;
* Criar solicitações de compra;
* Criar pedidos de compra;
* Cadastrar e consultar fornecedores;
* Registrar cotações;
* Comparar fornecedores;
* Consultar histórico de compras.

**Não pode:**

* Aprovar a própria compra;
* Alterar estoque diretamente;
* Registrar pagamento;
* Alterar contas a receber;
* Alterar configurações do sistema.

---

## 6.4 Vendedor

**Descrição:**
Responsável pelas vendas.

**Pode:**

* Consultar clientes;
* Cadastrar clientes, se permitido;
* Consultar produtos;
* Consultar preços;
* Criar pedidos;
* Consultar seus pedidos;
* Consultar disponibilidade de estoque;
* Aplicar desconto dentro do limite permitido.

**Não pode:**

* Alterar estoque manualmente;
* Alterar custo do produto;
* Aprovar descontos acima do limite;
* Alterar contas a receber;
* Cancelar operações já faturadas sem autorização.

---

## 6.5 Estoquista

**Descrição:**
Responsável pelo estoque.

**Pode:**

* Consultar estoque;
* Registrar movimentações autorizadas;
* Separar pedidos;
* Conferir produtos;
* Registrar transferências;
* Participar de inventários;
* Consultar lotes e validade.

**Não pode:**

* Alterar preço de venda;
* Alterar custo sem autorização;
* Aprovar compras;
* Alterar contas financeiras;
* Criar vendas em nome de clientes.

---

## 6.6 Expedição

**Descrição:**
Responsável pela saída das mercadorias.

**Pode:**

* Consultar pedidos aprovados;
* Consultar itens para expedição;
* Conferir pedidos;
* Registrar expedição;
* Registrar volumes;
* Informar transportadora;
* Atualizar status logístico.

**Não pode:**

* Alterar preço;
* Alterar pedido comercial;
* Aprovar desconto;
* Alterar estoque arbitrariamente;
* Alterar financeiro.

---

## 6.7 Financeiro

**Descrição:**
Responsável pelas operações financeiras.

**Pode:**

* Consultar contas a pagar;
* Criar contas a pagar;
* Consultar contas a receber;
* Registrar pagamentos;
* Registrar recebimentos;
* Dar baixa;
* Consultar inadimplência;
* Gerenciar fluxo de caixa;
* Emitir relatórios financeiros.

**Não pode:**

* Alterar estoque;
* Criar pedido de venda;
* Alterar preço de produto;
* Aprovar compras que não sejam de sua responsabilidade.

---

## 6.8 Fiscal/Faturamento

**Descrição:**
Responsável pelas operações fiscais e faturamento.

**Pode:**

* Consultar pedidos aprovados;
* Faturar pedidos;
* Emitir documentos fiscais, quando disponível;
* Consultar documentos fiscais;
* Processar devoluções fiscais conforme as regras definidas;
* Consultar informações tributárias.

**Não pode:**

* Alterar estoque manualmente;
* Alterar pagamentos;
* Alterar pedido comercial sem autorização.

---

## 6.9 Recebimento

**Descrição:**
Responsável pelo recebimento e conferência das mercadorias.

**Pode:**

* Consultar pedidos de compra;
* Registrar recebimento;
* Conferir quantidade;
* Registrar lote;
* Registrar validade;
* Registrar divergências;
* Informar avarias;
* Encaminhar mercadoria para armazenamento.

**Não pode:**

* Aprovar a própria compra;
* Alterar preço de venda;
* Registrar pagamento;
* Alterar pedido de venda.

---

## 6.10 Auditor/Controladoria

**Descrição:**
Responsável pela auditoria das operações do sistema.

**Pode:**

* Consultar operações;
* Consultar logs;
* Consultar alterações;
* Gerar relatórios;
* Auditar estoque;
* Auditar vendas;
* Auditar financeiro.

**Não pode:**

* Alterar os dados que está auditando;
* Apagar registros de auditoria.

---

# 7. Controle de Versão do Documento

| Versão | Data       | Responsáveis               | Descrição              |
| ------ | ---------- | -------------------------- | ---------------------- |
| 1.0    | 23/08/2026 | João Vitor / Bryan Gabriel | Criação inicial do DRS |


