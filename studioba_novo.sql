-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 14-Dez-2020 às 20:49
-- Versão do servidor: 5.7.32-cll-lve
-- versão do PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `studioba_novo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm_config`
--

CREATE TABLE `adm_config` (
  `id` int(11) NOT NULL,
  `email_nome` varchar(255) DEFAULT NULL,
  `email_origem` varchar(255) DEFAULT NULL,
  `email_retorno` varchar(255) DEFAULT NULL,
  `email_porta` int(11) NOT NULL DEFAULT '25',
  `email_host` varchar(255) DEFAULT NULL,
  `email_usuario` varchar(200) DEFAULT NULL,
  `email_senha` varchar(200) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `adm_config`
--

INSERT INTO `adm_config` (`id`, `email_nome`, `email_origem`, `email_retorno`, `email_porta`, `email_host`, `email_usuario`, `email_senha`, `logo`) VALUES
(1, 'RADIO ONLINE', 'contato@studiobala.com.br', 'contato@studiobala.com.br', 587, 'mail.contato@studiobala.com.br', 'contato@studiobala.com.br', '123123', '4c7d59c9c55539c0a0f04c24d74612963e871648.png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm_setores`
--

CREATE TABLE `adm_setores` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_pai` int(11) DEFAULT '0',
  `titulo` varchar(240) DEFAULT NULL,
  `titulo_tecnico` varchar(200) DEFAULT NULL,
  `endereco` varchar(100) DEFAULT NULL,
  `ico` varchar(200) DEFAULT NULL,
  `menu` int(1) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `adm_setores`
--

INSERT INTO `adm_setores` (`id`, `id_pai`, `titulo`, `titulo_tecnico`, `endereco`, `ico`, `menu`) VALUES
(1, 0, 'Usuários', 'Usuários', 'usuarios', 'user', 0),
(2, 0, 'Configurações', 'Configurações', 'config', 'cogs', 0),
(4, 1, 'Apagar', 'Usuarios - Apagar', '', '', 0),
(5, 1, 'Criar/Alterar', 'Usuarios - Criar/Alterar', '', '', 0),
(41, 0, 'Upload de Arquivos', 'Hospedar Arquivos', 'arquivos', 'download', 0),
(42, 0, 'Cadastros de E-mail', 'Cadastros de E-mail', 'cadastro_email', 'envelope-o', 0),
(39, 28, 'Alterar Titulo', 'Imagens - Alterar Titulo', '', '', 0),
(34, 27, 'Destaques', 'Postagens - Destaques', '', '', 0),
(35, 27, 'Categorias', 'Postagens - Categorias', '', '', 0),
(36, 2, 'Meta', 'Configurações - Meta', '', '', 0),
(37, 2, 'Smtp', 'Configurações - Smtp', '', '', 0),
(38, 2, 'Imagem Organização', 'Configurações - Imagem Organização', '', '', 0),
(27, 0, 'Postagens', 'Postagens', 'postagens', 'newspaper-o', 0),
(28, 0, 'Imagens Layout', 'Imagens', 'imagens', 'picture-o', 0),
(29, 0, 'Textos/Páginas', 'Textos/Páginas', 'textos', 'align-center', 0),
(58, 27, 'Marca d Agua', 'Postagens - Marca d Agua', 'mascara', '', 0),
(43, 0, 'Cores e Menus', 'Layout', 'layout', 'pencil-square-o', 0),
(44, 0, 'Banners', 'Banners', 'banners', 'file-image-o', 0),
(45, 0, 'Agenda', 'Agenda', 'agenda', 'calendar', 0),
(46, 0, 'Redes Sociais', 'Redes Sociais', 'redes_sociais', 'facebook', 0),
(47, 0, 'Enquetes', 'Enquetes', 'enquetes', 'question-circle-o', 0),
(61, 0, 'Produtos', 'Produtos', 'produtos', 'product-hunt', 0),
(62, 0, 'Representantes', 'Representantes', 'representantes', 'users', 0),
(52, 2, 'E-mail', 'Configurações - Emails', '', '', 0),
(60, 0, 'Fotos/Portfólio', 'Fotos/Portfólio', 'fotos', 'picture-o', 0),
(59, 0, 'Serviços', 'Serviços', 'servicos', 'wrench', 0),
(67, 0, 'Cotações', 'Cotações', 'cotacoes', 'line-chart', 0),
(63, 0, 'Parceiros', 'Parceiros', 'parceiros', 'thumbs-o-up', 0),
(64, 0, 'Vídeos', 'Vídeos', 'videos', 'video-camera', 0),
(65, 0, 'Filiais/Unidades', 'Filiais/Unidades', 'filiais', 'university', 0),
(66, 0, 'Textos Simples', 'Textos Simples', 'textos_simples', 'align-center', 0),
(68, 0, 'Restrito', 'Restrito', 'areacliente', 'lock', 0),
(69, 68, 'Área Restrita do Site', 'Área Restrita do Site', '', '', 0),
(70, 0, 'Downloads', 'Downloads', 'downloads', 'download', 0),
(71, 0, 'Equipe', 'Equipe', 'equipe', 'group', 0),
(72, 0, 'Web Radio', 'Web Radio', 'webradio', 'volume-up', 0),
(73, 0, 'Programação', 'Programação', 'programacao', 'headphones', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm_setores_ordem`
--

CREATE TABLE `adm_setores_ordem` (
  `id` int(11) NOT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `data` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `adm_setores_ordem`
--

INSERT INTO `adm_setores_ordem` (`id`, `usuario`, `data`) VALUES
(13, '146707282494784', '6,3,7'),
(11, '146707068269685', '3,6'),
(63, '146853346258186', '7'),
(64, '146854153753813', ''),
(70, '146859823614427', '7'),
(72, '146908848368754', '2'),
(87, '146916152149553', '2,25'),
(155, '146679669497242', '27,45,42,48,51,56,29,28,47,46,50,41,43,30,2,1'),
(156, '148487204353121', '45,41,42,2,51,47,28,43,30,48,50,27,46,29,1,56'),
(158, '149593631953060', '45,41,42,2,51,47,28'),
(160, '150129639482468', '45,41,42,2,27,46,29'),
(161, '150129701710524', '47,43,48'),
(163, '150147282013782', '45,41,42,51,27'),
(165, '150816150645549', '42,51,47'),
(166, '150816156183594', ''),
(167, '150816166079348', '41,47,28,43'),
(168, '151076326513310', ''),
(169, '151076395452266', ''),
(171, '152168451841183', '61,46'),
(172, '158447317959912', '44,42,51,71');

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm_setores_perfil`
--

CREATE TABLE `adm_setores_perfil` (
  `id` int(11) NOT NULL,
  `setor` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `adm_setores_perfil`
--

INSERT INTO `adm_setores_perfil` (`id`, `setor`) VALUES
(110, '10056'),
(4, '85'),
(170, '52'),
(85, '10057'),
(8, '71'),
(111, '10072'),
(11, '10001'),
(12, '10000'),
(116, '1'),
(17, '10048'),
(55, '10063'),
(118, '2'),
(81, '10025'),
(88, '10065'),
(175, '56'),
(80, '10030'),
(113, '10081'),
(112, '10059'),
(104, '10039'),
(117, '3'),
(120, '4'),
(121, '5'),
(122, '7'),
(123, '6'),
(124, '9'),
(125, '10'),
(126, '18'),
(127, '14'),
(128, '12'),
(129, '16'),
(130, '15'),
(131, '11'),
(132, '17'),
(133, '20'),
(134, '21'),
(135, '22'),
(136, '23'),
(137, '24'),
(139, '28'),
(206, '51'),
(150, '29'),
(147, '37'),
(148, '36'),
(158, '30'),
(187, '41'),
(176, '38'),
(203, '43'),
(167, '48'),
(168, '50'),
(169, '46'),
(177, '54'),
(178, '53'),
(179, '39'),
(186, '40'),
(181, '44'),
(182, '35'),
(183, '57'),
(184, '34'),
(185, '58'),
(194, '66'),
(202, '60'),
(201, '42'),
(207, '27'),
(208, '72'),
(209, '47'),
(210, '73');

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm_setores_usuario`
--

CREATE TABLE `adm_setores_usuario` (
  `id` int(10) UNSIGNED NOT NULL,
  `usuario` char(200) DEFAULT NULL,
  `setor` char(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `adm_setores_usuario`
--

INSERT INTO `adm_setores_usuario` (`id`, `usuario`, `setor`) VALUES
(391, '151076326513310', '69'),
(392, '151076395452266', '69'),
(393, '152168451841183', '61'),
(394, '152168451841183', '46'),
(395, '158447317959912', '44'),
(396, '158447317959912', '42'),
(397, '158447317959912', '51'),
(398, '158447317959912', '71');

-- --------------------------------------------------------

--
-- Estrutura da tabela `adm_usuario`
--

CREATE TABLE `adm_usuario` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `email_recuperacao` varchar(255) DEFAULT NULL,
  `usuario` char(255) DEFAULT NULL,
  `senha` char(255) DEFAULT NULL,
  `abre_fecha_menu` int(2) DEFAULT '0',
  `recuperacao` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `adm_usuario`
--

INSERT INTO `adm_usuario` (`id`, `codigo`, `nome`, `imagem`, `email_recuperacao`, `usuario`, `senha`, `abre_fecha_menu`, `recuperacao`) VALUES
(1, '1', 'Administrador', '', 'contato@mrcomerciodigital.com.br', '21232f297a57a5a743894a0e4a801fc3', 'ac40a742554137e9a3cdde27f1547013', 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `agenda`
--

CREATE TABLE `agenda` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `data` int(11) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `descricao` text,
  `imagem` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `areacliente_arquivos`
--

CREATE TABLE `areacliente_arquivos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `data` int(11) DEFAULT NULL,
  `cliente` varchar(100) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `arquivo` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `areacliente_arquivos`
--

INSERT INTO `areacliente_arquivos` (`id`, `codigo`, `data`, `cliente`, `titulo`, `arquivo`) VALUES
(13, '151076480419751', 1510764804, '151076326513310', 'Teste', '9e2542ab95c7b0badbd1a74e9e8c3f-[15-11-17][14-53-24].jpg'),
(8, '151076467340537', 1510764673, '', 'dsfgsdfgsdfg', '3d-rendem-de-uma-paisagem-curvada-gramado-com-um-arco-iris-arvore-e-raincloud-1048-2904-[15-11-17][14-51-13].jpg'),
(7, '151076466370105', 1510764663, '', 'dsfgsdfgsfgsdf', '1-[15-11-17][14-51-03].jpg'),
(15, '151076482858125', 1510764828, '151076326513310', 'Documento importante', '47393-[15-11-17][14-53-48].jpg'),
(14, '151076481792654', 1510764817, '151076326513310', 'arquivo tal', '02934-[15-11-17][14-53-37].jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `banner`
--

CREATE TABLE `banner` (
  `id` int(10) UNSIGNED NOT NULL,
  `codigo` char(100) DEFAULT NULL,
  `grupo` varchar(100) DEFAULT NULL,
  `titulo` char(200) DEFAULT NULL,
  `endereco` text,
  `imagem` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `banner`
--

INSERT INTO `banner` (`id`, `codigo`, `grupo`, `titulo`, `endereco`, `imagem`) VALUES
(86, '147037357254046', '147036990515622', 'teste1', '', ''),
(87, '147037358334241', '147036990515622', 'teste2', '', ''),
(84, '147037163545370', '147036990515622', 'teste1', '', ''),
(83, '147037035648026', '147036990515622', 'banner 1', 'http://www.publiquebem.com.br/', '12b6f0c210c4600a6bc5603b5fd0168b.jpg'),
(103, '158488815834216', '149601285477607', 'Banner 2', '#', 'baner0-[03-09-20][08-30-07].jpg'),
(98, '152169582368201', '149601285477607', 'Banner 1', 'https://www.google.com.br', 'baner1-[22-03-20][09-52-16].jpg'),
(104, '158488836050698', '149601285477607', 'Banner1', '', 'dl-[03-09-20][08-54-49].jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `banner_grupo`
--

CREATE TABLE `banner_grupo` (
  `id` int(10) UNSIGNED NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `titulo` char(200) DEFAULT NULL,
  `largura` int(11) DEFAULT NULL,
  `altura` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `banner_grupo`
--

INSERT INTO `banner_grupo` (`id`, `codigo`, `titulo`, `largura`, `altura`) VALUES
(20, '149601285477607', 'Banner Principal 1920x1000px', 1920, 1000);

-- --------------------------------------------------------

--
-- Estrutura da tabela `banner_ordem`
--

CREATE TABLE `banner_ordem` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `data` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `banner_ordem`
--

INSERT INTO `banner_ordem` (`id`, `codigo`, `data`) VALUES
(20, '', '3,2'),
(19, '', '1'),
(17, '147036990515622', '90,89'),
(18, '147036982334307', '85,88'),
(39, '149601285477607', '103,104'),
(38, '149601285477607', '103');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro_email`
--

CREATE TABLE `cadastro_email` (
  `id` int(10) UNSIGNED NOT NULL,
  `nome` char(200) DEFAULT NULL,
  `email` char(200) DEFAULT NULL,
  `interesse` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidade`
--

CREATE TABLE `cidade` (
  `id` int(11) NOT NULL,
  `nome` varchar(120) DEFAULT NULL,
  `estado` int(5) DEFAULT NULL,
  `uf` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cidade`
--

INSERT INTO `cidade` (`id`, `nome`, `estado`, `uf`) VALUES
(1, 'Afonso Cláudio', 8, 'ES'),
(2, 'Água Doce do Norte', 8, 'ES'),
(3, 'Águia Branca', 8, 'ES'),
(4, 'Alegre', 8, 'ES'),
(5, 'Alfredo Chaves', 8, 'ES'),
(6, 'Alto Rio Novo', 8, 'ES'),
(7, 'Anchieta', 8, 'ES'),
(8, 'Apiacá', 8, 'ES'),
(9, 'Aracruz', 8, 'ES'),
(10, 'Atilio Vivacqua', 8, 'ES'),
(11, 'Baixo Guandu', 8, 'ES'),
(12, 'Barra de São Francisco', 8, 'ES'),
(13, 'Boa Esperança', 8, 'ES'),
(14, 'Bom Jesus do Norte', 8, 'ES'),
(15, 'Brejetuba', 8, 'ES'),
(16, 'Cachoeiro de Itapemirim', 8, 'ES'),
(17, 'Cariacica', 8, 'ES'),
(18, 'Castelo', 8, 'ES'),
(19, 'Colatina', 8, 'ES'),
(20, 'Conceição da Barra', 8, 'ES'),
(21, 'Conceição do Castelo', 8, 'ES'),
(22, 'Divino de São Lourenço', 8, 'ES'),
(23, 'Domingos Martins', 8, 'ES'),
(24, 'Dores do Rio Preto', 8, 'ES'),
(25, 'Ecoporanga', 8, 'ES'),
(26, 'Fundão', 8, 'ES'),
(27, 'Governador Lindenberg', 8, 'ES'),
(28, 'Guaçuí', 8, 'ES'),
(29, 'Guarapari', 8, 'ES'),
(30, 'Ibatiba', 8, 'ES'),
(31, 'Ibiraçu', 8, 'ES'),
(32, 'Ibitirama', 8, 'ES'),
(33, 'Iconha', 8, 'ES'),
(34, 'Irupi', 8, 'ES'),
(35, 'Itaguaçu', 8, 'ES'),
(36, 'Itapemirim', 8, 'ES'),
(37, 'Itarana', 8, 'ES'),
(38, 'Iúna', 8, 'ES'),
(39, 'Jaguaré', 8, 'ES'),
(40, 'Jerônimo Monteiro', 8, 'ES'),
(41, 'João Neiva', 8, 'ES'),
(42, 'Laranja da Terra', 8, 'ES'),
(43, 'Linhares', 8, 'ES'),
(44, 'Mantenópolis', 8, 'ES'),
(45, 'Marataízes', 8, 'ES'),
(46, 'Marechal Floriano', 8, 'ES'),
(47, 'Marilândia', 8, 'ES'),
(48, 'Mimoso do Sul', 8, 'ES'),
(49, 'Montanha', 8, 'ES'),
(50, 'Mucurici', 8, 'ES'),
(51, 'Muniz Freire', 8, 'ES'),
(52, 'Muqui', 8, 'ES'),
(53, 'Nova Venécia', 8, 'ES'),
(54, 'Pancas', 8, 'ES'),
(55, 'Pedro Canário', 8, 'ES'),
(56, 'Pinheiros', 8, 'ES'),
(57, 'Piúma', 8, 'ES'),
(58, 'Ponto Belo', 8, 'ES'),
(59, 'Presidente Kennedy', 8, 'ES'),
(60, 'Rio Bananal', 8, 'ES'),
(61, 'Rio Novo do Sul', 8, 'ES'),
(62, 'Santa Leopoldina', 8, 'ES'),
(63, 'Santa Maria de Jetibá', 8, 'ES'),
(64, 'Santa Teresa', 8, 'ES'),
(65, 'São Domingos do Norte', 8, 'ES'),
(66, 'São Gabriel da Palha', 8, 'ES'),
(67, 'São José do Calçado', 8, 'ES'),
(68, 'São Mateus', 8, 'ES'),
(69, 'São Roque do Canaã', 8, 'ES'),
(70, 'Serra', 8, 'ES'),
(71, 'Sooretama', 8, 'ES'),
(72, 'Vargem Alta', 8, 'ES'),
(73, 'Venda Nova do Imigrante', 8, 'ES'),
(74, 'Viana', 8, 'ES'),
(75, 'Vila Pavão', 8, 'ES'),
(76, 'Vila Valério', 8, 'ES'),
(77, 'Vila Velha', 8, 'ES'),
(78, 'Vitória', 8, 'ES'),
(79, 'Acrelândia', 1, 'AC'),
(80, 'Assis Brasil', 1, 'AC'),
(81, 'Brasiléia', 1, 'AC'),
(82, 'Bujari', 1, 'AC'),
(83, 'Capixaba', 1, 'AC'),
(84, 'Cruzeiro do Sul', 1, 'AC'),
(85, 'Epitaciolândia', 1, 'AC'),
(86, 'Feijó', 1, 'AC'),
(87, 'Jordão', 1, 'AC'),
(88, 'Mâncio Lima', 1, 'AC'),
(89, 'Manoel Urbano', 1, 'AC'),
(90, 'Marechal Thaumaturgo', 1, 'AC'),
(91, 'Plácido de Castro', 1, 'AC'),
(92, 'Porto Acre', 1, 'AC'),
(93, 'Porto Walter', 1, 'AC'),
(94, 'Rio Branco', 1, 'AC'),
(95, 'Rodrigues Alves', 1, 'AC'),
(96, 'Santa Rosa do Purus', 1, 'AC'),
(97, 'Sena Madureira', 1, 'AC'),
(98, 'Senador Guiomard', 1, 'AC'),
(99, 'Tarauacá', 1, 'AC'),
(100, 'Xapuri', 1, 'AC'),
(101, 'Água Branca', 2, 'AL'),
(102, 'Anadia', 2, 'AL'),
(103, 'Arapiraca', 2, 'AL'),
(104, 'Atalaia', 2, 'AL'),
(105, 'Barra de Santo Antônio', 2, 'AL'),
(106, 'Barra de São Miguel', 2, 'AL'),
(107, 'Batalha', 2, 'AL'),
(108, 'Belém', 2, 'AL'),
(109, 'Belo Monte', 2, 'AL'),
(110, 'Boca da Mata', 2, 'AL'),
(111, 'Branquinha', 2, 'AL'),
(112, 'Cacimbinhas', 2, 'AL'),
(113, 'Cajueiro', 2, 'AL'),
(114, 'Campestre', 2, 'AL'),
(115, 'Campo Alegre', 2, 'AL'),
(116, 'Campo Grande', 2, 'AL'),
(117, 'Canapi', 2, 'AL'),
(118, 'Capela', 2, 'AL'),
(119, 'Carneiros', 2, 'AL'),
(120, 'Chã Preta', 2, 'AL'),
(121, 'Coité do Nóia', 2, 'AL'),
(122, 'Colônia Leopoldina', 2, 'AL'),
(123, 'Coqueiro Seco', 2, 'AL'),
(124, 'Coruripe', 2, 'AL'),
(125, 'Craíbas', 2, 'AL'),
(126, 'Delmiro Gouveia', 2, 'AL'),
(127, 'Dois Riachos', 2, 'AL'),
(128, 'Estrela de Alagoas', 2, 'AL'),
(129, 'Feira Grande', 2, 'AL'),
(130, 'Feliz Deserto', 2, 'AL'),
(131, 'Flexeiras', 2, 'AL'),
(132, 'Girau do Ponciano', 2, 'AL'),
(133, 'Ibateguara', 2, 'AL'),
(134, 'Igaci', 2, 'AL'),
(135, 'Igreja Nova', 2, 'AL'),
(136, 'Inhapi', 2, 'AL'),
(137, 'Jacaré dos Homens', 2, 'AL'),
(138, 'Jacuípe', 2, 'AL'),
(139, 'Japaratinga', 2, 'AL'),
(140, 'Jaramataia', 2, 'AL'),
(141, 'Jequiá da Praia', 2, 'AL'),
(142, 'Joaquim Gomes', 2, 'AL'),
(143, 'Jundiá', 2, 'AL'),
(144, 'Junqueiro', 2, 'AL'),
(145, 'Lagoa da Canoa', 2, 'AL'),
(146, 'Limoeiro de Anadia', 2, 'AL'),
(147, 'Maceió', 2, 'AL'),
(148, 'Major Isidoro', 2, 'AL'),
(149, 'Mar Vermelho', 2, 'AL'),
(150, 'Maragogi', 2, 'AL'),
(151, 'Maravilha', 2, 'AL'),
(152, 'Marechal Deodoro', 2, 'AL'),
(153, 'Maribondo', 2, 'AL'),
(154, 'Mata Grande', 2, 'AL'),
(155, 'Matriz de Camaragibe', 2, 'AL'),
(156, 'Messias', 2, 'AL'),
(157, 'Minador do Negrão', 2, 'AL'),
(158, 'Monteirópolis', 2, 'AL'),
(159, 'Murici', 2, 'AL'),
(160, 'Novo Lino', 2, 'AL'),
(161, 'Olho d`Água das Flores', 2, 'AL'),
(162, 'Olho d`Água do Casado', 2, 'AL'),
(163, 'Olho d`Água Grande', 2, 'AL'),
(164, 'Olivença', 2, 'AL'),
(165, 'Ouro Branco', 2, 'AL'),
(166, 'Palestina', 2, 'AL'),
(167, 'Palmeira dos Índios', 2, 'AL'),
(168, 'Pão de Açúcar', 2, 'AL'),
(169, 'Pariconha', 2, 'AL'),
(170, 'Paripueira', 2, 'AL'),
(171, 'Passo de Camaragibe', 2, 'AL'),
(172, 'Paulo Jacinto', 2, 'AL'),
(173, 'Penedo', 2, 'AL'),
(174, 'Piaçabuçu', 2, 'AL'),
(175, 'Pilar', 2, 'AL'),
(176, 'Pindoba', 2, 'AL'),
(177, 'Piranhas', 2, 'AL'),
(178, 'Poço das Trincheiras', 2, 'AL'),
(179, 'Porto Calvo', 2, 'AL'),
(180, 'Porto de Pedras', 2, 'AL'),
(181, 'Porto Real do Colégio', 2, 'AL'),
(182, 'Quebrangulo', 2, 'AL'),
(183, 'Rio Largo', 2, 'AL'),
(184, 'Roteiro', 2, 'AL'),
(185, 'Santa Luzia do Norte', 2, 'AL'),
(186, 'Santana do Ipanema', 2, 'AL'),
(187, 'Santana do Mundaú', 2, 'AL'),
(188, 'São Brás', 2, 'AL'),
(189, 'São José da Laje', 2, 'AL'),
(190, 'São José da Tapera', 2, 'AL'),
(191, 'São Luís do Quitunde', 2, 'AL'),
(192, 'São Miguel dos Campos', 2, 'AL'),
(193, 'São Miguel dos Milagres', 2, 'AL'),
(194, 'São Sebastião', 2, 'AL'),
(195, 'Satuba', 2, 'AL'),
(196, 'Senador Rui Palmeira', 2, 'AL'),
(197, 'Tanque d`Arca', 2, 'AL'),
(198, 'Taquarana', 2, 'AL'),
(199, 'Teotônio Vilela', 2, 'AL'),
(200, 'Traipu', 2, 'AL'),
(201, 'União dos Palmares', 2, 'AL'),
(202, 'Viçosa', 2, 'AL'),
(203, 'Amapá', 4, 'AP'),
(204, 'Calçoene', 4, 'AP'),
(205, 'Cutias', 4, 'AP'),
(206, 'Ferreira Gomes', 4, 'AP'),
(207, 'Itaubal', 4, 'AP'),
(208, 'Laranjal do Jari', 4, 'AP'),
(209, 'Macapá', 4, 'AP'),
(210, 'Mazagão', 4, 'AP'),
(211, 'Oiapoque', 4, 'AP'),
(212, 'Pedra Branca do Amaparí', 4, 'AP'),
(213, 'Porto Grande', 4, 'AP'),
(214, 'Pracuúba', 4, 'AP'),
(215, 'Santana', 4, 'AP'),
(216, 'Serra do Navio', 4, 'AP'),
(217, 'Tartarugalzinho', 4, 'AP'),
(218, 'Vitória do Jari', 4, 'AP'),
(219, 'Alvarães', 3, 'AM'),
(220, 'Amaturá', 3, 'AM'),
(221, 'Anamã', 3, 'AM'),
(222, 'Anori', 3, 'AM'),
(223, 'Apuí', 3, 'AM'),
(224, 'Atalaia do Norte', 3, 'AM'),
(225, 'Autazes', 3, 'AM'),
(226, 'Barcelos', 3, 'AM'),
(227, 'Barreirinha', 3, 'AM'),
(228, 'Benjamin Constant', 3, 'AM'),
(229, 'Beruri', 3, 'AM'),
(230, 'Boa Vista do Ramos', 3, 'AM'),
(231, 'Boca do Acre', 3, 'AM'),
(232, 'Borba', 3, 'AM'),
(233, 'Caapiranga', 3, 'AM'),
(234, 'Canutama', 3, 'AM'),
(235, 'Carauari', 3, 'AM'),
(236, 'Careiro', 3, 'AM'),
(237, 'Careiro da Várzea', 3, 'AM'),
(238, 'Coari', 3, 'AM'),
(239, 'Codajás', 3, 'AM'),
(240, 'Eirunepé', 3, 'AM'),
(241, 'Envira', 3, 'AM'),
(242, 'Fonte Boa', 3, 'AM'),
(243, 'Guajará', 3, 'AM'),
(244, 'Humaitá', 3, 'AM'),
(245, 'Ipixuna', 3, 'AM'),
(246, 'Iranduba', 3, 'AM'),
(247, 'Itacoatiara', 3, 'AM'),
(248, 'Itamarati', 3, 'AM'),
(249, 'Itapiranga', 3, 'AM'),
(250, 'Japurá', 3, 'AM'),
(251, 'Juruá', 3, 'AM'),
(252, 'Jutaí', 3, 'AM'),
(253, 'Lábrea', 3, 'AM'),
(254, 'Manacapuru', 3, 'AM'),
(255, 'Manaquiri', 3, 'AM'),
(256, 'Manaus', 3, 'AM'),
(257, 'Manicoré', 3, 'AM'),
(258, 'Maraã', 3, 'AM'),
(259, 'Maués', 3, 'AM'),
(260, 'Nhamundá', 3, 'AM'),
(261, 'Nova Olinda do Norte', 3, 'AM'),
(262, 'Novo Airão', 3, 'AM'),
(263, 'Novo Aripuanã', 3, 'AM'),
(264, 'Parintins', 3, 'AM'),
(265, 'Pauini', 3, 'AM'),
(266, 'Presidente Figueiredo', 3, 'AM'),
(267, 'Rio Preto da Eva', 3, 'AM'),
(268, 'Santa Isabel do Rio Negro', 3, 'AM'),
(269, 'Santo Antônio do Içá', 3, 'AM'),
(270, 'São Gabriel da Cachoeira', 3, 'AM'),
(271, 'São Paulo de Olivença', 3, 'AM'),
(272, 'São Sebastião do Uatumã', 3, 'AM'),
(273, 'Silves', 3, 'AM'),
(274, 'Tabatinga', 3, 'AM'),
(275, 'Tapauá', 3, 'AM'),
(276, 'Tefé', 3, 'AM'),
(277, 'Tonantins', 3, 'AM'),
(278, 'Uarini', 3, 'AM'),
(279, 'Urucará', 3, 'AM'),
(280, 'Urucurituba', 3, 'AM'),
(281, 'Abaíra', 5, 'BA'),
(282, 'Abaré', 5, 'BA'),
(283, 'Acajutiba', 5, 'BA'),
(284, 'Adustina', 5, 'BA'),
(285, 'Água Fria', 5, 'BA'),
(286, 'Aiquara', 5, 'BA'),
(287, 'Alagoinhas', 5, 'BA'),
(288, 'Alcobaça', 5, 'BA'),
(289, 'Almadina', 5, 'BA'),
(290, 'Amargosa', 5, 'BA'),
(291, 'Amélia Rodrigues', 5, 'BA'),
(292, 'América Dourada', 5, 'BA'),
(293, 'Anagé', 5, 'BA'),
(294, 'Andaraí', 5, 'BA'),
(295, 'Andorinha', 5, 'BA'),
(296, 'Angical', 5, 'BA'),
(297, 'Anguera', 5, 'BA'),
(298, 'Antas', 5, 'BA'),
(299, 'Antônio Cardoso', 5, 'BA'),
(300, 'Antônio Gonçalves', 5, 'BA'),
(301, 'Aporá', 5, 'BA'),
(302, 'Apuarema', 5, 'BA'),
(303, 'Araças', 5, 'BA'),
(304, 'Aracatu', 5, 'BA'),
(305, 'Araci', 5, 'BA'),
(306, 'Aramari', 5, 'BA'),
(307, 'Arataca', 5, 'BA'),
(308, 'Aratuípe', 5, 'BA'),
(309, 'Aurelino Leal', 5, 'BA'),
(310, 'Baianópolis', 5, 'BA'),
(311, 'Baixa Grande', 5, 'BA'),
(312, 'Banzaê', 5, 'BA'),
(313, 'Barra', 5, 'BA'),
(314, 'Barra da Estiva', 5, 'BA'),
(315, 'Barra do Choça', 5, 'BA'),
(316, 'Barra do Mendes', 5, 'BA'),
(317, 'Barra do Rocha', 5, 'BA'),
(318, 'Barreiras', 5, 'BA'),
(319, 'Barro Alto', 5, 'BA'),
(320, 'Barro Preto (antigo Gov. Lomanto Jr.)', 5, 'BA'),
(321, 'Barrocas', 5, 'BA'),
(322, 'Belmonte', 5, 'BA'),
(323, 'Belo Campo', 5, 'BA'),
(324, 'Biritinga', 5, 'BA'),
(325, 'Boa Nova', 5, 'BA'),
(326, 'Boa Vista do Tupim', 5, 'BA'),
(327, 'Bom Jesus da Lapa', 5, 'BA'),
(328, 'Bom Jesus da Serra', 5, 'BA'),
(329, 'Boninal', 5, 'BA'),
(330, 'Bonito', 5, 'BA'),
(331, 'Boquira', 5, 'BA'),
(332, 'Botuporã', 5, 'BA'),
(333, 'Brejões', 5, 'BA'),
(334, 'Brejolândia', 5, 'BA'),
(335, 'Brotas de Macaúbas', 5, 'BA'),
(336, 'Brumado', 5, 'BA'),
(337, 'Buerarema', 5, 'BA'),
(338, 'Buritirama', 5, 'BA'),
(339, 'Caatiba', 5, 'BA'),
(340, 'Cabaceiras do Paraguaçu', 5, 'BA'),
(341, 'Cachoeira', 5, 'BA'),
(342, 'Caculé', 5, 'BA'),
(343, 'Caém', 5, 'BA'),
(344, 'Caetanos', 5, 'BA'),
(345, 'Caetité', 5, 'BA'),
(346, 'Cafarnaum', 5, 'BA'),
(347, 'Cairu', 5, 'BA'),
(348, 'Caldeirão Grande', 5, 'BA'),
(349, 'Camacan', 5, 'BA'),
(350, 'Camaçari', 5, 'BA'),
(351, 'Camamu', 5, 'BA'),
(352, 'Campo Alegre de Lourdes', 5, 'BA'),
(353, 'Campo Formoso', 5, 'BA'),
(354, 'Canápolis', 5, 'BA'),
(355, 'Canarana', 5, 'BA'),
(356, 'Canavieiras', 5, 'BA'),
(357, 'Candeal', 5, 'BA'),
(358, 'Candeias', 5, 'BA'),
(359, 'Candiba', 5, 'BA'),
(360, 'Cândido Sales', 5, 'BA'),
(361, 'Cansanção', 5, 'BA'),
(362, 'Canudos', 5, 'BA'),
(363, 'Capela do Alto Alegre', 5, 'BA'),
(364, 'Capim Grosso', 5, 'BA'),
(365, 'Caraíbas', 5, 'BA'),
(366, 'Caravelas', 5, 'BA'),
(367, 'Cardeal da Silva', 5, 'BA'),
(368, 'Carinhanha', 5, 'BA'),
(369, 'Casa Nova', 5, 'BA'),
(370, 'Castro Alves', 5, 'BA'),
(371, 'Catolândia', 5, 'BA'),
(372, 'Catu', 5, 'BA'),
(373, 'Caturama', 5, 'BA'),
(374, 'Central', 5, 'BA'),
(375, 'Chorrochó', 5, 'BA'),
(376, 'Cícero Dantas', 5, 'BA'),
(377, 'Cipó', 5, 'BA'),
(378, 'Coaraci', 5, 'BA'),
(379, 'Cocos', 5, 'BA'),
(380, 'Conceição da Feira', 5, 'BA'),
(381, 'Conceição do Almeida', 5, 'BA'),
(382, 'Conceição do Coité', 5, 'BA'),
(383, 'Conceição do Jacuípe', 5, 'BA'),
(384, 'Conde', 5, 'BA'),
(385, 'Condeúba', 5, 'BA'),
(386, 'Contendas do Sincorá', 5, 'BA'),
(387, 'Coração de Maria', 5, 'BA'),
(388, 'Cordeiros', 5, 'BA'),
(389, 'Coribe', 5, 'BA'),
(390, 'Coronel João Sá', 5, 'BA'),
(391, 'Correntina', 5, 'BA'),
(392, 'Cotegipe', 5, 'BA'),
(393, 'Cravolândia', 5, 'BA'),
(394, 'Crisópolis', 5, 'BA'),
(395, 'Cristópolis', 5, 'BA'),
(396, 'Cruz das Almas', 5, 'BA'),
(397, 'Curaçá', 5, 'BA'),
(398, 'Dário Meira', 5, 'BA'),
(399, 'Dias d`Ávila', 5, 'BA'),
(400, 'Dom Basílio', 5, 'BA'),
(401, 'Dom Macedo Costa', 5, 'BA'),
(402, 'Elísio Medrado', 5, 'BA'),
(403, 'Encruzilhada', 5, 'BA'),
(404, 'Entre Rios', 5, 'BA'),
(405, 'Érico Cardoso', 5, 'BA'),
(406, 'Esplanada', 5, 'BA'),
(407, 'Euclides da Cunha', 5, 'BA'),
(408, 'Eunápolis', 5, 'BA'),
(409, 'Fátima', 5, 'BA'),
(410, 'Feira da Mata', 5, 'BA'),
(411, 'Feira de Santana', 5, 'BA'),
(412, 'Filadélfia', 5, 'BA'),
(413, 'Firmino Alves', 5, 'BA'),
(414, 'Floresta Azul', 5, 'BA'),
(415, 'Formosa do Rio Preto', 5, 'BA'),
(416, 'Gandu', 5, 'BA'),
(417, 'Gavião', 5, 'BA'),
(418, 'Gentio do Ouro', 5, 'BA'),
(419, 'Glória', 5, 'BA'),
(420, 'Gongogi', 5, 'BA'),
(421, 'Governador Mangabeira', 5, 'BA'),
(422, 'Guajeru', 5, 'BA'),
(423, 'Guanambi', 5, 'BA'),
(424, 'Guaratinga', 5, 'BA'),
(425, 'Heliópolis', 5, 'BA'),
(426, 'Iaçu', 5, 'BA'),
(427, 'Ibiassucê', 5, 'BA'),
(428, 'Ibicaraí', 5, 'BA'),
(429, 'Ibicoara', 5, 'BA'),
(430, 'Ibicuí', 5, 'BA'),
(431, 'Ibipeba', 5, 'BA'),
(432, 'Ibipitanga', 5, 'BA'),
(433, 'Ibiquera', 5, 'BA'),
(434, 'Ibirapitanga', 5, 'BA'),
(435, 'Ibirapuã', 5, 'BA'),
(436, 'Ibirataia', 5, 'BA'),
(437, 'Ibitiara', 5, 'BA'),
(438, 'Ibititá', 5, 'BA'),
(439, 'Ibotirama', 5, 'BA'),
(440, 'Ichu', 5, 'BA'),
(441, 'Igaporã', 5, 'BA'),
(442, 'Igrapiúna', 5, 'BA'),
(443, 'Iguaí', 5, 'BA'),
(444, 'Ilhéus', 5, 'BA'),
(445, 'Inhambupe', 5, 'BA'),
(446, 'Ipecaetá', 5, 'BA'),
(447, 'Ipiaú', 5, 'BA'),
(448, 'Ipirá', 5, 'BA'),
(449, 'Ipupiara', 5, 'BA'),
(450, 'Irajuba', 5, 'BA'),
(451, 'Iramaia', 5, 'BA'),
(452, 'Iraquara', 5, 'BA'),
(453, 'Irará', 5, 'BA'),
(454, 'Irecê', 5, 'BA'),
(455, 'Itabela', 5, 'BA'),
(456, 'Itaberaba', 5, 'BA'),
(457, 'Itabuna', 5, 'BA'),
(458, 'Itacaré', 5, 'BA'),
(459, 'Itaeté', 5, 'BA'),
(460, 'Itagi', 5, 'BA'),
(461, 'Itagibá', 5, 'BA'),
(462, 'Itagimirim', 5, 'BA'),
(463, 'Itaguaçu da Bahia', 5, 'BA'),
(464, 'Itaju do Colônia', 5, 'BA'),
(465, 'Itajuípe', 5, 'BA'),
(466, 'Itamaraju', 5, 'BA'),
(467, 'Itamari', 5, 'BA'),
(468, 'Itambé', 5, 'BA'),
(469, 'Itanagra', 5, 'BA'),
(470, 'Itanhém', 5, 'BA'),
(471, 'Itaparica', 5, 'BA'),
(472, 'Itapé', 5, 'BA'),
(473, 'Itapebi', 5, 'BA'),
(474, 'Itapetinga', 5, 'BA'),
(475, 'Itapicuru', 5, 'BA'),
(476, 'Itapitanga', 5, 'BA'),
(477, 'Itaquara', 5, 'BA'),
(478, 'Itarantim', 5, 'BA'),
(479, 'Itatim', 5, 'BA'),
(480, 'Itiruçu', 5, 'BA'),
(481, 'Itiúba', 5, 'BA'),
(482, 'Itororó', 5, 'BA'),
(483, 'Ituaçu', 5, 'BA'),
(484, 'Ituberá', 5, 'BA'),
(485, 'Iuiú', 5, 'BA'),
(486, 'Jaborandi', 5, 'BA'),
(487, 'Jacaraci', 5, 'BA'),
(488, 'Jacobina', 5, 'BA'),
(489, 'Jaguaquara', 5, 'BA'),
(490, 'Jaguarari', 5, 'BA'),
(491, 'Jaguaripe', 5, 'BA'),
(492, 'Jandaíra', 5, 'BA'),
(493, 'Jequié', 5, 'BA'),
(494, 'Jeremoabo', 5, 'BA'),
(495, 'Jiquiriçá', 5, 'BA'),
(496, 'Jitaúna', 5, 'BA'),
(497, 'João Dourado', 5, 'BA'),
(498, 'Juazeiro', 5, 'BA'),
(499, 'Jucuruçu', 5, 'BA'),
(500, 'Jussara', 5, 'BA'),
(501, 'Jussari', 5, 'BA'),
(502, 'Jussiape', 5, 'BA'),
(503, 'Lafaiete Coutinho', 5, 'BA'),
(504, 'Lagoa Real', 5, 'BA'),
(505, 'Laje', 5, 'BA'),
(506, 'Lajedão', 5, 'BA'),
(507, 'Lajedinho', 5, 'BA'),
(508, 'Lajedo do Tabocal', 5, 'BA'),
(509, 'Lamarão', 5, 'BA'),
(510, 'Lapão', 5, 'BA'),
(511, 'Lauro de Freitas', 5, 'BA'),
(512, 'Lençóis', 5, 'BA'),
(513, 'Licínio de Almeida', 5, 'BA'),
(514, 'Livramento de Nossa Senhora', 5, 'BA'),
(515, 'Luís Eduardo Magalhães', 5, 'BA'),
(516, 'Macajuba', 5, 'BA'),
(517, 'Macarani', 5, 'BA'),
(518, 'Macaúbas', 5, 'BA'),
(519, 'Macururé', 5, 'BA'),
(520, 'Madre de Deus', 5, 'BA'),
(521, 'Maetinga', 5, 'BA'),
(522, 'Maiquinique', 5, 'BA'),
(523, 'Mairi', 5, 'BA'),
(524, 'Malhada', 5, 'BA'),
(525, 'Malhada de Pedras', 5, 'BA'),
(526, 'Manoel Vitorino', 5, 'BA'),
(527, 'Mansidão', 5, 'BA'),
(528, 'Maracás', 5, 'BA'),
(529, 'Maragogipe', 5, 'BA'),
(530, 'Maraú', 5, 'BA'),
(531, 'Marcionílio Souza', 5, 'BA'),
(532, 'Mascote', 5, 'BA'),
(533, 'Mata de São João', 5, 'BA'),
(534, 'Matina', 5, 'BA'),
(535, 'Medeiros Neto', 5, 'BA'),
(536, 'Miguel Calmon', 5, 'BA'),
(537, 'Milagres', 5, 'BA'),
(538, 'Mirangaba', 5, 'BA'),
(539, 'Mirante', 5, 'BA'),
(540, 'Monte Santo', 5, 'BA'),
(541, 'Morpará', 5, 'BA'),
(542, 'Morro do Chapéu', 5, 'BA'),
(543, 'Mortugaba', 5, 'BA'),
(544, 'Mucugê', 5, 'BA'),
(545, 'Mucuri', 5, 'BA'),
(546, 'Mulungu do Morro', 5, 'BA'),
(547, 'Mundo Novo', 5, 'BA'),
(548, 'Muniz Ferreira', 5, 'BA'),
(549, 'Muquém de São Francisco', 5, 'BA'),
(550, 'Muritiba', 5, 'BA'),
(551, 'Mutuípe', 5, 'BA'),
(552, 'Nazaré', 5, 'BA'),
(553, 'Nilo Peçanha', 5, 'BA'),
(554, 'Nordestina', 5, 'BA'),
(555, 'Nova Canaã', 5, 'BA'),
(556, 'Nova Fátima', 5, 'BA'),
(557, 'Nova Ibiá', 5, 'BA'),
(558, 'Nova Itarana', 5, 'BA'),
(559, 'Nova Redenção', 5, 'BA'),
(560, 'Nova Soure', 5, 'BA'),
(561, 'Nova Viçosa', 5, 'BA'),
(562, 'Novo Horizonte', 5, 'BA'),
(563, 'Novo Triunfo', 5, 'BA'),
(564, 'Olindina', 5, 'BA'),
(565, 'Oliveira dos Brejinhos', 5, 'BA'),
(566, 'Ouriçangas', 5, 'BA'),
(567, 'Ourolândia', 5, 'BA'),
(568, 'Palmas de Monte Alto', 5, 'BA'),
(569, 'Palmeiras', 5, 'BA'),
(570, 'Paramirim', 5, 'BA'),
(571, 'Paratinga', 5, 'BA'),
(572, 'Paripiranga', 5, 'BA'),
(573, 'Pau Brasil', 5, 'BA'),
(574, 'Paulo Afonso', 5, 'BA'),
(575, 'Pé de Serra', 5, 'BA'),
(576, 'Pedrão', 5, 'BA'),
(577, 'Pedro Alexandre', 5, 'BA'),
(578, 'Piatã', 5, 'BA'),
(579, 'Pilão Arcado', 5, 'BA'),
(580, 'Pindaí', 5, 'BA'),
(581, 'Pindobaçu', 5, 'BA'),
(582, 'Pintadas', 5, 'BA'),
(583, 'Piraí do Norte', 5, 'BA'),
(584, 'Piripá', 5, 'BA'),
(585, 'Piritiba', 5, 'BA'),
(586, 'Planaltino', 5, 'BA'),
(587, 'Planalto', 5, 'BA'),
(588, 'Poções', 5, 'BA'),
(589, 'Pojuca', 5, 'BA'),
(590, 'Ponto Novo', 5, 'BA'),
(591, 'Porto Seguro', 5, 'BA'),
(592, 'Potiraguá', 5, 'BA'),
(593, 'Prado', 5, 'BA'),
(594, 'Presidente Dutra', 5, 'BA'),
(595, 'Presidente Jânio Quadros', 5, 'BA'),
(596, 'Presidente Tancredo Neves', 5, 'BA'),
(597, 'Queimadas', 5, 'BA'),
(598, 'Quijingue', 5, 'BA'),
(599, 'Quixabeira', 5, 'BA'),
(600, 'Rafael Jambeiro', 5, 'BA'),
(601, 'Remanso', 5, 'BA'),
(602, 'Retirolândia', 5, 'BA'),
(603, 'Riachão das Neves', 5, 'BA'),
(604, 'Riachão do Jacuípe', 5, 'BA'),
(605, 'Riacho de Santana', 5, 'BA'),
(606, 'Ribeira do Amparo', 5, 'BA'),
(607, 'Ribeira do Pombal', 5, 'BA'),
(608, 'Ribeirão do Largo', 5, 'BA'),
(609, 'Rio de Contas', 5, 'BA'),
(610, 'Rio do Antônio', 5, 'BA'),
(611, 'Rio do Pires', 5, 'BA'),
(612, 'Rio Real', 5, 'BA'),
(613, 'Rodelas', 5, 'BA'),
(614, 'Ruy Barbosa', 5, 'BA'),
(615, 'Salinas da Margarida', 5, 'BA'),
(616, 'Salvador', 5, 'BA'),
(617, 'Santa Bárbara', 5, 'BA'),
(618, 'Santa Brígida', 5, 'BA'),
(619, 'Santa Cruz Cabrália', 5, 'BA'),
(620, 'Santa Cruz da Vitória', 5, 'BA'),
(621, 'Santa Inês', 5, 'BA'),
(622, 'Santa Luzia', 5, 'BA'),
(623, 'Santa Maria da Vitória', 5, 'BA'),
(624, 'Santa Rita de Cássia', 5, 'BA'),
(625, 'Santa Teresinha', 5, 'BA'),
(626, 'Santaluz', 5, 'BA'),
(627, 'Santana', 5, 'BA'),
(628, 'Santanópolis', 5, 'BA'),
(629, 'Santo Amaro', 5, 'BA'),
(630, 'Santo Antônio de Jesus', 5, 'BA'),
(631, 'Santo Estêvão', 5, 'BA'),
(632, 'São Desidério', 5, 'BA'),
(633, 'São Domingos', 5, 'BA'),
(634, 'São Felipe', 5, 'BA'),
(635, 'São Félix', 5, 'BA'),
(636, 'São Félix do Coribe', 5, 'BA'),
(637, 'São Francisco do Conde', 5, 'BA'),
(638, 'São Gabriel', 5, 'BA'),
(639, 'São Gonçalo dos Campos', 5, 'BA'),
(640, 'São José da Vitória', 5, 'BA'),
(641, 'São José do Jacuípe', 5, 'BA'),
(642, 'São Miguel das Matas', 5, 'BA'),
(643, 'São Sebastião do Passé', 5, 'BA'),
(644, 'Sapeaçu', 5, 'BA'),
(645, 'Sátiro Dias', 5, 'BA'),
(646, 'Saubara', 5, 'BA'),
(647, 'Saúde', 5, 'BA'),
(648, 'Seabra', 5, 'BA'),
(649, 'Sebastião Laranjeiras', 5, 'BA'),
(650, 'Senhor do Bonfim', 5, 'BA'),
(651, 'Sento Sé', 5, 'BA'),
(652, 'Serra do Ramalho', 5, 'BA'),
(653, 'Serra Dourada', 5, 'BA'),
(654, 'Serra Preta', 5, 'BA'),
(655, 'Serrinha', 5, 'BA'),
(656, 'Serrolândia', 5, 'BA'),
(657, 'Simões Filho', 5, 'BA'),
(658, 'Sítio do Mato', 5, 'BA'),
(659, 'Sítio do Quinto', 5, 'BA'),
(660, 'Sobradinho', 5, 'BA'),
(661, 'Souto Soares', 5, 'BA'),
(662, 'Tabocas do Brejo Velho', 5, 'BA'),
(663, 'Tanhaçu', 5, 'BA'),
(664, 'Tanque Novo', 5, 'BA'),
(665, 'Tanquinho', 5, 'BA'),
(666, 'Taperoá', 5, 'BA'),
(667, 'Tapiramutá', 5, 'BA'),
(668, 'Teixeira de Freitas', 5, 'BA'),
(669, 'Teodoro Sampaio', 5, 'BA'),
(670, 'Teofilândia', 5, 'BA'),
(671, 'Teolândia', 5, 'BA'),
(672, 'Terra Nova', 5, 'BA'),
(673, 'Tremedal', 5, 'BA'),
(674, 'Tucano', 5, 'BA'),
(675, 'Uauá', 5, 'BA'),
(676, 'Ubaíra', 5, 'BA'),
(677, 'Ubaitaba', 5, 'BA'),
(678, 'Ubatã', 5, 'BA'),
(679, 'Uibaí', 5, 'BA'),
(680, 'Umburanas', 5, 'BA'),
(681, 'Una', 5, 'BA'),
(682, 'Urandi', 5, 'BA'),
(683, 'Uruçuca', 5, 'BA'),
(684, 'Utinga', 5, 'BA'),
(685, 'Valença', 5, 'BA'),
(686, 'Valente', 5, 'BA'),
(687, 'Várzea da Roça', 5, 'BA'),
(688, 'Várzea do Poço', 5, 'BA'),
(689, 'Várzea Nova', 5, 'BA'),
(690, 'Varzedo', 5, 'BA'),
(691, 'Vera Cruz', 5, 'BA'),
(692, 'Vereda', 5, 'BA'),
(693, 'Vitória da Conquista', 5, 'BA'),
(694, 'Wagner', 5, 'BA'),
(695, 'Wanderley', 5, 'BA'),
(696, 'Wenceslau Guimarães', 5, 'BA'),
(697, 'Xique-Xique', 5, 'BA'),
(698, 'Abaiara', 6, 'CE'),
(699, 'Acarape', 6, 'CE'),
(700, 'Acaraú', 6, 'CE'),
(701, 'Acopiara', 6, 'CE'),
(702, 'Aiuaba', 6, 'CE'),
(703, 'Alcântaras', 6, 'CE'),
(704, 'Altaneira', 6, 'CE'),
(705, 'Alto Santo', 6, 'CE'),
(706, 'Amontada', 6, 'CE'),
(707, 'Antonina do Norte', 6, 'CE'),
(708, 'Apuiarés', 6, 'CE'),
(709, 'Aquiraz', 6, 'CE'),
(710, 'Aracati', 6, 'CE'),
(711, 'Aracoiaba', 6, 'CE'),
(712, 'Ararendá', 6, 'CE'),
(713, 'Araripe', 6, 'CE'),
(714, 'Aratuba', 6, 'CE'),
(715, 'Arneiroz', 6, 'CE'),
(716, 'Assaré', 6, 'CE'),
(717, 'Aurora', 6, 'CE'),
(718, 'Baixio', 6, 'CE'),
(719, 'Banabuiú', 6, 'CE'),
(720, 'Barbalha', 6, 'CE'),
(721, 'Barreira', 6, 'CE'),
(722, 'Barro', 6, 'CE'),
(723, 'Barroquinha', 6, 'CE'),
(724, 'Baturité', 6, 'CE'),
(725, 'Beberibe', 6, 'CE'),
(726, 'Bela Cruz', 6, 'CE'),
(727, 'Boa Viagem', 6, 'CE'),
(728, 'Brejo Santo', 6, 'CE'),
(729, 'Camocim', 6, 'CE'),
(730, 'Campos Sales', 6, 'CE'),
(731, 'Canindé', 6, 'CE'),
(732, 'Capistrano', 6, 'CE'),
(733, 'Caridade', 6, 'CE'),
(734, 'Cariré', 6, 'CE'),
(735, 'Caririaçu', 6, 'CE'),
(736, 'Cariús', 6, 'CE'),
(737, 'Carnaubal', 6, 'CE'),
(738, 'Cascavel', 6, 'CE'),
(739, 'Catarina', 6, 'CE'),
(740, 'Catunda', 6, 'CE'),
(741, 'Caucaia', 6, 'CE'),
(742, 'Cedro', 6, 'CE'),
(743, 'Chaval', 6, 'CE'),
(744, 'Choró', 6, 'CE'),
(745, 'Chorozinho', 6, 'CE'),
(746, 'Coreaú', 6, 'CE'),
(747, 'Crateús', 6, 'CE'),
(748, 'Crato', 6, 'CE'),
(749, 'Croatá', 6, 'CE'),
(750, 'Cruz', 6, 'CE'),
(751, 'Deputado Irapuan Pinheiro', 6, 'CE'),
(752, 'Ererê', 6, 'CE'),
(753, 'Eusébio', 6, 'CE'),
(754, 'Farias Brito', 6, 'CE'),
(755, 'Forquilha', 6, 'CE'),
(756, 'Fortaleza', 6, 'CE'),
(757, 'Fortim', 6, 'CE'),
(758, 'Frecheirinha', 6, 'CE'),
(759, 'General Sampaio', 6, 'CE'),
(760, 'Graça', 6, 'CE'),
(761, 'Granja', 6, 'CE'),
(762, 'Granjeiro', 6, 'CE'),
(763, 'Groaíras', 6, 'CE'),
(764, 'Guaiúba', 6, 'CE'),
(765, 'Guaraciaba do Norte', 6, 'CE'),
(766, 'Guaramiranga', 6, 'CE'),
(767, 'Hidrolândia', 6, 'CE'),
(768, 'Horizonte', 6, 'CE'),
(769, 'Ibaretama', 6, 'CE'),
(770, 'Ibiapina', 6, 'CE'),
(771, 'Ibicuitinga', 6, 'CE'),
(772, 'Icapuí', 6, 'CE'),
(773, 'Icó', 6, 'CE'),
(774, 'Iguatu', 6, 'CE'),
(775, 'Independência', 6, 'CE'),
(776, 'Ipaporanga', 6, 'CE'),
(777, 'Ipaumirim', 6, 'CE'),
(778, 'Ipu', 6, 'CE'),
(779, 'Ipueiras', 6, 'CE'),
(780, 'Iracema', 6, 'CE'),
(781, 'Irauçuba', 6, 'CE'),
(782, 'Itaiçaba', 6, 'CE'),
(783, 'Itaitinga', 6, 'CE'),
(784, 'Itapagé', 6, 'CE'),
(785, 'Itapipoca', 6, 'CE'),
(786, 'Itapiúna', 6, 'CE'),
(787, 'Itarema', 6, 'CE'),
(788, 'Itatira', 6, 'CE'),
(789, 'Jaguaretama', 6, 'CE'),
(790, 'Jaguaribara', 6, 'CE'),
(791, 'Jaguaribe', 6, 'CE'),
(792, 'Jaguaruana', 6, 'CE'),
(793, 'Jardim', 6, 'CE'),
(794, 'Jati', 6, 'CE'),
(795, 'Jijoca de Jericoacoara', 6, 'CE'),
(796, 'Juazeiro do Norte', 6, 'CE'),
(797, 'Jucás', 6, 'CE'),
(798, 'Lavras da Mangabeira', 6, 'CE'),
(799, 'Limoeiro do Norte', 6, 'CE'),
(800, 'Madalena', 6, 'CE'),
(801, 'Maracanaú', 6, 'CE'),
(802, 'Maranguape', 6, 'CE'),
(803, 'Marco', 6, 'CE'),
(804, 'Martinópole', 6, 'CE'),
(805, 'Massapê', 6, 'CE'),
(806, 'Mauriti', 6, 'CE'),
(807, 'Meruoca', 6, 'CE'),
(808, 'Milagres', 6, 'CE'),
(809, 'Milhã', 6, 'CE'),
(810, 'Miraíma', 6, 'CE'),
(811, 'Missão Velha', 6, 'CE'),
(812, 'Mombaça', 6, 'CE'),
(813, 'Monsenhor Tabosa', 6, 'CE'),
(814, 'Morada Nova', 6, 'CE'),
(815, 'Moraújo', 6, 'CE'),
(816, 'Morrinhos', 6, 'CE'),
(817, 'Mucambo', 6, 'CE'),
(818, 'Mulungu', 6, 'CE'),
(819, 'Nova Olinda', 6, 'CE'),
(820, 'Nova Russas', 6, 'CE'),
(821, 'Novo Oriente', 6, 'CE'),
(822, 'Ocara', 6, 'CE'),
(823, 'Orós', 6, 'CE'),
(824, 'Pacajus', 6, 'CE'),
(825, 'Pacatuba', 6, 'CE'),
(826, 'Pacoti', 6, 'CE'),
(827, 'Pacujá', 6, 'CE'),
(828, 'Palhano', 6, 'CE'),
(829, 'Palmácia', 6, 'CE'),
(830, 'Paracuru', 6, 'CE'),
(831, 'Paraipaba', 6, 'CE'),
(832, 'Parambu', 6, 'CE'),
(833, 'Paramoti', 6, 'CE'),
(834, 'Pedra Branca', 6, 'CE'),
(835, 'Penaforte', 6, 'CE'),
(836, 'Pentecoste', 6, 'CE'),
(837, 'Pereiro', 6, 'CE'),
(838, 'Pindoretama', 6, 'CE'),
(839, 'Piquet Carneiro', 6, 'CE'),
(840, 'Pires Ferreira', 6, 'CE'),
(841, 'Poranga', 6, 'CE'),
(842, 'Porteiras', 6, 'CE'),
(843, 'Potengi', 6, 'CE'),
(844, 'Potiretama', 6, 'CE'),
(845, 'Quiterianópolis', 6, 'CE'),
(846, 'Quixadá', 6, 'CE'),
(847, 'Quixelô', 6, 'CE'),
(848, 'Quixeramobim', 6, 'CE'),
(849, 'Quixeré', 6, 'CE'),
(850, 'Redenção', 6, 'CE'),
(851, 'Reriutaba', 6, 'CE'),
(852, 'Russas', 6, 'CE'),
(853, 'Saboeiro', 6, 'CE'),
(854, 'Salitre', 6, 'CE'),
(855, 'Santa Quitéria', 6, 'CE'),
(856, 'Santana do Acaraú', 6, 'CE'),
(857, 'Santana do Cariri', 6, 'CE'),
(858, 'São Benedito', 6, 'CE'),
(859, 'São Gonçalo do Amarante', 6, 'CE'),
(860, 'São João do Jaguaribe', 6, 'CE'),
(861, 'São Luís do Curu', 6, 'CE'),
(862, 'Senador Pompeu', 6, 'CE'),
(863, 'Senador Sá', 6, 'CE'),
(864, 'Sobral', 6, 'CE'),
(865, 'Solonópole', 6, 'CE'),
(866, 'Tabuleiro do Norte', 6, 'CE'),
(867, 'Tamboril', 6, 'CE'),
(868, 'Tarrafas', 6, 'CE'),
(869, 'Tauá', 6, 'CE'),
(870, 'Tejuçuoca', 6, 'CE'),
(871, 'Tianguá', 6, 'CE'),
(872, 'Trairi', 6, 'CE'),
(873, 'Tururu', 6, 'CE'),
(874, 'Ubajara', 6, 'CE'),
(875, 'Umari', 6, 'CE'),
(876, 'Umirim', 6, 'CE'),
(877, 'Uruburetama', 6, 'CE'),
(878, 'Uruoca', 6, 'CE'),
(879, 'Varjota', 6, 'CE'),
(880, 'Várzea Alegre', 6, 'CE'),
(881, 'Viçosa do Ceará', 6, 'CE'),
(882, 'Brasília', 7, 'DF'),
(883, 'Abadia de Goiás', 9, 'GO'),
(884, 'Abadiânia', 9, 'GO'),
(885, 'Acreúna', 9, 'GO'),
(886, 'Adelândia', 9, 'GO'),
(887, 'Água Fria de Goiás', 9, 'GO'),
(888, 'Água Limpa', 9, 'GO'),
(889, 'Águas Lindas de Goiás', 9, 'GO'),
(890, 'Alexânia', 9, 'GO'),
(891, 'Aloândia', 9, 'GO'),
(892, 'Alto Horizonte', 9, 'GO'),
(893, 'Alto Paraíso de Goiás', 9, 'GO'),
(894, 'Alvorada do Norte', 9, 'GO'),
(895, 'Amaralina', 9, 'GO'),
(896, 'Americano do Brasil', 9, 'GO'),
(897, 'Amorinópolis', 9, 'GO'),
(898, 'Anápolis', 9, 'GO'),
(899, 'Anhanguera', 9, 'GO'),
(900, 'Anicuns', 9, 'GO'),
(901, 'Aparecida de Goiânia', 9, 'GO'),
(902, 'Aparecida do Rio Doce', 9, 'GO'),
(903, 'Aporé', 9, 'GO'),
(904, 'Araçu', 9, 'GO'),
(905, 'Aragarças', 9, 'GO'),
(906, 'Aragoiânia', 9, 'GO'),
(907, 'Araguapaz', 9, 'GO'),
(908, 'Arenópolis', 9, 'GO'),
(909, 'Aruanã', 9, 'GO'),
(910, 'Aurilândia', 9, 'GO'),
(911, 'Avelinópolis', 9, 'GO'),
(912, 'Baliza', 9, 'GO'),
(913, 'Barro Alto', 9, 'GO'),
(914, 'Bela Vista de Goiás', 9, 'GO'),
(915, 'Bom Jardim de Goiás', 9, 'GO'),
(916, 'Bom Jesus de Goiás', 9, 'GO'),
(917, 'Bonfinópolis', 9, 'GO'),
(918, 'Bonópolis', 9, 'GO'),
(919, 'Brazabrantes', 9, 'GO'),
(920, 'Britânia', 9, 'GO'),
(921, 'Buriti Alegre', 9, 'GO'),
(922, 'Buriti de Goiás', 9, 'GO'),
(923, 'Buritinópolis', 9, 'GO'),
(924, 'Cabeceiras', 9, 'GO'),
(925, 'Cachoeira Alta', 9, 'GO'),
(926, 'Cachoeira de Goiás', 9, 'GO'),
(927, 'Cachoeira Dourada', 9, 'GO'),
(928, 'Caçu', 9, 'GO'),
(929, 'Caiapônia', 9, 'GO'),
(930, 'Caldas Novas', 9, 'GO'),
(931, 'Caldazinha', 9, 'GO'),
(932, 'Campestre de Goiás', 9, 'GO'),
(933, 'Campinaçu', 9, 'GO'),
(934, 'Campinorte', 9, 'GO'),
(935, 'Campo Alegre de Goiás', 9, 'GO'),
(936, 'Campo Limpo de Goiás', 9, 'GO'),
(937, 'Campos Belos', 9, 'GO'),
(938, 'Campos Verdes', 9, 'GO'),
(939, 'Carmo do Rio Verde', 9, 'GO'),
(940, 'Castelândia', 9, 'GO'),
(941, 'Catalão', 9, 'GO'),
(942, 'Caturaí', 9, 'GO'),
(943, 'Cavalcante', 9, 'GO'),
(944, 'Ceres', 9, 'GO'),
(945, 'Cezarina', 9, 'GO'),
(946, 'Chapadão do Céu', 9, 'GO'),
(947, 'Cidade Ocidental', 9, 'GO'),
(948, 'Cocalzinho de Goiás', 9, 'GO'),
(949, 'Colinas do Sul', 9, 'GO'),
(950, 'Córrego do Ouro', 9, 'GO'),
(951, 'Corumbá de Goiás', 9, 'GO'),
(952, 'Corumbaíba', 9, 'GO'),
(953, 'Cristalina', 9, 'GO'),
(954, 'Cristianópolis', 9, 'GO'),
(955, 'Crixás', 9, 'GO'),
(956, 'Cromínia', 9, 'GO'),
(957, 'Cumari', 9, 'GO'),
(958, 'Damianópolis', 9, 'GO'),
(959, 'Damolândia', 9, 'GO'),
(960, 'Davinópolis', 9, 'GO'),
(961, 'Diorama', 9, 'GO'),
(962, 'Divinópolis de Goiás', 9, 'GO'),
(963, 'Doverlândia', 9, 'GO'),
(964, 'Edealina', 9, 'GO'),
(965, 'Edéia', 9, 'GO'),
(966, 'Estrela do Norte', 9, 'GO'),
(967, 'Faina', 9, 'GO'),
(968, 'Fazenda Nova', 9, 'GO'),
(969, 'Firminópolis', 9, 'GO'),
(970, 'Flores de Goiás', 9, 'GO'),
(971, 'Formosa', 9, 'GO'),
(972, 'Formoso', 9, 'GO'),
(973, 'Gameleira de Goiás', 9, 'GO'),
(974, 'Goianápolis', 9, 'GO'),
(975, 'Goiandira', 9, 'GO'),
(976, 'Goianésia', 9, 'GO'),
(977, 'Goiânia', 9, 'GO'),
(978, 'Goianira', 9, 'GO'),
(979, 'Goiás', 9, 'GO'),
(980, 'Goiatuba', 9, 'GO'),
(981, 'Gouvelândia', 9, 'GO'),
(982, 'Guapó', 9, 'GO'),
(983, 'Guaraíta', 9, 'GO'),
(984, 'Guarani de Goiás', 9, 'GO'),
(985, 'Guarinos', 9, 'GO'),
(986, 'Heitoraí', 9, 'GO'),
(987, 'Hidrolândia', 9, 'GO'),
(988, 'Hidrolina', 9, 'GO'),
(989, 'Iaciara', 9, 'GO'),
(990, 'Inaciolândia', 9, 'GO'),
(991, 'Indiara', 9, 'GO'),
(992, 'Inhumas', 9, 'GO'),
(993, 'Ipameri', 9, 'GO'),
(994, 'Ipiranga de Goiás', 9, 'GO'),
(995, 'Iporá', 9, 'GO'),
(996, 'Israelândia', 9, 'GO'),
(997, 'Itaberaí', 9, 'GO'),
(998, 'Itaguari', 9, 'GO'),
(999, 'Itaguaru', 9, 'GO'),
(1000, 'Itajá', 9, 'GO'),
(1001, 'Itapaci', 9, 'GO'),
(1002, 'Itapirapuã', 9, 'GO'),
(1003, 'Itapuranga', 9, 'GO'),
(1004, 'Itarumã', 9, 'GO'),
(1005, 'Itauçu', 9, 'GO'),
(1006, 'Itumbiara', 9, 'GO'),
(1007, 'Ivolândia', 9, 'GO'),
(1008, 'Jandaia', 9, 'GO'),
(1009, 'Jaraguá', 9, 'GO'),
(1010, 'Jataí', 9, 'GO'),
(1011, 'Jaupaci', 9, 'GO'),
(1012, 'Jesúpolis', 9, 'GO'),
(1013, 'Joviânia', 9, 'GO'),
(1014, 'Jussara', 9, 'GO'),
(1015, 'Lagoa Santa', 9, 'GO'),
(1016, 'Leopoldo de Bulhões', 9, 'GO'),
(1017, 'Luziânia', 9, 'GO'),
(1018, 'Mairipotaba', 9, 'GO'),
(1019, 'Mambaí', 9, 'GO'),
(1020, 'Mara Rosa', 9, 'GO'),
(1021, 'Marzagão', 9, 'GO'),
(1022, 'Matrinchã', 9, 'GO'),
(1023, 'Maurilândia', 9, 'GO'),
(1024, 'Mimoso de Goiás', 9, 'GO'),
(1025, 'Minaçu', 9, 'GO'),
(1026, 'Mineiros', 9, 'GO'),
(1027, 'Moiporá', 9, 'GO'),
(1028, 'Monte Alegre de Goiás', 9, 'GO'),
(1029, 'Montes Claros de Goiás', 9, 'GO'),
(1030, 'Montividiu', 9, 'GO'),
(1031, 'Montividiu do Norte', 9, 'GO'),
(1032, 'Morrinhos', 9, 'GO'),
(1033, 'Morro Agudo de Goiás', 9, 'GO'),
(1034, 'Mossâmedes', 9, 'GO'),
(1035, 'Mozarlândia', 9, 'GO'),
(1036, 'Mundo Novo', 9, 'GO'),
(1037, 'Mutunópolis', 9, 'GO'),
(1038, 'Nazário', 9, 'GO'),
(1039, 'Nerópolis', 9, 'GO'),
(1040, 'Niquelândia', 9, 'GO'),
(1041, 'Nova América', 9, 'GO'),
(1042, 'Nova Aurora', 9, 'GO'),
(1043, 'Nova Crixás', 9, 'GO'),
(1044, 'Nova Glória', 9, 'GO'),
(1045, 'Nova Iguaçu de Goiás', 9, 'GO'),
(1046, 'Nova Roma', 9, 'GO'),
(1047, 'Nova Veneza', 9, 'GO'),
(1048, 'Novo Brasil', 9, 'GO'),
(1049, 'Novo Gama', 9, 'GO'),
(1050, 'Novo Planalto', 9, 'GO'),
(1051, 'Orizona', 9, 'GO'),
(1052, 'Ouro Verde de Goiás', 9, 'GO'),
(1053, 'Ouvidor', 9, 'GO'),
(1054, 'Padre Bernardo', 9, 'GO'),
(1055, 'Palestina de Goiás', 9, 'GO'),
(1056, 'Palmeiras de Goiás', 9, 'GO'),
(1057, 'Palmelo', 9, 'GO'),
(1058, 'Palminópolis', 9, 'GO'),
(1059, 'Panamá', 9, 'GO'),
(1060, 'Paranaiguara', 9, 'GO'),
(1061, 'Paraúna', 9, 'GO'),
(1062, 'Perolândia', 9, 'GO'),
(1063, 'Petrolina de Goiás', 9, 'GO'),
(1064, 'Pilar de Goiás', 9, 'GO'),
(1065, 'Piracanjuba', 9, 'GO'),
(1066, 'Piranhas', 9, 'GO'),
(1067, 'Pirenópolis', 9, 'GO'),
(1068, 'Pires do Rio', 9, 'GO'),
(1069, 'Planaltina', 9, 'GO'),
(1070, 'Pontalina', 9, 'GO'),
(1071, 'Porangatu', 9, 'GO'),
(1072, 'Porteirão', 9, 'GO'),
(1073, 'Portelândia', 9, 'GO'),
(1074, 'Posse', 9, 'GO'),
(1075, 'Professor Jamil', 9, 'GO'),
(1076, 'Quirinópolis', 9, 'GO'),
(1077, 'Rialma', 9, 'GO'),
(1078, 'Rianápolis', 9, 'GO'),
(1079, 'Rio Quente', 9, 'GO'),
(1080, 'Rio Verde', 9, 'GO'),
(1081, 'Rubiataba', 9, 'GO'),
(1082, 'Sanclerlândia', 9, 'GO'),
(1083, 'Santa Bárbara de Goiás', 9, 'GO'),
(1084, 'Santa Cruz de Goiás', 9, 'GO'),
(1085, 'Santa Fé de Goiás', 9, 'GO'),
(1086, 'Santa Helena de Goiás', 9, 'GO'),
(1087, 'Santa Isabel', 9, 'GO'),
(1088, 'Santa Rita do Araguaia', 9, 'GO'),
(1089, 'Santa Rita do Novo Destino', 9, 'GO'),
(1090, 'Santa Rosa de Goiás', 9, 'GO'),
(1091, 'Santa Tereza de Goiás', 9, 'GO'),
(1092, 'Santa Terezinha de Goiás', 9, 'GO'),
(1093, 'Santo Antônio da Barra', 9, 'GO'),
(1094, 'Santo Antônio de Goiás', 9, 'GO'),
(1095, 'Santo Antônio do Descoberto', 9, 'GO'),
(1096, 'São Domingos', 9, 'GO'),
(1097, 'São Francisco de Goiás', 9, 'GO'),
(1098, 'São João d`Aliança', 9, 'GO'),
(1099, 'São João da Paraúna', 9, 'GO'),
(1100, 'São Luís de Montes Belos', 9, 'GO'),
(1101, 'São Luíz do Norte', 9, 'GO'),
(1102, 'São Miguel do Araguaia', 9, 'GO'),
(1103, 'São Miguel do Passa Quatro', 9, 'GO'),
(1104, 'São Patrício', 9, 'GO'),
(1105, 'São Simão', 9, 'GO'),
(1106, 'Senador Canedo', 9, 'GO'),
(1107, 'Serranópolis', 9, 'GO'),
(1108, 'Silvânia', 9, 'GO'),
(1109, 'Simolândia', 9, 'GO'),
(1110, 'Sítio d`Abadia', 9, 'GO'),
(1111, 'Taquaral de Goiás', 9, 'GO'),
(1112, 'Teresina de Goiás', 9, 'GO'),
(1113, 'Terezópolis de Goiás', 9, 'GO'),
(1114, 'Três Ranchos', 9, 'GO'),
(1115, 'Trindade', 9, 'GO'),
(1116, 'Trombas', 9, 'GO'),
(1117, 'Turvânia', 9, 'GO'),
(1118, 'Turvelândia', 9, 'GO'),
(1119, 'Uirapuru', 9, 'GO'),
(1120, 'Uruaçu', 9, 'GO'),
(1121, 'Uruana', 9, 'GO'),
(1122, 'Urutaí', 9, 'GO'),
(1123, 'Valparaíso de Goiás', 9, 'GO'),
(1124, 'Varjão', 9, 'GO'),
(1125, 'Vianópolis', 9, 'GO'),
(1126, 'Vicentinópolis', 9, 'GO'),
(1127, 'Vila Boa', 9, 'GO'),
(1128, 'Vila Propício', 9, 'GO'),
(1129, 'Açailândia', 10, 'MA'),
(1130, 'Afonso Cunha', 10, 'MA'),
(1131, 'Água Doce do Maranhão', 10, 'MA'),
(1132, 'Alcântara', 10, 'MA'),
(1133, 'Aldeias Altas', 10, 'MA'),
(1134, 'Altamira do Maranhão', 10, 'MA'),
(1135, 'Alto Alegre do Maranhão', 10, 'MA'),
(1136, 'Alto Alegre do Pindaré', 10, 'MA'),
(1137, 'Alto Parnaíba', 10, 'MA'),
(1138, 'Amapá do Maranhão', 10, 'MA'),
(1139, 'Amarante do Maranhão', 10, 'MA'),
(1140, 'Anajatuba', 10, 'MA'),
(1141, 'Anapurus', 10, 'MA'),
(1142, 'Apicum-Açu', 10, 'MA'),
(1143, 'Araguanã', 10, 'MA'),
(1144, 'Araioses', 10, 'MA'),
(1145, 'Arame', 10, 'MA'),
(1146, 'Arari', 10, 'MA'),
(1147, 'Axixá', 10, 'MA'),
(1148, 'Bacabal', 10, 'MA'),
(1149, 'Bacabeira', 10, 'MA'),
(1150, 'Bacuri', 10, 'MA'),
(1151, 'Bacurituba', 10, 'MA'),
(1152, 'Balsas', 10, 'MA'),
(1153, 'Barão de Grajaú', 10, 'MA'),
(1154, 'Barra do Corda', 10, 'MA'),
(1155, 'Barreirinhas', 10, 'MA'),
(1156, 'Bela Vista do Maranhão', 10, 'MA'),
(1157, 'Belágua', 10, 'MA'),
(1158, 'Benedito Leite', 10, 'MA'),
(1159, 'Bequimão', 10, 'MA'),
(1160, 'Bernardo do Mearim', 10, 'MA'),
(1161, 'Boa Vista do Gurupi', 10, 'MA'),
(1162, 'Bom Jardim', 10, 'MA'),
(1163, 'Bom Jesus das Selvas', 10, 'MA'),
(1164, 'Bom Lugar', 10, 'MA'),
(1165, 'Brejo', 10, 'MA'),
(1166, 'Brejo de Areia', 10, 'MA'),
(1167, 'Buriti', 10, 'MA'),
(1168, 'Buriti Bravo', 10, 'MA'),
(1169, 'Buriticupu', 10, 'MA'),
(1170, 'Buritirana', 10, 'MA'),
(1171, 'Cachoeira Grande', 10, 'MA'),
(1172, 'Cajapió', 10, 'MA'),
(1173, 'Cajari', 10, 'MA'),
(1174, 'Campestre do Maranhão', 10, 'MA'),
(1175, 'Cândido Mendes', 10, 'MA'),
(1176, 'Cantanhede', 10, 'MA'),
(1177, 'Capinzal do Norte', 10, 'MA'),
(1178, 'Carolina', 10, 'MA'),
(1179, 'Carutapera', 10, 'MA'),
(1180, 'Caxias', 10, 'MA'),
(1181, 'Cedral', 10, 'MA'),
(1182, 'Central do Maranhão', 10, 'MA'),
(1183, 'Centro do Guilherme', 10, 'MA'),
(1184, 'Centro Novo do Maranhão', 10, 'MA'),
(1185, 'Chapadinha', 10, 'MA'),
(1186, 'Cidelândia', 10, 'MA'),
(1187, 'Codó', 10, 'MA'),
(1188, 'Coelho Neto', 10, 'MA'),
(1189, 'Colinas', 10, 'MA'),
(1190, 'Conceição do Lago-Açu', 10, 'MA'),
(1191, 'Coroatá', 10, 'MA'),
(1192, 'Cururupu', 10, 'MA'),
(1193, 'Davinópolis', 10, 'MA'),
(1194, 'Dom Pedro', 10, 'MA'),
(1195, 'Duque Bacelar', 10, 'MA'),
(1196, 'Esperantinópolis', 10, 'MA'),
(1197, 'Estreito', 10, 'MA'),
(1198, 'Feira Nova do Maranhão', 10, 'MA'),
(1199, 'Fernando Falcão', 10, 'MA'),
(1200, 'Formosa da Serra Negra', 10, 'MA'),
(1201, 'Fortaleza dos Nogueiras', 10, 'MA'),
(1202, 'Fortuna', 10, 'MA'),
(1203, 'Godofredo Viana', 10, 'MA'),
(1204, 'Gonçalves Dias', 10, 'MA'),
(1205, 'Governador Archer', 10, 'MA'),
(1206, 'Governador Edison Lobão', 10, 'MA'),
(1207, 'Governador Eugênio Barros', 10, 'MA'),
(1208, 'Governador Luiz Rocha', 10, 'MA'),
(1209, 'Governador Newton Bello', 10, 'MA'),
(1210, 'Governador Nunes Freire', 10, 'MA'),
(1211, 'Graça Aranha', 10, 'MA'),
(1212, 'Grajaú', 10, 'MA'),
(1213, 'Guimarães', 10, 'MA'),
(1214, 'Humberto de Campos', 10, 'MA'),
(1215, 'Icatu', 10, 'MA'),
(1216, 'Igarapé do Meio', 10, 'MA'),
(1217, 'Igarapé Grande', 10, 'MA'),
(1218, 'Imperatriz', 10, 'MA'),
(1219, 'Itaipava do Grajaú', 10, 'MA'),
(1220, 'Itapecuru Mirim', 10, 'MA'),
(1221, 'Itinga do Maranhão', 10, 'MA'),
(1222, 'Jatobá', 10, 'MA'),
(1223, 'Jenipapo dos Vieiras', 10, 'MA'),
(1224, 'João Lisboa', 10, 'MA'),
(1225, 'Joselândia', 10, 'MA'),
(1226, 'Junco do Maranhão', 10, 'MA'),
(1227, 'Lago da Pedra', 10, 'MA'),
(1228, 'Lago do Junco', 10, 'MA'),
(1229, 'Lago dos Rodrigues', 10, 'MA'),
(1230, 'Lago Verde', 10, 'MA'),
(1231, 'Lagoa do Mato', 10, 'MA'),
(1232, 'Lagoa Grande do Maranhão', 10, 'MA'),
(1233, 'Lajeado Novo', 10, 'MA'),
(1234, 'Lima Campos', 10, 'MA'),
(1235, 'Loreto', 10, 'MA'),
(1236, 'Luís Domingues', 10, 'MA'),
(1237, 'Magalhães de Almeida', 10, 'MA'),
(1238, 'Maracaçumé', 10, 'MA'),
(1239, 'Marajá do Sena', 10, 'MA'),
(1240, 'Maranhãozinho', 10, 'MA'),
(1241, 'Mata Roma', 10, 'MA'),
(1242, 'Matinha', 10, 'MA'),
(1243, 'Matões', 10, 'MA'),
(1244, 'Matões do Norte', 10, 'MA'),
(1245, 'Milagres do Maranhão', 10, 'MA'),
(1246, 'Mirador', 10, 'MA'),
(1247, 'Miranda do Norte', 10, 'MA'),
(1248, 'Mirinzal', 10, 'MA'),
(1249, 'Monção', 10, 'MA'),
(1250, 'Montes Altos', 10, 'MA'),
(1251, 'Morros', 10, 'MA'),
(1252, 'Nina Rodrigues', 10, 'MA'),
(1253, 'Nova Colinas', 10, 'MA'),
(1254, 'Nova Iorque', 10, 'MA'),
(1255, 'Nova Olinda do Maranhão', 10, 'MA'),
(1256, 'Olho d`Água das Cunhãs', 10, 'MA'),
(1257, 'Olinda Nova do Maranhão', 10, 'MA'),
(1258, 'Paço do Lumiar', 10, 'MA'),
(1259, 'Palmeirândia', 10, 'MA'),
(1260, 'Paraibano', 10, 'MA'),
(1261, 'Parnarama', 10, 'MA'),
(1262, 'Passagem Franca', 10, 'MA'),
(1263, 'Pastos Bons', 10, 'MA'),
(1264, 'Paulino Neves', 10, 'MA'),
(1265, 'Paulo Ramos', 10, 'MA'),
(1266, 'Pedreiras', 10, 'MA'),
(1267, 'Pedro do Rosário', 10, 'MA'),
(1268, 'Penalva', 10, 'MA'),
(1269, 'Peri Mirim', 10, 'MA'),
(1270, 'Peritoró', 10, 'MA'),
(1271, 'Pindaré-Mirim', 10, 'MA'),
(1272, 'Pinheiro', 10, 'MA'),
(1273, 'Pio XII', 10, 'MA'),
(1274, 'Pirapemas', 10, 'MA'),
(1275, 'Poção de Pedras', 10, 'MA'),
(1276, 'Porto Franco', 10, 'MA'),
(1277, 'Porto Rico do Maranhão', 10, 'MA'),
(1278, 'Presidente Dutra', 10, 'MA'),
(1279, 'Presidente Juscelino', 10, 'MA'),
(1280, 'Presidente Médici', 10, 'MA'),
(1281, 'Presidente Sarney', 10, 'MA'),
(1282, 'Presidente Vargas', 10, 'MA'),
(1283, 'Primeira Cruz', 10, 'MA'),
(1284, 'Raposa', 10, 'MA'),
(1285, 'Riachão', 10, 'MA'),
(1286, 'Ribamar Fiquene', 10, 'MA'),
(1287, 'Rosário', 10, 'MA'),
(1288, 'Sambaíba', 10, 'MA'),
(1289, 'Santa Filomena do Maranhão', 10, 'MA'),
(1290, 'Santa Helena', 10, 'MA'),
(1291, 'Santa Inês', 10, 'MA'),
(1292, 'Santa Luzia', 10, 'MA'),
(1293, 'Santa Luzia do Paruá', 10, 'MA'),
(1294, 'Santa Quitéria do Maranhão', 10, 'MA'),
(1295, 'Santa Rita', 10, 'MA'),
(1296, 'Santana do Maranhão', 10, 'MA'),
(1297, 'Santo Amaro do Maranhão', 10, 'MA'),
(1298, 'Santo Antônio dos Lopes', 10, 'MA'),
(1299, 'São Benedito do Rio Preto', 10, 'MA'),
(1300, 'São Bento', 10, 'MA'),
(1301, 'São Bernardo', 10, 'MA'),
(1302, 'São Domingos do Azeitão', 10, 'MA'),
(1303, 'São Domingos do Maranhão', 10, 'MA'),
(1304, 'São Félix de Balsas', 10, 'MA'),
(1305, 'São Francisco do Brejão', 10, 'MA'),
(1306, 'São Francisco do Maranhão', 10, 'MA'),
(1307, 'São João Batista', 10, 'MA'),
(1308, 'São João do Carú', 10, 'MA'),
(1309, 'São João do Paraíso', 10, 'MA'),
(1310, 'São João do Soter', 10, 'MA'),
(1311, 'São João dos Patos', 10, 'MA'),
(1312, 'São José de Ribamar', 10, 'MA'),
(1313, 'São José dos Basílios', 10, 'MA'),
(1314, 'São Luís', 10, 'MA'),
(1315, 'São Luís Gonzaga do Maranhão', 10, 'MA'),
(1316, 'São Mateus do Maranhão', 10, 'MA'),
(1317, 'São Pedro da Água Branca', 10, 'MA'),
(1318, 'São Pedro dos Crentes', 10, 'MA'),
(1319, 'São Raimundo das Mangabeiras', 10, 'MA'),
(1320, 'São Raimundo do Doca Bezerra', 10, 'MA'),
(1321, 'São Roberto', 10, 'MA'),
(1322, 'São Vicente Ferrer', 10, 'MA'),
(1323, 'Satubinha', 10, 'MA'),
(1324, 'Senador Alexandre Costa', 10, 'MA'),
(1325, 'Senador La Rocque', 10, 'MA'),
(1326, 'Serrano do Maranhão', 10, 'MA'),
(1327, 'Sítio Novo', 10, 'MA'),
(1328, 'Sucupira do Norte', 10, 'MA'),
(1329, 'Sucupira do Riachão', 10, 'MA'),
(1330, 'Tasso Fragoso', 10, 'MA'),
(1331, 'Timbiras', 10, 'MA'),
(1332, 'Timon', 10, 'MA'),
(1333, 'Trizidela do Vale', 10, 'MA'),
(1334, 'Tufilândia', 10, 'MA'),
(1335, 'Tuntum', 10, 'MA'),
(1336, 'Turiaçu', 10, 'MA'),
(1337, 'Turilândia', 10, 'MA'),
(1338, 'Tutóia', 10, 'MA'),
(1339, 'Urbano Santos', 10, 'MA'),
(1340, 'Vargem Grande', 10, 'MA'),
(1341, 'Viana', 10, 'MA'),
(1342, 'Vila Nova dos Martírios', 10, 'MA'),
(1343, 'Vitória do Mearim', 10, 'MA'),
(1344, 'Vitorino Freire', 10, 'MA'),
(1345, 'Zé Doca', 10, 'MA'),
(1346, 'Acorizal', 13, 'MT'),
(1347, 'Água Boa', 13, 'MT'),
(1348, 'Alta Floresta', 13, 'MT'),
(1349, 'Alto Araguaia', 13, 'MT'),
(1350, 'Alto Boa Vista', 13, 'MT'),
(1351, 'Alto Garças', 13, 'MT'),
(1352, 'Alto Paraguai', 13, 'MT'),
(1353, 'Alto Taquari', 13, 'MT'),
(1354, 'Apiacás', 13, 'MT'),
(1355, 'Araguaiana', 13, 'MT'),
(1356, 'Araguainha', 13, 'MT'),
(1357, 'Araputanga', 13, 'MT'),
(1358, 'Arenápolis', 13, 'MT'),
(1359, 'Aripuanã', 13, 'MT'),
(1360, 'Barão de Melgaço', 13, 'MT'),
(1361, 'Barra do Bugres', 13, 'MT'),
(1362, 'Barra do Garças', 13, 'MT'),
(1363, 'Bom Jesus do Araguaia', 13, 'MT'),
(1364, 'Brasnorte', 13, 'MT'),
(1365, 'Cáceres', 13, 'MT'),
(1366, 'Campinápolis', 13, 'MT'),
(1367, 'Campo Novo do Parecis', 13, 'MT'),
(1368, 'Campo Verde', 13, 'MT'),
(1369, 'Campos de Júlio', 13, 'MT'),
(1370, 'Canabrava do Norte', 13, 'MT'),
(1371, 'Canarana', 13, 'MT'),
(1372, 'Carlinda', 13, 'MT'),
(1373, 'Castanheira', 13, 'MT'),
(1374, 'Chapada dos Guimarães', 13, 'MT'),
(1375, 'Cláudia', 13, 'MT'),
(1376, 'Cocalinho', 13, 'MT'),
(1377, 'Colíder', 13, 'MT'),
(1378, 'Colniza', 13, 'MT'),
(1379, 'Comodoro', 13, 'MT'),
(1380, 'Confresa', 13, 'MT'),
(1381, 'Conquista d`Oeste', 13, 'MT'),
(1382, 'Cotriguaçu', 13, 'MT'),
(1383, 'Cuiabá', 13, 'MT'),
(1384, 'Curvelândia', 13, 'MT'),
(1385, 'Curvelândia', 13, 'MT'),
(1386, 'Denise', 13, 'MT'),
(1387, 'Diamantino', 13, 'MT'),
(1388, 'Dom Aquino', 13, 'MT'),
(1389, 'Feliz Natal', 13, 'MT'),
(1390, 'Figueirópolis d`Oeste', 13, 'MT'),
(1391, 'Gaúcha do Norte', 13, 'MT'),
(1392, 'General Carneiro', 13, 'MT'),
(1393, 'Glória d`Oeste', 13, 'MT'),
(1394, 'Guarantã do Norte', 13, 'MT'),
(1395, 'Guiratinga', 13, 'MT'),
(1396, 'Indiavaí', 13, 'MT'),
(1397, 'Ipiranga do Norte', 13, 'MT'),
(1398, 'Itanhangá', 13, 'MT'),
(1399, 'Itaúba', 13, 'MT'),
(1400, 'Itiquira', 13, 'MT'),
(1401, 'Jaciara', 13, 'MT'),
(1402, 'Jangada', 13, 'MT'),
(1403, 'Jauru', 13, 'MT'),
(1404, 'Juara', 13, 'MT'),
(1405, 'Juína', 13, 'MT'),
(1406, 'Juruena', 13, 'MT'),
(1407, 'Juscimeira', 13, 'MT'),
(1408, 'Lambari d`Oeste', 13, 'MT'),
(1409, 'Lucas do Rio Verde', 13, 'MT'),
(1410, 'Luciára', 13, 'MT'),
(1411, 'Marcelândia', 13, 'MT'),
(1412, 'Matupá', 13, 'MT'),
(1413, 'Mirassol d`Oeste', 13, 'MT'),
(1414, 'Nobres', 13, 'MT'),
(1415, 'Nortelândia', 13, 'MT'),
(1416, 'Nossa Senhora do Livramento', 13, 'MT'),
(1417, 'Nova Bandeirantes', 13, 'MT'),
(1418, 'Nova Brasilândia', 13, 'MT'),
(1419, 'Nova Canaã do Norte', 13, 'MT'),
(1420, 'Nova Guarita', 13, 'MT'),
(1421, 'Nova Lacerda', 13, 'MT'),
(1422, 'Nova Marilândia', 13, 'MT'),
(1423, 'Nova Maringá', 13, 'MT'),
(1424, 'Nova Monte verde', 13, 'MT'),
(1425, 'Nova Mutum', 13, 'MT'),
(1426, 'Nova Olímpia', 13, 'MT'),
(1427, 'Nova Santa Helena', 13, 'MT'),
(1428, 'Nova Ubiratã', 13, 'MT'),
(1429, 'Nova Xavantina', 13, 'MT'),
(1430, 'Novo Horizonte do Norte', 13, 'MT'),
(1431, 'Novo Mundo', 13, 'MT'),
(1432, 'Novo Santo Antônio', 13, 'MT'),
(1433, 'Novo São Joaquim', 13, 'MT'),
(1434, 'Paranaíta', 13, 'MT'),
(1435, 'Paranatinga', 13, 'MT'),
(1436, 'Pedra Preta', 13, 'MT'),
(1437, 'Peixoto de Azevedo', 13, 'MT'),
(1438, 'Planalto da Serra', 13, 'MT'),
(1439, 'Poconé', 13, 'MT'),
(1440, 'Pontal do Araguaia', 13, 'MT'),
(1441, 'Ponte Branca', 13, 'MT'),
(1442, 'Pontes e Lacerda', 13, 'MT'),
(1443, 'Porto Alegre do Norte', 13, 'MT'),
(1444, 'Porto dos Gaúchos', 13, 'MT'),
(1445, 'Porto Esperidião', 13, 'MT'),
(1446, 'Porto Estrela', 13, 'MT'),
(1447, 'Poxoréo', 13, 'MT'),
(1448, 'Primavera do Leste', 13, 'MT'),
(1449, 'Querência', 13, 'MT'),
(1450, 'Reserva do Cabaçal', 13, 'MT'),
(1451, 'Ribeirão Cascalheira', 13, 'MT'),
(1452, 'Ribeirãozinho', 13, 'MT'),
(1453, 'Rio Branco', 13, 'MT'),
(1454, 'Rondolândia', 13, 'MT'),
(1455, 'Rondonópolis', 13, 'MT'),
(1456, 'Rosário Oeste', 13, 'MT'),
(1457, 'Salto do Céu', 13, 'MT'),
(1458, 'Santa Carmem', 13, 'MT'),
(1459, 'Santa Cruz do Xingu', 13, 'MT'),
(1460, 'Santa Rita do Trivelato', 13, 'MT'),
(1461, 'Santa Terezinha', 13, 'MT'),
(1462, 'Santo Afonso', 13, 'MT'),
(1463, 'Santo Antônio do Leste', 13, 'MT'),
(1464, 'Santo Antônio do Leverger', 13, 'MT'),
(1465, 'São Félix do Araguaia', 13, 'MT'),
(1466, 'São José do Povo', 13, 'MT'),
(1467, 'São José do Rio Claro', 13, 'MT'),
(1468, 'São José do Xingu', 13, 'MT'),
(1469, 'São José dos Quatro Marcos', 13, 'MT'),
(1470, 'São Pedro da Cipa', 13, 'MT'),
(1471, 'Sapezal', 13, 'MT'),
(1472, 'Serra Nova Dourada', 13, 'MT'),
(1473, 'Sinop', 13, 'MT'),
(1474, 'Sorriso', 13, 'MT'),
(1475, 'Tabaporã', 13, 'MT'),
(1476, 'Tangará da Serra', 13, 'MT'),
(1477, 'Tapurah', 13, 'MT'),
(1478, 'Terra Nova do Norte', 13, 'MT'),
(1479, 'Tesouro', 13, 'MT'),
(1480, 'Torixoréu', 13, 'MT'),
(1481, 'União do Sul', 13, 'MT'),
(1482, 'Vale de São Domingos', 13, 'MT'),
(1483, 'Várzea Grande', 13, 'MT'),
(1484, 'Vera', 13, 'MT'),
(1485, 'Vila Bela da Santíssima Trindade', 13, 'MT'),
(1486, 'Vila Rica', 13, 'MT'),
(1487, 'Água Clara', 12, 'MS'),
(1488, 'Alcinópolis', 12, 'MS'),
(1489, 'Amambaí', 12, 'MS'),
(1490, 'Anastácio', 12, 'MS'),
(1491, 'Anaurilândia', 12, 'MS'),
(1492, 'Angélica', 12, 'MS'),
(1493, 'Antônio João', 12, 'MS'),
(1494, 'Aparecida do Taboado', 12, 'MS'),
(1495, 'Aquidauana', 12, 'MS'),
(1496, 'Aral Moreira', 12, 'MS'),
(1497, 'Bandeirantes', 12, 'MS'),
(1498, 'Bataguassu', 12, 'MS'),
(1499, 'Bataiporã', 12, 'MS'),
(1500, 'Bela Vista', 12, 'MS'),
(1501, 'Bodoquena', 12, 'MS'),
(1502, 'Bonito', 12, 'MS'),
(1503, 'Brasilândia', 12, 'MS'),
(1504, 'Caarapó', 12, 'MS'),
(1505, 'Camapuã', 12, 'MS'),
(1506, 'Campo Grande', 12, 'MS'),
(1507, 'Caracol', 12, 'MS'),
(1508, 'Cassilândia', 12, 'MS'),
(1509, 'Chapadão do Sul', 12, 'MS'),
(1510, 'Corguinho', 12, 'MS'),
(1511, 'Coronel Sapucaia', 12, 'MS'),
(1512, 'Corumbá', 12, 'MS'),
(1513, 'Costa Rica', 12, 'MS'),
(1514, 'Coxim', 12, 'MS'),
(1515, 'Deodápolis', 12, 'MS'),
(1516, 'Dois Irmãos do Buriti', 12, 'MS'),
(1517, 'Douradina', 12, 'MS'),
(1518, 'Dourados', 12, 'MS'),
(1519, 'Eldorado', 12, 'MS'),
(1520, 'Fátima do Sul', 12, 'MS'),
(1521, 'Figueirão', 12, 'MS'),
(1522, 'Glória de Dourados', 12, 'MS'),
(1523, 'Guia Lopes da Laguna', 12, 'MS'),
(1524, 'Iguatemi', 12, 'MS'),
(1525, 'Inocência', 12, 'MS'),
(1526, 'Itaporã', 12, 'MS'),
(1527, 'Itaquiraí', 12, 'MS'),
(1528, 'Ivinhema', 12, 'MS'),
(1529, 'Japorã', 12, 'MS'),
(1530, 'Jaraguari', 12, 'MS'),
(1531, 'Jardim', 12, 'MS'),
(1532, 'Jateí', 12, 'MS'),
(1533, 'Juti', 12, 'MS'),
(1534, 'Ladário', 12, 'MS'),
(1535, 'Laguna Carapã', 12, 'MS'),
(1536, 'Maracaju', 12, 'MS'),
(1537, 'Miranda', 12, 'MS'),
(1538, 'Mundo Novo', 12, 'MS'),
(1539, 'Naviraí', 12, 'MS'),
(1540, 'Nioaque', 12, 'MS'),
(1541, 'Nova Alvorada do Sul', 12, 'MS'),
(1542, 'Nova Andradina', 12, 'MS'),
(1543, 'Novo Horizonte do Sul', 12, 'MS'),
(1544, 'Paranaíba', 12, 'MS'),
(1545, 'Paranhos', 12, 'MS'),
(1546, 'Pedro Gomes', 12, 'MS'),
(1547, 'Ponta Porã', 12, 'MS'),
(1548, 'Porto Murtinho', 12, 'MS'),
(1549, 'Ribas do Rio Pardo', 12, 'MS'),
(1550, 'Rio Brilhante', 12, 'MS'),
(1551, 'Rio Negro', 12, 'MS'),
(1552, 'Rio Verde de Mato Grosso', 12, 'MS'),
(1553, 'Rochedo', 12, 'MS'),
(1554, 'Santa Rita do Pardo', 12, 'MS'),
(1555, 'São Gabriel do Oeste', 12, 'MS'),
(1556, 'Selvíria', 12, 'MS'),
(1557, 'Sete Quedas', 12, 'MS'),
(1558, 'Sidrolândia', 12, 'MS'),
(1559, 'Sonora', 12, 'MS'),
(1560, 'Tacuru', 12, 'MS'),
(1561, 'Taquarussu', 12, 'MS'),
(1562, 'Terenos', 12, 'MS'),
(1563, 'Três Lagoas', 12, 'MS'),
(1564, 'Vicentina', 12, 'MS'),
(1565, 'Abadia dos Dourados', 11, 'MG'),
(1566, 'Abaeté', 11, 'MG'),
(1567, 'Abre Campo', 11, 'MG'),
(1568, 'Acaiaca', 11, 'MG'),
(1569, 'Açucena', 11, 'MG'),
(1570, 'Água Boa', 11, 'MG'),
(1571, 'Água Comprida', 11, 'MG'),
(1572, 'Aguanil', 11, 'MG'),
(1573, 'Águas Formosas', 11, 'MG'),
(1574, 'Águas Vermelhas', 11, 'MG'),
(1575, 'Aimorés', 11, 'MG'),
(1576, 'Aiuruoca', 11, 'MG'),
(1577, 'Alagoa', 11, 'MG'),
(1578, 'Albertina', 11, 'MG'),
(1579, 'Além Paraíba', 11, 'MG'),
(1580, 'Alfenas', 11, 'MG'),
(1581, 'Alfredo Vasconcelos', 11, 'MG'),
(1582, 'Almenara', 11, 'MG'),
(1583, 'Alpercata', 11, 'MG'),
(1584, 'Alpinópolis', 11, 'MG'),
(1585, 'Alterosa', 11, 'MG'),
(1586, 'Alto Caparaó', 11, 'MG'),
(1587, 'Alto Jequitibá', 11, 'MG'),
(1588, 'Alto Rio Doce', 11, 'MG'),
(1589, 'Alvarenga', 11, 'MG'),
(1590, 'Alvinópolis', 11, 'MG'),
(1591, 'Alvorada de Minas', 11, 'MG'),
(1592, 'Amparo do Serra', 11, 'MG'),
(1593, 'Andradas', 11, 'MG'),
(1594, 'Andrelândia', 11, 'MG'),
(1595, 'Angelândia', 11, 'MG'),
(1596, 'Antônio Carlos', 11, 'MG'),
(1597, 'Antônio Dias', 11, 'MG'),
(1598, 'Antônio Prado de Minas', 11, 'MG'),
(1599, 'Araçaí', 11, 'MG'),
(1600, 'Aracitaba', 11, 'MG'),
(1601, 'Araçuaí', 11, 'MG'),
(1602, 'Araguari', 11, 'MG'),
(1603, 'Arantina', 11, 'MG'),
(1604, 'Araponga', 11, 'MG'),
(1605, 'Araporã', 11, 'MG'),
(1606, 'Arapuá', 11, 'MG'),
(1607, 'Araújos', 11, 'MG'),
(1608, 'Araxá', 11, 'MG'),
(1609, 'Arceburgo', 11, 'MG'),
(1610, 'Arcos', 11, 'MG'),
(1611, 'Areado', 11, 'MG'),
(1612, 'Argirita', 11, 'MG'),
(1613, 'Aricanduva', 11, 'MG'),
(1614, 'Arinos', 11, 'MG'),
(1615, 'Astolfo Dutra', 11, 'MG'),
(1616, 'Ataléia', 11, 'MG'),
(1617, 'Augusto de Lima', 11, 'MG'),
(1618, 'Baependi', 11, 'MG'),
(1619, 'Baldim', 11, 'MG'),
(1620, 'Bambuí', 11, 'MG'),
(1621, 'Bandeira', 11, 'MG'),
(1622, 'Bandeira do Sul', 11, 'MG'),
(1623, 'Barão de Cocais', 11, 'MG'),
(1624, 'Barão de Monte Alto', 11, 'MG'),
(1625, 'Barbacena', 11, 'MG'),
(1626, 'Barra Longa', 11, 'MG'),
(1627, 'Barroso', 11, 'MG'),
(1628, 'Bela Vista de Minas', 11, 'MG'),
(1629, 'Belmiro Braga', 11, 'MG'),
(1630, 'Belo Horizonte', 11, 'MG'),
(1631, 'Belo Oriente', 11, 'MG'),
(1632, 'Belo Vale', 11, 'MG'),
(1633, 'Berilo', 11, 'MG'),
(1634, 'Berizal', 11, 'MG'),
(1635, 'Bertópolis', 11, 'MG'),
(1636, 'Betim', 11, 'MG'),
(1637, 'Bias Fortes', 11, 'MG'),
(1638, 'Bicas', 11, 'MG'),
(1639, 'Biquinhas', 11, 'MG'),
(1640, 'Boa Esperança', 11, 'MG'),
(1641, 'Bocaina de Minas', 11, 'MG'),
(1642, 'Bocaiúva', 11, 'MG'),
(1643, 'Bom Despacho', 11, 'MG'),
(1644, 'Bom Jardim de Minas', 11, 'MG'),
(1645, 'Bom Jesus da Penha', 11, 'MG'),
(1646, 'Bom Jesus do Amparo', 11, 'MG'),
(1647, 'Bom Jesus do Galho', 11, 'MG'),
(1648, 'Bom Repouso', 11, 'MG'),
(1649, 'Bom Sucesso', 11, 'MG'),
(1650, 'Bonfim', 11, 'MG'),
(1651, 'Bonfinópolis de Minas', 11, 'MG'),
(1652, 'Bonito de Minas', 11, 'MG'),
(1653, 'Borda da Mata', 11, 'MG'),
(1654, 'Botelhos', 11, 'MG'),
(1655, 'Botumirim', 11, 'MG'),
(1656, 'Brás Pires', 11, 'MG'),
(1657, 'Brasilândia de Minas', 11, 'MG'),
(1658, 'Brasília de Minas', 11, 'MG'),
(1659, 'Brasópolis', 11, 'MG'),
(1660, 'Braúnas', 11, 'MG'),
(1661, 'Brumadinho', 11, 'MG'),
(1662, 'Bueno Brandão', 11, 'MG'),
(1663, 'Buenópolis', 11, 'MG'),
(1664, 'Bugre', 11, 'MG'),
(1665, 'Buritis', 11, 'MG'),
(1666, 'Buritizeiro', 11, 'MG');
INSERT INTO `cidade` (`id`, `nome`, `estado`, `uf`) VALUES
(1667, 'Cabeceira Grande', 11, 'MG'),
(1668, 'Cabo Verde', 11, 'MG'),
(1669, 'Cachoeira da Prata', 11, 'MG'),
(1670, 'Cachoeira de Minas', 11, 'MG'),
(1671, 'Cachoeira de Pajeú', 11, 'MG'),
(1672, 'Cachoeira Dourada', 11, 'MG'),
(1673, 'Caetanópolis', 11, 'MG'),
(1674, 'Caeté', 11, 'MG'),
(1675, 'Caiana', 11, 'MG'),
(1676, 'Cajuri', 11, 'MG'),
(1677, 'Caldas', 11, 'MG'),
(1678, 'Camacho', 11, 'MG'),
(1679, 'Camanducaia', 11, 'MG'),
(1680, 'Cambuí', 11, 'MG'),
(1681, 'Cambuquira', 11, 'MG'),
(1682, 'Campanário', 11, 'MG'),
(1683, 'Campanha', 11, 'MG'),
(1684, 'Campestre', 11, 'MG'),
(1685, 'Campina Verde', 11, 'MG'),
(1686, 'Campo Azul', 11, 'MG'),
(1687, 'Campo Belo', 11, 'MG'),
(1688, 'Campo do Meio', 11, 'MG'),
(1689, 'Campo Florido', 11, 'MG'),
(1690, 'Campos Altos', 11, 'MG'),
(1691, 'Campos Gerais', 11, 'MG'),
(1692, 'Cana Verde', 11, 'MG'),
(1693, 'Canaã', 11, 'MG'),
(1694, 'Canápolis', 11, 'MG'),
(1695, 'Candeias', 11, 'MG'),
(1696, 'Cantagalo', 11, 'MG'),
(1697, 'Caparaó', 11, 'MG'),
(1698, 'Capela Nova', 11, 'MG'),
(1699, 'Capelinha', 11, 'MG'),
(1700, 'Capetinga', 11, 'MG'),
(1701, 'Capim Branco', 11, 'MG'),
(1702, 'Capinópolis', 11, 'MG'),
(1703, 'Capitão Andrade', 11, 'MG'),
(1704, 'Capitão Enéas', 11, 'MG'),
(1705, 'Capitólio', 11, 'MG'),
(1706, 'Caputira', 11, 'MG'),
(1707, 'Caraí', 11, 'MG'),
(1708, 'Caranaíba', 11, 'MG'),
(1709, 'Carandaí', 11, 'MG'),
(1710, 'Carangola', 11, 'MG'),
(1711, 'Caratinga', 11, 'MG'),
(1712, 'Carbonita', 11, 'MG'),
(1713, 'Careaçu', 11, 'MG'),
(1714, 'Carlos Chagas', 11, 'MG'),
(1715, 'Carmésia', 11, 'MG'),
(1716, 'Carmo da Cachoeira', 11, 'MG'),
(1717, 'Carmo da Mata', 11, 'MG'),
(1718, 'Carmo de Minas', 11, 'MG'),
(1719, 'Carmo do Cajuru', 11, 'MG'),
(1720, 'Carmo do Paranaíba', 11, 'MG'),
(1721, 'Carmo do Rio Claro', 11, 'MG'),
(1722, 'Carmópolis de Minas', 11, 'MG'),
(1723, 'Carneirinho', 11, 'MG'),
(1724, 'Carrancas', 11, 'MG'),
(1725, 'Carvalhópolis', 11, 'MG'),
(1726, 'Carvalhos', 11, 'MG'),
(1727, 'Casa Grande', 11, 'MG'),
(1728, 'Cascalho Rico', 11, 'MG'),
(1729, 'Cássia', 11, 'MG'),
(1730, 'Cataguases', 11, 'MG'),
(1731, 'Catas Altas', 11, 'MG'),
(1732, 'Catas Altas da Noruega', 11, 'MG'),
(1733, 'Catuji', 11, 'MG'),
(1734, 'Catuti', 11, 'MG'),
(1735, 'Caxambu', 11, 'MG'),
(1736, 'Cedro do Abaeté', 11, 'MG'),
(1737, 'Central de Minas', 11, 'MG'),
(1738, 'Centralina', 11, 'MG'),
(1739, 'Chácara', 11, 'MG'),
(1740, 'Chalé', 11, 'MG'),
(1741, 'Chapada do Norte', 11, 'MG'),
(1742, 'Chapada Gaúcha', 11, 'MG'),
(1743, 'Chiador', 11, 'MG'),
(1744, 'Cipotânea', 11, 'MG'),
(1745, 'Claraval', 11, 'MG'),
(1746, 'Claro dos Poções', 11, 'MG'),
(1747, 'Cláudio', 11, 'MG'),
(1748, 'Coimbra', 11, 'MG'),
(1749, 'Coluna', 11, 'MG'),
(1750, 'Comendador Gomes', 11, 'MG'),
(1751, 'Comercinho', 11, 'MG'),
(1752, 'Conceição da Aparecida', 11, 'MG'),
(1753, 'Conceição da Barra de Minas', 11, 'MG'),
(1754, 'Conceição das Alagoas', 11, 'MG'),
(1755, 'Conceição das Pedras', 11, 'MG'),
(1756, 'Conceição de Ipanema', 11, 'MG'),
(1757, 'Conceição do Mato Dentro', 11, 'MG'),
(1758, 'Conceição do Pará', 11, 'MG'),
(1759, 'Conceição do Rio Verde', 11, 'MG'),
(1760, 'Conceição dos Ouros', 11, 'MG'),
(1761, 'Cônego Marinho', 11, 'MG'),
(1762, 'Confins', 11, 'MG'),
(1763, 'Congonhal', 11, 'MG'),
(1764, 'Congonhas', 11, 'MG'),
(1765, 'Congonhas do Norte', 11, 'MG'),
(1766, 'Conquista', 11, 'MG'),
(1767, 'Conselheiro Lafaiete', 11, 'MG'),
(1768, 'Conselheiro Pena', 11, 'MG'),
(1769, 'Consolação', 11, 'MG'),
(1770, 'Contagem', 11, 'MG'),
(1771, 'Coqueiral', 11, 'MG'),
(1772, 'Coração de Jesus', 11, 'MG'),
(1773, 'Cordisburgo', 11, 'MG'),
(1774, 'Cordislândia', 11, 'MG'),
(1775, 'Corinto', 11, 'MG'),
(1776, 'Coroaci', 11, 'MG'),
(1777, 'Coromandel', 11, 'MG'),
(1778, 'Coronel Fabriciano', 11, 'MG'),
(1779, 'Coronel Murta', 11, 'MG'),
(1780, 'Coronel Pacheco', 11, 'MG'),
(1781, 'Coronel Xavier Chaves', 11, 'MG'),
(1782, 'Córrego Danta', 11, 'MG'),
(1783, 'Córrego do Bom Jesus', 11, 'MG'),
(1784, 'Córrego Fundo', 11, 'MG'),
(1785, 'Córrego Novo', 11, 'MG'),
(1786, 'Couto de Magalhães de Minas', 11, 'MG'),
(1787, 'Crisólita', 11, 'MG'),
(1788, 'Cristais', 11, 'MG'),
(1789, 'Cristália', 11, 'MG'),
(1790, 'Cristiano Otoni', 11, 'MG'),
(1791, 'Cristina', 11, 'MG'),
(1792, 'Crucilândia', 11, 'MG'),
(1793, 'Cruzeiro da Fortaleza', 11, 'MG'),
(1794, 'Cruzília', 11, 'MG'),
(1795, 'Cuparaque', 11, 'MG'),
(1796, 'Curral de Dentro', 11, 'MG'),
(1797, 'Curvelo', 11, 'MG'),
(1798, 'Datas', 11, 'MG'),
(1799, 'Delfim Moreira', 11, 'MG'),
(1800, 'Delfinópolis', 11, 'MG'),
(1801, 'Delta', 11, 'MG'),
(1802, 'Descoberto', 11, 'MG'),
(1803, 'Desterro de Entre Rios', 11, 'MG'),
(1804, 'Desterro do Melo', 11, 'MG'),
(1805, 'Diamantina', 11, 'MG'),
(1806, 'Diogo de Vasconcelos', 11, 'MG'),
(1807, 'Dionísio', 11, 'MG'),
(1808, 'Divinésia', 11, 'MG'),
(1809, 'Divino', 11, 'MG'),
(1810, 'Divino das Laranjeiras', 11, 'MG'),
(1811, 'Divinolândia de Minas', 11, 'MG'),
(1812, 'Divinópolis', 11, 'MG'),
(1813, 'Divisa Alegre', 11, 'MG'),
(1814, 'Divisa Nova', 11, 'MG'),
(1815, 'Divisópolis', 11, 'MG'),
(1816, 'Dom Bosco', 11, 'MG'),
(1817, 'Dom Cavati', 11, 'MG'),
(1818, 'Dom Joaquim', 11, 'MG'),
(1819, 'Dom Silvério', 11, 'MG'),
(1820, 'Dom Viçoso', 11, 'MG'),
(1821, 'Dona Eusébia', 11, 'MG'),
(1822, 'Dores de Campos', 11, 'MG'),
(1823, 'Dores de Guanhães', 11, 'MG'),
(1824, 'Dores do Indaiá', 11, 'MG'),
(1825, 'Dores do Turvo', 11, 'MG'),
(1826, 'Doresópolis', 11, 'MG'),
(1827, 'Douradoquara', 11, 'MG'),
(1828, 'Durandé', 11, 'MG'),
(1829, 'Elói Mendes', 11, 'MG'),
(1830, 'Engenheiro Caldas', 11, 'MG'),
(1831, 'Engenheiro Navarro', 11, 'MG'),
(1832, 'Entre Folhas', 11, 'MG'),
(1833, 'Entre Rios de Minas', 11, 'MG'),
(1834, 'Ervália', 11, 'MG'),
(1835, 'Esmeraldas', 11, 'MG'),
(1836, 'Espera Feliz', 11, 'MG'),
(1837, 'Espinosa', 11, 'MG'),
(1838, 'Espírito Santo do Dourado', 11, 'MG'),
(1839, 'Estiva', 11, 'MG'),
(1840, 'Estrela Dalva', 11, 'MG'),
(1841, 'Estrela do Indaiá', 11, 'MG'),
(1842, 'Estrela do Sul', 11, 'MG'),
(1843, 'Eugenópolis', 11, 'MG'),
(1844, 'Ewbank da Câmara', 11, 'MG'),
(1845, 'Extrema', 11, 'MG'),
(1846, 'Fama', 11, 'MG'),
(1847, 'Faria Lemos', 11, 'MG'),
(1848, 'Felício dos Santos', 11, 'MG'),
(1849, 'Felisburgo', 11, 'MG'),
(1850, 'Felixlândia', 11, 'MG'),
(1851, 'Fernandes Tourinho', 11, 'MG'),
(1852, 'Ferros', 11, 'MG'),
(1853, 'Fervedouro', 11, 'MG'),
(1854, 'Florestal', 11, 'MG'),
(1855, 'Formiga', 11, 'MG'),
(1856, 'Formoso', 11, 'MG'),
(1857, 'Fortaleza de Minas', 11, 'MG'),
(1858, 'Fortuna de Minas', 11, 'MG'),
(1859, 'Francisco Badaró', 11, 'MG'),
(1860, 'Francisco Dumont', 11, 'MG'),
(1861, 'Francisco Sá', 11, 'MG'),
(1862, 'Franciscópolis', 11, 'MG'),
(1863, 'Frei Gaspar', 11, 'MG'),
(1864, 'Frei Inocêncio', 11, 'MG'),
(1865, 'Frei Lagonegro', 11, 'MG'),
(1866, 'Fronteira', 11, 'MG'),
(1867, 'Fronteira dos Vales', 11, 'MG'),
(1868, 'Fruta de Leite', 11, 'MG'),
(1869, 'Frutal', 11, 'MG'),
(1870, 'Funilândia', 11, 'MG'),
(1871, 'Galiléia', 11, 'MG'),
(1872, 'Gameleiras', 11, 'MG'),
(1873, 'Glaucilândia', 11, 'MG'),
(1874, 'Goiabeira', 11, 'MG'),
(1875, 'Goianá', 11, 'MG'),
(1876, 'Gonçalves', 11, 'MG'),
(1877, 'Gonzaga', 11, 'MG'),
(1878, 'Gouveia', 11, 'MG'),
(1879, 'Governador Valadares', 11, 'MG'),
(1880, 'Grão Mogol', 11, 'MG'),
(1881, 'Grupiara', 11, 'MG'),
(1882, 'Guanhães', 11, 'MG'),
(1883, 'Guapé', 11, 'MG'),
(1884, 'Guaraciaba', 11, 'MG'),
(1885, 'Guaraciama', 11, 'MG'),
(1886, 'Guaranésia', 11, 'MG'),
(1887, 'Guarani', 11, 'MG'),
(1888, 'Guarará', 11, 'MG'),
(1889, 'Guarda-Mor', 11, 'MG'),
(1890, 'Guaxupé', 11, 'MG'),
(1891, 'Guidoval', 11, 'MG'),
(1892, 'Guimarânia', 11, 'MG'),
(1893, 'Guiricema', 11, 'MG'),
(1894, 'Gurinhatã', 11, 'MG'),
(1895, 'Heliodora', 11, 'MG'),
(1896, 'Iapu', 11, 'MG'),
(1897, 'Ibertioga', 11, 'MG'),
(1898, 'Ibiá', 11, 'MG'),
(1899, 'Ibiaí', 11, 'MG'),
(1900, 'Ibiracatu', 11, 'MG'),
(1901, 'Ibiraci', 11, 'MG'),
(1902, 'Ibirité', 11, 'MG'),
(1903, 'Ibitiúra de Minas', 11, 'MG'),
(1904, 'Ibituruna', 11, 'MG'),
(1905, 'Icaraí de Minas', 11, 'MG'),
(1906, 'Igarapé', 11, 'MG'),
(1907, 'Igaratinga', 11, 'MG'),
(1908, 'Iguatama', 11, 'MG'),
(1909, 'Ijaci', 11, 'MG'),
(1910, 'Ilicínea', 11, 'MG'),
(1911, 'Imbé de Minas', 11, 'MG'),
(1912, 'Inconfidentes', 11, 'MG'),
(1913, 'Indaiabira', 11, 'MG'),
(1914, 'Indianópolis', 11, 'MG'),
(1915, 'Ingaí', 11, 'MG'),
(1916, 'Inhapim', 11, 'MG'),
(1917, 'Inhaúma', 11, 'MG'),
(1918, 'Inimutaba', 11, 'MG'),
(1919, 'Ipaba', 11, 'MG'),
(1920, 'Ipanema', 11, 'MG'),
(1921, 'Ipatinga', 11, 'MG'),
(1922, 'Ipiaçu', 11, 'MG'),
(1923, 'Ipuiúna', 11, 'MG'),
(1924, 'Iraí de Minas', 11, 'MG'),
(1925, 'Itabira', 11, 'MG'),
(1926, 'Itabirinha de Mantena', 11, 'MG'),
(1927, 'Itabirito', 11, 'MG'),
(1928, 'Itacambira', 11, 'MG'),
(1929, 'Itacarambi', 11, 'MG'),
(1930, 'Itaguara', 11, 'MG'),
(1931, 'Itaipé', 11, 'MG'),
(1932, 'Itajubá', 11, 'MG'),
(1933, 'Itamarandiba', 11, 'MG'),
(1934, 'Itamarati de Minas', 11, 'MG'),
(1935, 'Itambacuri', 11, 'MG'),
(1936, 'Itambé do Mato Dentro', 11, 'MG'),
(1937, 'Itamogi', 11, 'MG'),
(1938, 'Itamonte', 11, 'MG'),
(1939, 'Itanhandu', 11, 'MG'),
(1940, 'Itanhomi', 11, 'MG'),
(1941, 'Itaobim', 11, 'MG'),
(1942, 'Itapagipe', 11, 'MG'),
(1943, 'Itapecerica', 11, 'MG'),
(1944, 'Itapeva', 11, 'MG'),
(1945, 'Itatiaiuçu', 11, 'MG'),
(1946, 'Itaú de Minas', 11, 'MG'),
(1947, 'Itaúna', 11, 'MG'),
(1948, 'Itaverava', 11, 'MG'),
(1949, 'Itinga', 11, 'MG'),
(1950, 'Itueta', 11, 'MG'),
(1951, 'Ituiutaba', 11, 'MG'),
(1952, 'Itumirim', 11, 'MG'),
(1953, 'Iturama', 11, 'MG'),
(1954, 'Itutinga', 11, 'MG'),
(1955, 'Jaboticatubas', 11, 'MG'),
(1956, 'Jacinto', 11, 'MG'),
(1957, 'Jacuí', 11, 'MG'),
(1958, 'Jacutinga', 11, 'MG'),
(1959, 'Jaguaraçu', 11, 'MG'),
(1960, 'Jaíba', 11, 'MG'),
(1961, 'Jampruca', 11, 'MG'),
(1962, 'Janaúba', 11, 'MG'),
(1963, 'Januária', 11, 'MG'),
(1964, 'Japaraíba', 11, 'MG'),
(1965, 'Japonvar', 11, 'MG'),
(1966, 'Jeceaba', 11, 'MG'),
(1967, 'Jenipapo de Minas', 11, 'MG'),
(1968, 'Jequeri', 11, 'MG'),
(1969, 'Jequitaí', 11, 'MG'),
(1970, 'Jequitibá', 11, 'MG'),
(1971, 'Jequitinhonha', 11, 'MG'),
(1972, 'Jesuânia', 11, 'MG'),
(1973, 'Joaíma', 11, 'MG'),
(1974, 'Joanésia', 11, 'MG'),
(1975, 'João Monlevade', 11, 'MG'),
(1976, 'João Pinheiro', 11, 'MG'),
(1977, 'Joaquim Felício', 11, 'MG'),
(1978, 'Jordânia', 11, 'MG'),
(1979, 'José Gonçalves de Minas', 11, 'MG'),
(1980, 'José Raydan', 11, 'MG'),
(1981, 'Josenópolis', 11, 'MG'),
(1982, 'Juatuba', 11, 'MG'),
(1983, 'Juiz de Fora', 11, 'MG'),
(1984, 'Juramento', 11, 'MG'),
(1985, 'Juruaia', 11, 'MG'),
(1986, 'Juvenília', 11, 'MG'),
(1987, 'Ladainha', 11, 'MG'),
(1988, 'Lagamar', 11, 'MG'),
(1989, 'Lagoa da Prata', 11, 'MG'),
(1990, 'Lagoa dos Patos', 11, 'MG'),
(1991, 'Lagoa Dourada', 11, 'MG'),
(1992, 'Lagoa Formosa', 11, 'MG'),
(1993, 'Lagoa Grande', 11, 'MG'),
(1994, 'Lagoa Santa', 11, 'MG'),
(1995, 'Lajinha', 11, 'MG'),
(1996, 'Lambari', 11, 'MG'),
(1997, 'Lamim', 11, 'MG'),
(1998, 'Laranjal', 11, 'MG'),
(1999, 'Lassance', 11, 'MG'),
(2000, 'Lavras', 11, 'MG'),
(2001, 'Leandro Ferreira', 11, 'MG'),
(2002, 'Leme do Prado', 11, 'MG'),
(2003, 'Leopoldina', 11, 'MG'),
(2004, 'Liberdade', 11, 'MG'),
(2005, 'Lima Duarte', 11, 'MG'),
(2006, 'Limeira do Oeste', 11, 'MG'),
(2007, 'Lontra', 11, 'MG'),
(2008, 'Luisburgo', 11, 'MG'),
(2009, 'Luislândia', 11, 'MG'),
(2010, 'Luminárias', 11, 'MG'),
(2011, 'Luz', 11, 'MG'),
(2012, 'Machacalis', 11, 'MG'),
(2013, 'Machado', 11, 'MG'),
(2014, 'Madre de Deus de Minas', 11, 'MG'),
(2015, 'Malacacheta', 11, 'MG'),
(2016, 'Mamonas', 11, 'MG'),
(2017, 'Manga', 11, 'MG'),
(2018, 'Manhuaçu', 11, 'MG'),
(2019, 'Manhumirim', 11, 'MG'),
(2020, 'Mantena', 11, 'MG'),
(2021, 'Mar de Espanha', 11, 'MG'),
(2022, 'Maravilhas', 11, 'MG'),
(2023, 'Maria da Fé', 11, 'MG'),
(2024, 'Mariana', 11, 'MG'),
(2025, 'Marilac', 11, 'MG'),
(2026, 'Mário Campos', 11, 'MG'),
(2027, 'Maripá de Minas', 11, 'MG'),
(2028, 'Marliéria', 11, 'MG'),
(2029, 'Marmelópolis', 11, 'MG'),
(2030, 'Martinho Campos', 11, 'MG'),
(2031, 'Martins Soares', 11, 'MG'),
(2032, 'Mata Verde', 11, 'MG'),
(2033, 'Materlândia', 11, 'MG'),
(2034, 'Mateus Leme', 11, 'MG'),
(2035, 'Mathias Lobato', 11, 'MG'),
(2036, 'Matias Barbosa', 11, 'MG'),
(2037, 'Matias Cardoso', 11, 'MG'),
(2038, 'Matipó', 11, 'MG'),
(2039, 'Mato Verde', 11, 'MG'),
(2040, 'Matozinhos', 11, 'MG'),
(2041, 'Matutina', 11, 'MG'),
(2042, 'Medeiros', 11, 'MG'),
(2043, 'Medina', 11, 'MG'),
(2044, 'Mendes Pimentel', 11, 'MG'),
(2045, 'Mercês', 11, 'MG'),
(2046, 'Mesquita', 11, 'MG'),
(2047, 'Minas Novas', 11, 'MG'),
(2048, 'Minduri', 11, 'MG'),
(2049, 'Mirabela', 11, 'MG'),
(2050, 'Miradouro', 11, 'MG'),
(2051, 'Miraí', 11, 'MG'),
(2052, 'Miravânia', 11, 'MG'),
(2053, 'Moeda', 11, 'MG'),
(2054, 'Moema', 11, 'MG'),
(2055, 'Monjolos', 11, 'MG'),
(2056, 'Monsenhor Paulo', 11, 'MG'),
(2057, 'Montalvânia', 11, 'MG'),
(2058, 'Monte Alegre de Minas', 11, 'MG'),
(2059, 'Monte Azul', 11, 'MG'),
(2060, 'Monte Belo', 11, 'MG'),
(2061, 'Monte Carmelo', 11, 'MG'),
(2062, 'Monte Formoso', 11, 'MG'),
(2063, 'Monte Santo de Minas', 11, 'MG'),
(2064, 'Monte Sião', 11, 'MG'),
(2065, 'Montes Claros', 11, 'MG'),
(2066, 'Montezuma', 11, 'MG'),
(2067, 'Morada Nova de Minas', 11, 'MG'),
(2068, 'Morro da Garça', 11, 'MG'),
(2069, 'Morro do Pilar', 11, 'MG'),
(2070, 'Munhoz', 11, 'MG'),
(2071, 'Muriaé', 11, 'MG'),
(2072, 'Mutum', 11, 'MG'),
(2073, 'Muzambinho', 11, 'MG'),
(2074, 'Nacip Raydan', 11, 'MG'),
(2075, 'Nanuque', 11, 'MG'),
(2076, 'Naque', 11, 'MG'),
(2077, 'Natalândia', 11, 'MG'),
(2078, 'Natércia', 11, 'MG'),
(2079, 'Nazareno', 11, 'MG'),
(2080, 'Nepomuceno', 11, 'MG'),
(2081, 'Ninheira', 11, 'MG'),
(2082, 'Nova Belém', 11, 'MG'),
(2083, 'Nova Era', 11, 'MG'),
(2084, 'Nova Lima', 11, 'MG'),
(2085, 'Nova Módica', 11, 'MG'),
(2086, 'Nova Ponte', 11, 'MG'),
(2087, 'Nova Porteirinha', 11, 'MG'),
(2088, 'Nova Resende', 11, 'MG'),
(2089, 'Nova Serrana', 11, 'MG'),
(2090, 'Nova União', 11, 'MG'),
(2091, 'Novo Cruzeiro', 11, 'MG'),
(2092, 'Novo Oriente de Minas', 11, 'MG'),
(2093, 'Novorizonte', 11, 'MG'),
(2094, 'Olaria', 11, 'MG'),
(2095, 'Olhos-d`Água', 11, 'MG'),
(2096, 'Olímpio Noronha', 11, 'MG'),
(2097, 'Oliveira', 11, 'MG'),
(2098, 'Oliveira Fortes', 11, 'MG'),
(2099, 'Onça de Pitangui', 11, 'MG'),
(2100, 'Oratórios', 11, 'MG'),
(2101, 'Orizânia', 11, 'MG'),
(2102, 'Ouro Branco', 11, 'MG'),
(2103, 'Ouro Fino', 11, 'MG'),
(2104, 'Ouro Preto', 11, 'MG'),
(2105, 'Ouro Verde de Minas', 11, 'MG'),
(2106, 'Padre Carvalho', 11, 'MG'),
(2107, 'Padre Paraíso', 11, 'MG'),
(2108, 'Pai Pedro', 11, 'MG'),
(2109, 'Paineiras', 11, 'MG'),
(2110, 'Pains', 11, 'MG'),
(2111, 'Paiva', 11, 'MG'),
(2112, 'Palma', 11, 'MG'),
(2113, 'Palmópolis', 11, 'MG'),
(2114, 'Papagaios', 11, 'MG'),
(2115, 'Pará de Minas', 11, 'MG'),
(2116, 'Paracatu', 11, 'MG'),
(2117, 'Paraguaçu', 11, 'MG'),
(2118, 'Paraisópolis', 11, 'MG'),
(2119, 'Paraopeba', 11, 'MG'),
(2120, 'Passa Quatro', 11, 'MG'),
(2121, 'Passa Tempo', 11, 'MG'),
(2122, 'Passabém', 11, 'MG'),
(2123, 'Passa-Vinte', 11, 'MG'),
(2124, 'Passos', 11, 'MG'),
(2125, 'Patis', 11, 'MG'),
(2126, 'Patos de Minas', 11, 'MG'),
(2127, 'Patrocínio', 11, 'MG'),
(2128, 'Patrocínio do Muriaé', 11, 'MG'),
(2129, 'Paula Cândido', 11, 'MG'),
(2130, 'Paulistas', 11, 'MG'),
(2131, 'Pavão', 11, 'MG'),
(2132, 'Peçanha', 11, 'MG'),
(2133, 'Pedra Azul', 11, 'MG'),
(2134, 'Pedra Bonita', 11, 'MG'),
(2135, 'Pedra do Anta', 11, 'MG'),
(2136, 'Pedra do Indaiá', 11, 'MG'),
(2137, 'Pedra Dourada', 11, 'MG'),
(2138, 'Pedralva', 11, 'MG'),
(2139, 'Pedras de Maria da Cruz', 11, 'MG'),
(2140, 'Pedrinópolis', 11, 'MG'),
(2141, 'Pedro Leopoldo', 11, 'MG'),
(2142, 'Pedro Teixeira', 11, 'MG'),
(2143, 'Pequeri', 11, 'MG'),
(2144, 'Pequi', 11, 'MG'),
(2145, 'Perdigão', 11, 'MG'),
(2146, 'Perdizes', 11, 'MG'),
(2147, 'Perdões', 11, 'MG'),
(2148, 'Periquito', 11, 'MG'),
(2149, 'Pescador', 11, 'MG'),
(2150, 'Piau', 11, 'MG'),
(2151, 'Piedade de Caratinga', 11, 'MG'),
(2152, 'Piedade de Ponte Nova', 11, 'MG'),
(2153, 'Piedade do Rio Grande', 11, 'MG'),
(2154, 'Piedade dos Gerais', 11, 'MG'),
(2155, 'Pimenta', 11, 'MG'),
(2156, 'Pingo-d`Água', 11, 'MG'),
(2157, 'Pintópolis', 11, 'MG'),
(2158, 'Piracema', 11, 'MG'),
(2159, 'Pirajuba', 11, 'MG'),
(2160, 'Piranga', 11, 'MG'),
(2161, 'Piranguçu', 11, 'MG'),
(2162, 'Piranguinho', 11, 'MG'),
(2163, 'Pirapetinga', 11, 'MG'),
(2164, 'Pirapora', 11, 'MG'),
(2165, 'Piraúba', 11, 'MG'),
(2166, 'Pitangui', 11, 'MG'),
(2167, 'Piumhi', 11, 'MG'),
(2168, 'Planura', 11, 'MG'),
(2169, 'Poço Fundo', 11, 'MG'),
(2170, 'Poços de Caldas', 11, 'MG'),
(2171, 'Pocrane', 11, 'MG'),
(2172, 'Pompéu', 11, 'MG'),
(2173, 'Ponte Nova', 11, 'MG'),
(2174, 'Ponto Chique', 11, 'MG'),
(2175, 'Ponto dos Volantes', 11, 'MG'),
(2176, 'Porteirinha', 11, 'MG'),
(2177, 'Porto Firme', 11, 'MG'),
(2178, 'Poté', 11, 'MG'),
(2179, 'Pouso Alegre', 11, 'MG'),
(2180, 'Pouso Alto', 11, 'MG'),
(2181, 'Prados', 11, 'MG'),
(2182, 'Prata', 11, 'MG'),
(2183, 'Pratápolis', 11, 'MG'),
(2184, 'Pratinha', 11, 'MG'),
(2185, 'Presidente Bernardes', 11, 'MG'),
(2186, 'Presidente Juscelino', 11, 'MG'),
(2187, 'Presidente Kubitschek', 11, 'MG'),
(2188, 'Presidente Olegário', 11, 'MG'),
(2189, 'Prudente de Morais', 11, 'MG'),
(2190, 'Quartel Geral', 11, 'MG'),
(2191, 'Queluzito', 11, 'MG'),
(2192, 'Raposos', 11, 'MG'),
(2193, 'Raul Soares', 11, 'MG'),
(2194, 'Recreio', 11, 'MG'),
(2195, 'Reduto', 11, 'MG'),
(2196, 'Resende Costa', 11, 'MG'),
(2197, 'Resplendor', 11, 'MG'),
(2198, 'Ressaquinha', 11, 'MG'),
(2199, 'Riachinho', 11, 'MG'),
(2200, 'Riacho dos Machados', 11, 'MG'),
(2201, 'Ribeirão das Neves', 11, 'MG'),
(2202, 'Ribeirão Vermelho', 11, 'MG'),
(2203, 'Rio Acima', 11, 'MG'),
(2204, 'Rio Casca', 11, 'MG'),
(2205, 'Rio do Prado', 11, 'MG'),
(2206, 'Rio Doce', 11, 'MG'),
(2207, 'Rio Espera', 11, 'MG'),
(2208, 'Rio Manso', 11, 'MG'),
(2209, 'Rio Novo', 11, 'MG'),
(2210, 'Rio Paranaíba', 11, 'MG'),
(2211, 'Rio Pardo de Minas', 11, 'MG'),
(2212, 'Rio Piracicaba', 11, 'MG'),
(2213, 'Rio Pomba', 11, 'MG'),
(2214, 'Rio Preto', 11, 'MG'),
(2215, 'Rio Vermelho', 11, 'MG'),
(2216, 'Ritápolis', 11, 'MG'),
(2217, 'Rochedo de Minas', 11, 'MG'),
(2218, 'Rodeiro', 11, 'MG'),
(2219, 'Romaria', 11, 'MG'),
(2220, 'Rosário da Limeira', 11, 'MG'),
(2221, 'Rubelita', 11, 'MG'),
(2222, 'Rubim', 11, 'MG'),
(2223, 'Sabará', 11, 'MG'),
(2224, 'Sabinópolis', 11, 'MG'),
(2225, 'Sacramento', 11, 'MG'),
(2226, 'Salinas', 11, 'MG'),
(2227, 'Salto da Divisa', 11, 'MG'),
(2228, 'Santa Bárbara', 11, 'MG'),
(2229, 'Santa Bárbara do Leste', 11, 'MG'),
(2230, 'Santa Bárbara do Monte Verde', 11, 'MG'),
(2231, 'Santa Bárbara do Tugúrio', 11, 'MG'),
(2232, 'Santa Cruz de Minas', 11, 'MG'),
(2233, 'Santa Cruz de Salinas', 11, 'MG'),
(2234, 'Santa Cruz do Escalvado', 11, 'MG'),
(2235, 'Santa Efigênia de Minas', 11, 'MG'),
(2236, 'Santa Fé de Minas', 11, 'MG'),
(2237, 'Santa Helena de Minas', 11, 'MG'),
(2238, 'Santa Juliana', 11, 'MG'),
(2239, 'Santa Luzia', 11, 'MG'),
(2240, 'Santa Margarida', 11, 'MG'),
(2241, 'Santa Maria de Itabira', 11, 'MG'),
(2242, 'Santa Maria do Salto', 11, 'MG'),
(2243, 'Santa Maria do Suaçuí', 11, 'MG'),
(2244, 'Santa Rita de Caldas', 11, 'MG'),
(2245, 'Santa Rita de Ibitipoca', 11, 'MG'),
(2246, 'Santa Rita de Jacutinga', 11, 'MG'),
(2247, 'Santa Rita de Minas', 11, 'MG'),
(2248, 'Santa Rita do Itueto', 11, 'MG'),
(2249, 'Santa Rita do Sapucaí', 11, 'MG'),
(2250, 'Santa Rosa da Serra', 11, 'MG'),
(2251, 'Santa Vitória', 11, 'MG'),
(2252, 'Santana da Vargem', 11, 'MG'),
(2253, 'Santana de Cataguases', 11, 'MG'),
(2254, 'Santana de Pirapama', 11, 'MG'),
(2255, 'Santana do Deserto', 11, 'MG'),
(2256, 'Santana do Garambéu', 11, 'MG'),
(2257, 'Santana do Jacaré', 11, 'MG'),
(2258, 'Santana do Manhuaçu', 11, 'MG'),
(2259, 'Santana do Paraíso', 11, 'MG'),
(2260, 'Santana do Riacho', 11, 'MG'),
(2261, 'Santana dos Montes', 11, 'MG'),
(2262, 'Santo Antônio do Amparo', 11, 'MG'),
(2263, 'Santo Antônio do Aventureiro', 11, 'MG'),
(2264, 'Santo Antônio do Grama', 11, 'MG'),
(2265, 'Santo Antônio do Itambé', 11, 'MG'),
(2266, 'Santo Antônio do Jacinto', 11, 'MG'),
(2267, 'Santo Antônio do Monte', 11, 'MG'),
(2268, 'Santo Antônio do Retiro', 11, 'MG'),
(2269, 'Santo Antônio do Rio Abaixo', 11, 'MG'),
(2270, 'Santo Hipólito', 11, 'MG'),
(2271, 'Santos Dumont', 11, 'MG'),
(2272, 'São Bento Abade', 11, 'MG'),
(2273, 'São Brás do Suaçuí', 11, 'MG'),
(2274, 'São Domingos das Dores', 11, 'MG'),
(2275, 'São Domingos do Prata', 11, 'MG'),
(2276, 'São Félix de Minas', 11, 'MG'),
(2277, 'São Francisco', 11, 'MG'),
(2278, 'São Francisco de Paula', 11, 'MG'),
(2279, 'São Francisco de Sales', 11, 'MG'),
(2280, 'São Francisco do Glória', 11, 'MG'),
(2281, 'São Geraldo', 11, 'MG'),
(2282, 'São Geraldo da Piedade', 11, 'MG'),
(2283, 'São Geraldo do Baixio', 11, 'MG'),
(2284, 'São Gonçalo do Abaeté', 11, 'MG'),
(2285, 'São Gonçalo do Pará', 11, 'MG'),
(2286, 'São Gonçalo do Rio Abaixo', 11, 'MG'),
(2287, 'São Gonçalo do Rio Preto', 11, 'MG'),
(2288, 'São Gonçalo do Sapucaí', 11, 'MG'),
(2289, 'São Gotardo', 11, 'MG'),
(2290, 'São João Batista do Glória', 11, 'MG'),
(2291, 'São João da Lagoa', 11, 'MG'),
(2292, 'São João da Mata', 11, 'MG'),
(2293, 'São João da Ponte', 11, 'MG'),
(2294, 'São João das Missões', 11, 'MG'),
(2295, 'São João del Rei', 11, 'MG'),
(2296, 'São João do Manhuaçu', 11, 'MG'),
(2297, 'São João do Manteninha', 11, 'MG'),
(2298, 'São João do Oriente', 11, 'MG'),
(2299, 'São João do Pacuí', 11, 'MG'),
(2300, 'São João do Paraíso', 11, 'MG'),
(2301, 'São João Evangelista', 11, 'MG'),
(2302, 'São João Nepomuceno', 11, 'MG'),
(2303, 'São Joaquim de Bicas', 11, 'MG'),
(2304, 'São José da Barra', 11, 'MG'),
(2305, 'São José da Lapa', 11, 'MG'),
(2306, 'São José da Safira', 11, 'MG'),
(2307, 'São José da Varginha', 11, 'MG'),
(2308, 'São José do Alegre', 11, 'MG'),
(2309, 'São José do Divino', 11, 'MG'),
(2310, 'São José do Goiabal', 11, 'MG'),
(2311, 'São José do Jacuri', 11, 'MG'),
(2312, 'São José do Mantimento', 11, 'MG'),
(2313, 'São Lourenço', 11, 'MG'),
(2314, 'São Miguel do Anta', 11, 'MG'),
(2315, 'São Pedro da União', 11, 'MG'),
(2316, 'São Pedro do Suaçuí', 11, 'MG'),
(2317, 'São Pedro dos Ferros', 11, 'MG'),
(2318, 'São Romão', 11, 'MG'),
(2319, 'São Roque de Minas', 11, 'MG'),
(2320, 'São Sebastião da Bela Vista', 11, 'MG'),
(2321, 'São Sebastião da Vargem Alegre', 11, 'MG'),
(2322, 'São Sebastião do Anta', 11, 'MG'),
(2323, 'São Sebastião do Maranhão', 11, 'MG'),
(2324, 'São Sebastião do Oeste', 11, 'MG'),
(2325, 'São Sebastião do Paraíso', 11, 'MG'),
(2326, 'São Sebastião do Rio Preto', 11, 'MG'),
(2327, 'São Sebastião do Rio Verde', 11, 'MG'),
(2328, 'São Thomé das Letras', 11, 'MG'),
(2329, 'São Tiago', 11, 'MG'),
(2330, 'São Tomás de Aquino', 11, 'MG'),
(2331, 'São Vicente de Minas', 11, 'MG'),
(2332, 'Sapucaí-Mirim', 11, 'MG'),
(2333, 'Sardoá', 11, 'MG'),
(2334, 'Sarzedo', 11, 'MG'),
(2335, 'Sem-Peixe', 11, 'MG'),
(2336, 'Senador Amaral', 11, 'MG'),
(2337, 'Senador Cortes', 11, 'MG'),
(2338, 'Senador Firmino', 11, 'MG'),
(2339, 'Senador José Bento', 11, 'MG'),
(2340, 'Senador Modestino Gonçalves', 11, 'MG'),
(2341, 'Senhora de Oliveira', 11, 'MG'),
(2342, 'Senhora do Porto', 11, 'MG'),
(2343, 'Senhora dos Remédios', 11, 'MG'),
(2344, 'Sericita', 11, 'MG'),
(2345, 'Seritinga', 11, 'MG'),
(2346, 'Serra Azul de Minas', 11, 'MG'),
(2347, 'Serra da Saudade', 11, 'MG'),
(2348, 'Serra do Salitre', 11, 'MG'),
(2349, 'Serra dos Aimorés', 11, 'MG'),
(2350, 'Serrania', 11, 'MG'),
(2351, 'Serranópolis de Minas', 11, 'MG'),
(2352, 'Serranos', 11, 'MG'),
(2353, 'Serro', 11, 'MG'),
(2354, 'Sete Lagoas', 11, 'MG'),
(2355, 'Setubinha', 11, 'MG'),
(2356, 'Silveirânia', 11, 'MG'),
(2357, 'Silvianópolis', 11, 'MG'),
(2358, 'Simão Pereira', 11, 'MG'),
(2359, 'Simonésia', 11, 'MG'),
(2360, 'Sobrália', 11, 'MG'),
(2361, 'Soledade de Minas', 11, 'MG'),
(2362, 'Tabuleiro', 11, 'MG'),
(2363, 'Taiobeiras', 11, 'MG'),
(2364, 'Taparuba', 11, 'MG'),
(2365, 'Tapira', 11, 'MG'),
(2366, 'Tapiraí', 11, 'MG'),
(2367, 'Taquaraçu de Minas', 11, 'MG'),
(2368, 'Tarumirim', 11, 'MG'),
(2369, 'Teixeiras', 11, 'MG'),
(2370, 'Teófilo Otoni', 11, 'MG'),
(2371, 'Timóteo', 11, 'MG'),
(2372, 'Tiradentes', 11, 'MG'),
(2373, 'Tiros', 11, 'MG'),
(2374, 'Tocantins', 11, 'MG'),
(2375, 'Tocos do Moji', 11, 'MG'),
(2376, 'Toledo', 11, 'MG'),
(2377, 'Tombos', 11, 'MG'),
(2378, 'Três Corações', 11, 'MG'),
(2379, 'Três Marias', 11, 'MG'),
(2380, 'Três Pontas', 11, 'MG'),
(2381, 'Tumiritinga', 11, 'MG'),
(2382, 'Tupaciguara', 11, 'MG'),
(2383, 'Turmalina', 11, 'MG'),
(2384, 'Turvolândia', 11, 'MG'),
(2385, 'Ubá', 11, 'MG'),
(2386, 'Ubaí', 11, 'MG'),
(2387, 'Ubaporanga', 11, 'MG'),
(2388, 'Uberaba', 11, 'MG'),
(2389, 'Uberlândia', 11, 'MG'),
(2390, 'Umburatiba', 11, 'MG'),
(2391, 'Unaí', 11, 'MG'),
(2392, 'União de Minas', 11, 'MG'),
(2393, 'Uruana de Minas', 11, 'MG'),
(2394, 'Urucânia', 11, 'MG'),
(2395, 'Urucuia', 11, 'MG'),
(2396, 'Vargem Alegre', 11, 'MG'),
(2397, 'Vargem Bonita', 11, 'MG'),
(2398, 'Vargem Grande do Rio Pardo', 11, 'MG'),
(2399, 'Varginha', 11, 'MG'),
(2400, 'Varjão de Minas', 11, 'MG'),
(2401, 'Várzea da Palma', 11, 'MG'),
(2402, 'Varzelândia', 11, 'MG'),
(2403, 'Vazante', 11, 'MG'),
(2404, 'Verdelândia', 11, 'MG'),
(2405, 'Veredinha', 11, 'MG'),
(2406, 'Veríssimo', 11, 'MG'),
(2407, 'Vermelho Novo', 11, 'MG'),
(2408, 'Vespasiano', 11, 'MG'),
(2409, 'Viçosa', 11, 'MG'),
(2410, 'Vieiras', 11, 'MG'),
(2411, 'Virgem da Lapa', 11, 'MG'),
(2412, 'Virgínia', 11, 'MG'),
(2413, 'Virginópolis', 11, 'MG'),
(2414, 'Virgolândia', 11, 'MG'),
(2415, 'Visconde do Rio Branco', 11, 'MG'),
(2416, 'Volta Grande', 11, 'MG'),
(2417, 'Wenceslau Braz', 11, 'MG'),
(2418, 'Abaetetuba', 14, 'PA'),
(2419, 'Abel Figueiredo', 14, 'PA'),
(2420, 'Acará', 14, 'PA'),
(2421, 'Afuá', 14, 'PA'),
(2422, 'Água Azul do Norte', 14, 'PA'),
(2423, 'Alenquer', 14, 'PA'),
(2424, 'Almeirim', 14, 'PA'),
(2425, 'Altamira', 14, 'PA'),
(2426, 'Anajás', 14, 'PA'),
(2427, 'Ananindeua', 14, 'PA'),
(2428, 'Anapu', 14, 'PA'),
(2429, 'Augusto Corrêa', 14, 'PA'),
(2430, 'Aurora do Pará', 14, 'PA'),
(2431, 'Aveiro', 14, 'PA'),
(2432, 'Bagre', 14, 'PA'),
(2433, 'Baião', 14, 'PA'),
(2434, 'Bannach', 14, 'PA'),
(2435, 'Barcarena', 14, 'PA'),
(2436, 'Belém', 14, 'PA'),
(2437, 'Belterra', 14, 'PA'),
(2438, 'Benevides', 14, 'PA'),
(2439, 'Bom Jesus do Tocantins', 14, 'PA'),
(2440, 'Bonito', 14, 'PA'),
(2441, 'Bragança', 14, 'PA'),
(2442, 'Brasil Novo', 14, 'PA'),
(2443, 'Brejo Grande do Araguaia', 14, 'PA'),
(2444, 'Breu Branco', 14, 'PA'),
(2445, 'Breves', 14, 'PA'),
(2446, 'Bujaru', 14, 'PA'),
(2447, 'Cachoeira do Arari', 14, 'PA'),
(2448, 'Cachoeira do Piriá', 14, 'PA'),
(2449, 'Cametá', 14, 'PA'),
(2450, 'Canaã dos Carajás', 14, 'PA'),
(2451, 'Capanema', 14, 'PA'),
(2452, 'Capitão Poço', 14, 'PA'),
(2453, 'Castanhal', 14, 'PA'),
(2454, 'Chaves', 14, 'PA'),
(2455, 'Colares', 14, 'PA'),
(2456, 'Conceição do Araguaia', 14, 'PA'),
(2457, 'Concórdia do Pará', 14, 'PA'),
(2458, 'Cumaru do Norte', 14, 'PA'),
(2459, 'Curionópolis', 14, 'PA'),
(2460, 'Curralinho', 14, 'PA'),
(2461, 'Curuá', 14, 'PA'),
(2462, 'Curuçá', 14, 'PA'),
(2463, 'Dom Eliseu', 14, 'PA'),
(2464, 'Eldorado dos Carajás', 14, 'PA'),
(2465, 'Faro', 14, 'PA'),
(2466, 'Floresta do Araguaia', 14, 'PA'),
(2467, 'Garrafão do Norte', 14, 'PA'),
(2468, 'Goianésia do Pará', 14, 'PA'),
(2469, 'Gurupá', 14, 'PA'),
(2470, 'Igarapé-Açu', 14, 'PA'),
(2471, 'Igarapé-Miri', 14, 'PA'),
(2472, 'Inhangapi', 14, 'PA'),
(2473, 'Ipixuna do Pará', 14, 'PA'),
(2474, 'Irituia', 14, 'PA'),
(2475, 'Itaituba', 14, 'PA'),
(2476, 'Itupiranga', 14, 'PA'),
(2477, 'Jacareacanga', 14, 'PA'),
(2478, 'Jacundá', 14, 'PA'),
(2479, 'Juruti', 14, 'PA'),
(2480, 'Limoeiro do Ajuru', 14, 'PA'),
(2481, 'Mãe do Rio', 14, 'PA'),
(2482, 'Magalhães Barata', 14, 'PA'),
(2483, 'Marabá', 14, 'PA'),
(2484, 'Maracanã', 14, 'PA'),
(2485, 'Marapanim', 14, 'PA'),
(2486, 'Marituba', 14, 'PA'),
(2487, 'Medicilândia', 14, 'PA'),
(2488, 'Melgaço', 14, 'PA'),
(2489, 'Mocajuba', 14, 'PA'),
(2490, 'Moju', 14, 'PA'),
(2491, 'Monte Alegre', 14, 'PA'),
(2492, 'Muaná', 14, 'PA'),
(2493, 'Nova Esperança do Piriá', 14, 'PA'),
(2494, 'Nova Ipixuna', 14, 'PA'),
(2495, 'Nova Timboteua', 14, 'PA'),
(2496, 'Novo Progresso', 14, 'PA'),
(2497, 'Novo Repartimento', 14, 'PA'),
(2498, 'Óbidos', 14, 'PA'),
(2499, 'Oeiras do Pará', 14, 'PA'),
(2500, 'Oriximiná', 14, 'PA'),
(2501, 'Ourém', 14, 'PA'),
(2502, 'Ourilândia do Norte', 14, 'PA'),
(2503, 'Pacajá', 14, 'PA'),
(2504, 'Palestina do Pará', 14, 'PA'),
(2505, 'Paragominas', 14, 'PA'),
(2506, 'Parauapebas', 14, 'PA'),
(2507, 'Pau d`Arco', 14, 'PA'),
(2508, 'Peixe-Boi', 14, 'PA'),
(2509, 'Piçarra', 14, 'PA'),
(2510, 'Placas', 14, 'PA'),
(2511, 'Ponta de Pedras', 14, 'PA'),
(2512, 'Portel', 14, 'PA'),
(2513, 'Porto de Moz', 14, 'PA'),
(2514, 'Prainha', 14, 'PA'),
(2515, 'Primavera', 14, 'PA'),
(2516, 'Quatipuru', 14, 'PA'),
(2517, 'Redenção', 14, 'PA'),
(2518, 'Rio Maria', 14, 'PA'),
(2519, 'Rondon do Pará', 14, 'PA'),
(2520, 'Rurópolis', 14, 'PA'),
(2521, 'Salinópolis', 14, 'PA'),
(2522, 'Salvaterra', 14, 'PA'),
(2523, 'Santa Bárbara do Pará', 14, 'PA'),
(2524, 'Santa Cruz do Arari', 14, 'PA'),
(2525, 'Santa Isabel do Pará', 14, 'PA'),
(2526, 'Santa Luzia do Pará', 14, 'PA'),
(2527, 'Santa Maria das Barreiras', 14, 'PA'),
(2528, 'Santa Maria do Pará', 14, 'PA'),
(2529, 'Santana do Araguaia', 14, 'PA'),
(2530, 'Santarém', 14, 'PA'),
(2531, 'Santarém Novo', 14, 'PA'),
(2532, 'Santo Antônio do Tauá', 14, 'PA'),
(2533, 'São Caetano de Odivelas', 14, 'PA'),
(2534, 'São Domingos do Araguaia', 14, 'PA'),
(2535, 'São Domingos do Capim', 14, 'PA'),
(2536, 'São Félix do Xingu', 14, 'PA'),
(2537, 'São Francisco do Pará', 14, 'PA'),
(2538, 'São Geraldo do Araguaia', 14, 'PA'),
(2539, 'São João da Ponta', 14, 'PA'),
(2540, 'São João de Pirabas', 14, 'PA'),
(2541, 'São João do Araguaia', 14, 'PA'),
(2542, 'São Miguel do Guamá', 14, 'PA'),
(2543, 'São Sebastião da Boa Vista', 14, 'PA'),
(2544, 'Sapucaia', 14, 'PA'),
(2545, 'Senador José Porfírio', 14, 'PA'),
(2546, 'Soure', 14, 'PA'),
(2547, 'Tailândia', 14, 'PA'),
(2548, 'Terra Alta', 14, 'PA'),
(2549, 'Terra Santa', 14, 'PA'),
(2550, 'Tomé-Açu', 14, 'PA'),
(2551, 'Tracuateua', 14, 'PA'),
(2552, 'Trairão', 14, 'PA'),
(2553, 'Tucumã', 14, 'PA'),
(2554, 'Tucuruí', 14, 'PA'),
(2555, 'Ulianópolis', 14, 'PA'),
(2556, 'Uruará', 14, 'PA'),
(2557, 'Vigia', 14, 'PA'),
(2558, 'Viseu', 14, 'PA'),
(2559, 'Vitória do Xingu', 14, 'PA'),
(2560, 'Xinguara', 14, 'PA'),
(2561, 'Água Branca', 15, 'PB'),
(2562, 'Aguiar', 15, 'PB'),
(2563, 'Alagoa Grande', 15, 'PB'),
(2564, 'Alagoa Nova', 15, 'PB'),
(2565, 'Alagoinha', 15, 'PB'),
(2566, 'Alcantil', 15, 'PB'),
(2567, 'Algodão de Jandaíra', 15, 'PB'),
(2568, 'Alhandra', 15, 'PB'),
(2569, 'Amparo', 15, 'PB'),
(2570, 'Aparecida', 15, 'PB'),
(2571, 'Araçagi', 15, 'PB'),
(2572, 'Arara', 15, 'PB'),
(2573, 'Araruna', 15, 'PB'),
(2574, 'Areia', 15, 'PB'),
(2575, 'Areia de Baraúnas', 15, 'PB'),
(2576, 'Areial', 15, 'PB'),
(2577, 'Aroeiras', 15, 'PB'),
(2578, 'Assunção', 15, 'PB'),
(2579, 'Baía da Traição', 15, 'PB'),
(2580, 'Bananeiras', 15, 'PB'),
(2581, 'Baraúna', 15, 'PB'),
(2582, 'Barra de Santa Rosa', 15, 'PB'),
(2583, 'Barra de Santana', 15, 'PB'),
(2584, 'Barra de São Miguel', 15, 'PB'),
(2585, 'Bayeux', 15, 'PB'),
(2586, 'Belém', 15, 'PB'),
(2587, 'Belém do Brejo do Cruz', 15, 'PB'),
(2588, 'Bernardino Batista', 15, 'PB'),
(2589, 'Boa Ventura', 15, 'PB'),
(2590, 'Boa Vista', 15, 'PB'),
(2591, 'Bom Jesus', 15, 'PB'),
(2592, 'Bom Sucesso', 15, 'PB'),
(2593, 'Bonito de Santa Fé', 15, 'PB'),
(2594, 'Boqueirão', 15, 'PB'),
(2595, 'Borborema', 15, 'PB'),
(2596, 'Brejo do Cruz', 15, 'PB'),
(2597, 'Brejo dos Santos', 15, 'PB'),
(2598, 'Caaporã', 15, 'PB'),
(2599, 'Cabaceiras', 15, 'PB'),
(2600, 'Cabedelo', 15, 'PB'),
(2601, 'Cachoeira dos Índios', 15, 'PB'),
(2602, 'Cacimba de Areia', 15, 'PB'),
(2603, 'Cacimba de Dentro', 15, 'PB'),
(2604, 'Cacimbas', 15, 'PB'),
(2605, 'Caiçara', 15, 'PB'),
(2606, 'Cajazeiras', 15, 'PB'),
(2607, 'Cajazeirinhas', 15, 'PB'),
(2608, 'Caldas Brandão', 15, 'PB'),
(2609, 'Camalaú', 15, 'PB'),
(2610, 'Campina Grande', 15, 'PB'),
(2611, 'Campo de Santana', 15, 'PB'),
(2612, 'Capim', 15, 'PB'),
(2613, 'Caraúbas', 15, 'PB'),
(2614, 'Carrapateira', 15, 'PB'),
(2615, 'Casserengue', 15, 'PB'),
(2616, 'Catingueira', 15, 'PB'),
(2617, 'Catolé do Rocha', 15, 'PB'),
(2618, 'Caturité', 15, 'PB'),
(2619, 'Conceição', 15, 'PB'),
(2620, 'Condado', 15, 'PB'),
(2621, 'Conde', 15, 'PB'),
(2622, 'Congo', 15, 'PB'),
(2623, 'Coremas', 15, 'PB'),
(2624, 'Coxixola', 15, 'PB'),
(2625, 'Cruz do Espírito Santo', 15, 'PB'),
(2626, 'Cubati', 15, 'PB'),
(2627, 'Cuité', 15, 'PB'),
(2628, 'Cuité de Mamanguape', 15, 'PB'),
(2629, 'Cuitegi', 15, 'PB'),
(2630, 'Curral de Cima', 15, 'PB'),
(2631, 'Curral Velho', 15, 'PB'),
(2632, 'Damião', 15, 'PB'),
(2633, 'Desterro', 15, 'PB'),
(2634, 'Diamante', 15, 'PB'),
(2635, 'Dona Inês', 15, 'PB'),
(2636, 'Duas Estradas', 15, 'PB'),
(2637, 'Emas', 15, 'PB'),
(2638, 'Esperança', 15, 'PB'),
(2639, 'Fagundes', 15, 'PB'),
(2640, 'Frei Martinho', 15, 'PB'),
(2641, 'Gado Bravo', 15, 'PB'),
(2642, 'Guarabira', 15, 'PB'),
(2643, 'Gurinhém', 15, 'PB'),
(2644, 'Gurjão', 15, 'PB'),
(2645, 'Ibiara', 15, 'PB'),
(2646, 'Igaracy', 15, 'PB'),
(2647, 'Imaculada', 15, 'PB'),
(2648, 'Ingá', 15, 'PB'),
(2649, 'Itabaiana', 15, 'PB'),
(2650, 'Itaporanga', 15, 'PB'),
(2651, 'Itapororoca', 15, 'PB'),
(2652, 'Itatuba', 15, 'PB'),
(2653, 'Jacaraú', 15, 'PB'),
(2654, 'Jericó', 15, 'PB'),
(2655, 'João Pessoa', 15, 'PB'),
(2656, 'Juarez Távora', 15, 'PB'),
(2657, 'Juazeirinho', 15, 'PB'),
(2658, 'Junco do Seridó', 15, 'PB'),
(2659, 'Juripiranga', 15, 'PB'),
(2660, 'Juru', 15, 'PB'),
(2661, 'Lagoa', 15, 'PB'),
(2662, 'Lagoa de Dentro', 15, 'PB'),
(2663, 'Lagoa Seca', 15, 'PB'),
(2664, 'Lastro', 15, 'PB'),
(2665, 'Livramento', 15, 'PB'),
(2666, 'Logradouro', 15, 'PB'),
(2667, 'Lucena', 15, 'PB'),
(2668, 'Mãe d`Água', 15, 'PB'),
(2669, 'Malta', 15, 'PB'),
(2670, 'Mamanguape', 15, 'PB'),
(2671, 'Manaíra', 15, 'PB'),
(2672, 'Marcação', 15, 'PB'),
(2673, 'Mari', 15, 'PB'),
(2674, 'Marizópolis', 15, 'PB'),
(2675, 'Massaranduba', 15, 'PB'),
(2676, 'Mataraca', 15, 'PB'),
(2677, 'Matinhas', 15, 'PB'),
(2678, 'Mato Grosso', 15, 'PB'),
(2679, 'Maturéia', 15, 'PB'),
(2680, 'Mogeiro', 15, 'PB'),
(2681, 'Montadas', 15, 'PB'),
(2682, 'Monte Horebe', 15, 'PB'),
(2683, 'Monteiro', 15, 'PB'),
(2684, 'Mulungu', 15, 'PB'),
(2685, 'Natuba', 15, 'PB'),
(2686, 'Nazarezinho', 15, 'PB'),
(2687, 'Nova Floresta', 15, 'PB'),
(2688, 'Nova Olinda', 15, 'PB'),
(2689, 'Nova Palmeira', 15, 'PB'),
(2690, 'Olho d`Água', 15, 'PB'),
(2691, 'Olivedos', 15, 'PB'),
(2692, 'Ouro Velho', 15, 'PB'),
(2693, 'Parari', 15, 'PB'),
(2694, 'Passagem', 15, 'PB'),
(2695, 'Patos', 15, 'PB'),
(2696, 'Paulista', 15, 'PB'),
(2697, 'Pedra Branca', 15, 'PB'),
(2698, 'Pedra Lavrada', 15, 'PB'),
(2699, 'Pedras de Fogo', 15, 'PB'),
(2700, 'Pedro Régis', 15, 'PB'),
(2701, 'Piancó', 15, 'PB'),
(2702, 'Picuí', 15, 'PB'),
(2703, 'Pilar', 15, 'PB'),
(2704, 'Pilões', 15, 'PB'),
(2705, 'Pilõezinhos', 15, 'PB'),
(2706, 'Pirpirituba', 15, 'PB'),
(2707, 'Pitimbu', 15, 'PB'),
(2708, 'Pocinhos', 15, 'PB'),
(2709, 'Poço Dantas', 15, 'PB'),
(2710, 'Poço de José de Moura', 15, 'PB'),
(2711, 'Pombal', 15, 'PB'),
(2712, 'Prata', 15, 'PB'),
(2713, 'Princesa Isabel', 15, 'PB'),
(2714, 'Puxinanã', 15, 'PB'),
(2715, 'Queimadas', 15, 'PB'),
(2716, 'Quixabá', 15, 'PB'),
(2717, 'Remígio', 15, 'PB'),
(2718, 'Riachão', 15, 'PB'),
(2719, 'Riachão do Bacamarte', 15, 'PB'),
(2720, 'Riachão do Poço', 15, 'PB'),
(2721, 'Riacho de Santo Antônio', 15, 'PB'),
(2722, 'Riacho dos Cavalos', 15, 'PB'),
(2723, 'Rio Tinto', 15, 'PB'),
(2724, 'Salgadinho', 15, 'PB'),
(2725, 'Salgado de São Félix', 15, 'PB'),
(2726, 'Santa Cecília', 15, 'PB'),
(2727, 'Santa Cruz', 15, 'PB'),
(2728, 'Santa Helena', 15, 'PB'),
(2729, 'Santa Inês', 15, 'PB'),
(2730, 'Santa Luzia', 15, 'PB'),
(2731, 'Santa Rita', 15, 'PB'),
(2732, 'Santa Teresinha', 15, 'PB'),
(2733, 'Santana de Mangueira', 15, 'PB'),
(2734, 'Santana dos Garrotes', 15, 'PB'),
(2735, 'Santarém', 15, 'PB'),
(2736, 'Santo André', 15, 'PB'),
(2737, 'São Bentinho', 15, 'PB'),
(2738, 'São Bento', 15, 'PB'),
(2739, 'São Domingos de Pombal', 15, 'PB'),
(2740, 'São Domingos do Cariri', 15, 'PB'),
(2741, 'São Francisco', 15, 'PB'),
(2742, 'São João do Cariri', 15, 'PB'),
(2743, 'São João do Rio do Peixe', 15, 'PB'),
(2744, 'São João do Tigre', 15, 'PB'),
(2745, 'São José da Lagoa Tapada', 15, 'PB'),
(2746, 'São José de Caiana', 15, 'PB'),
(2747, 'São José de Espinharas', 15, 'PB'),
(2748, 'São José de Piranhas', 15, 'PB'),
(2749, 'São José de Princesa', 15, 'PB'),
(2750, 'São José do Bonfim', 15, 'PB'),
(2751, 'São José do Brejo do Cruz', 15, 'PB'),
(2752, 'São José do Sabugi', 15, 'PB'),
(2753, 'São José dos Cordeiros', 15, 'PB'),
(2754, 'São José dos Ramos', 15, 'PB'),
(2755, 'São Mamede', 15, 'PB'),
(2756, 'São Miguel de Taipu', 15, 'PB'),
(2757, 'São Sebastião de Lagoa de Roça', 15, 'PB'),
(2758, 'São Sebastião do Umbuzeiro', 15, 'PB'),
(2759, 'Sapé', 15, 'PB'),
(2760, 'Seridó', 15, 'PB'),
(2761, 'Serra Branca', 15, 'PB'),
(2762, 'Serra da Raiz', 15, 'PB'),
(2763, 'Serra Grande', 15, 'PB'),
(2764, 'Serra Redonda', 15, 'PB'),
(2765, 'Serraria', 15, 'PB'),
(2766, 'Sertãozinho', 15, 'PB'),
(2767, 'Sobrado', 15, 'PB'),
(2768, 'Solânea', 15, 'PB'),
(2769, 'Soledade', 15, 'PB'),
(2770, 'Sossêgo', 15, 'PB'),
(2771, 'Sousa', 15, 'PB'),
(2772, 'Sumé', 15, 'PB'),
(2773, 'Taperoá', 15, 'PB'),
(2774, 'Tavares', 15, 'PB'),
(2775, 'Teixeira', 15, 'PB'),
(2776, 'Tenório', 15, 'PB'),
(2777, 'Triunfo', 15, 'PB'),
(2778, 'Uiraúna', 15, 'PB'),
(2779, 'Umbuzeiro', 15, 'PB'),
(2780, 'Várzea', 15, 'PB'),
(2781, 'Vieirópolis', 15, 'PB'),
(2782, 'Vista Serrana', 15, 'PB'),
(2783, 'Zabelê', 15, 'PB'),
(2784, 'Abatiá', 18, 'PR'),
(2785, 'Adrianópolis', 18, 'PR'),
(2786, 'Agudos do Sul', 18, 'PR'),
(2787, 'Almirante Tamandaré', 18, 'PR'),
(2788, 'Altamira do Paraná', 18, 'PR'),
(2789, 'Alto Paraíso', 18, 'PR'),
(2790, 'Alto Paraná', 18, 'PR'),
(2791, 'Alto Piquiri', 18, 'PR'),
(2792, 'Altônia', 18, 'PR'),
(2793, 'Alvorada do Sul', 18, 'PR'),
(2794, 'Amaporã', 18, 'PR'),
(2795, 'Ampére', 18, 'PR'),
(2796, 'Anahy', 18, 'PR'),
(2797, 'Andirá', 18, 'PR'),
(2798, 'Ângulo', 18, 'PR'),
(2799, 'Antonina', 18, 'PR'),
(2800, 'Antônio Olinto', 18, 'PR'),
(2801, 'Apucarana', 18, 'PR'),
(2802, 'Arapongas', 18, 'PR'),
(2803, 'Arapoti', 18, 'PR'),
(2804, 'Arapuã', 18, 'PR'),
(2805, 'Araruna', 18, 'PR'),
(2806, 'Araucária', 18, 'PR'),
(2807, 'Ariranha do Ivaí', 18, 'PR'),
(2808, 'Assaí', 18, 'PR'),
(2809, 'Assis Chateaubriand', 18, 'PR'),
(2810, 'Astorga', 18, 'PR'),
(2811, 'Atalaia', 18, 'PR'),
(2812, 'Balsa Nova', 18, 'PR'),
(2813, 'Bandeirantes', 18, 'PR'),
(2814, 'Barbosa Ferraz', 18, 'PR'),
(2815, 'Barra do Jacaré', 18, 'PR'),
(2816, 'Barracão', 18, 'PR'),
(2817, 'Bela Vista da Caroba', 18, 'PR'),
(2818, 'Bela Vista do Paraíso', 18, 'PR'),
(2819, 'Bituruna', 18, 'PR'),
(2820, 'Boa Esperança', 18, 'PR'),
(2821, 'Boa Esperança do Iguaçu', 18, 'PR'),
(2822, 'Boa Ventura de São Roque', 18, 'PR'),
(2823, 'Boa Vista da Aparecida', 18, 'PR'),
(2824, 'Bocaiúva do Sul', 18, 'PR'),
(2825, 'Bom Jesus do Sul', 18, 'PR'),
(2826, 'Bom Sucesso', 18, 'PR'),
(2827, 'Bom Sucesso do Sul', 18, 'PR'),
(2828, 'Borrazópolis', 18, 'PR'),
(2829, 'Braganey', 18, 'PR'),
(2830, 'Brasilândia do Sul', 18, 'PR'),
(2831, 'Cafeara', 18, 'PR'),
(2832, 'Cafelândia', 18, 'PR'),
(2833, 'Cafezal do Sul', 18, 'PR'),
(2834, 'Califórnia', 18, 'PR'),
(2835, 'Cambará', 18, 'PR'),
(2836, 'Cambé', 18, 'PR'),
(2837, 'Cambira', 18, 'PR'),
(2838, 'Campina da Lagoa', 18, 'PR'),
(2839, 'Campina do Simão', 18, 'PR'),
(2840, 'Campina Grande do Sul', 18, 'PR'),
(2841, 'Campo Bonito', 18, 'PR'),
(2842, 'Campo do Tenente', 18, 'PR'),
(2843, 'Campo Largo', 18, 'PR'),
(2844, 'Campo Magro', 18, 'PR'),
(2845, 'Campo Mourão', 18, 'PR'),
(2846, 'Cândido de Abreu', 18, 'PR'),
(2847, 'Candói', 18, 'PR'),
(2848, 'Cantagalo', 18, 'PR'),
(2849, 'Capanema', 18, 'PR'),
(2850, 'Capitão Leônidas Marques', 18, 'PR'),
(2851, 'Carambeí', 18, 'PR'),
(2852, 'Carlópolis', 18, 'PR'),
(2853, 'Cascavel', 18, 'PR'),
(2854, 'Castro', 18, 'PR'),
(2855, 'Catanduvas', 18, 'PR'),
(2856, 'Centenário do Sul', 18, 'PR'),
(2857, 'Cerro Azul', 18, 'PR'),
(2858, 'Céu Azul', 18, 'PR'),
(2859, 'Chopinzinho', 18, 'PR'),
(2860, 'Cianorte', 18, 'PR'),
(2861, 'Cidade Gaúcha', 18, 'PR'),
(2862, 'Clevelândia', 18, 'PR'),
(2863, 'Colombo', 18, 'PR'),
(2864, 'Colorado', 18, 'PR'),
(2865, 'Congonhinhas', 18, 'PR'),
(2866, 'Conselheiro Mairinck', 18, 'PR'),
(2867, 'Contenda', 18, 'PR'),
(2868, 'Corbélia', 18, 'PR'),
(2869, 'Cornélio Procópio', 18, 'PR'),
(2870, 'Coronel Domingos Soares', 18, 'PR'),
(2871, 'Coronel Vivida', 18, 'PR'),
(2872, 'Corumbataí do Sul', 18, 'PR'),
(2873, 'Cruz Machado', 18, 'PR'),
(2874, 'Cruzeiro do Iguaçu', 18, 'PR'),
(2875, 'Cruzeiro do Oeste', 18, 'PR'),
(2876, 'Cruzeiro do Sul', 18, 'PR'),
(2877, 'Cruzmaltina', 18, 'PR'),
(2878, 'Curitiba', 18, 'PR'),
(2879, 'Curiúva', 18, 'PR'),
(2880, 'Diamante d`Oeste', 18, 'PR'),
(2881, 'Diamante do Norte', 18, 'PR'),
(2882, 'Diamante do Sul', 18, 'PR'),
(2883, 'Dois Vizinhos', 18, 'PR'),
(2884, 'Douradina', 18, 'PR'),
(2885, 'Doutor Camargo', 18, 'PR'),
(2886, 'Doutor Ulysses', 18, 'PR'),
(2887, 'Enéas Marques', 18, 'PR'),
(2888, 'Engenheiro Beltrão', 18, 'PR'),
(2889, 'Entre Rios do Oeste', 18, 'PR'),
(2890, 'Esperança Nova', 18, 'PR'),
(2891, 'Espigão Alto do Iguaçu', 18, 'PR'),
(2892, 'Farol', 18, 'PR'),
(2893, 'Faxinal', 18, 'PR'),
(2894, 'Fazenda Rio Grande', 18, 'PR'),
(2895, 'Fênix', 18, 'PR'),
(2896, 'Fernandes Pinheiro', 18, 'PR'),
(2897, 'Figueira', 18, 'PR'),
(2898, 'Flor da Serra do Sul', 18, 'PR'),
(2899, 'Floraí', 18, 'PR'),
(2900, 'Floresta', 18, 'PR'),
(2901, 'Florestópolis', 18, 'PR'),
(2902, 'Flórida', 18, 'PR'),
(2903, 'Formosa do Oeste', 18, 'PR'),
(2904, 'Foz do Iguaçu', 18, 'PR'),
(2905, 'Foz do Jordão', 18, 'PR'),
(2906, 'Francisco Alves', 18, 'PR'),
(2907, 'Francisco Beltrão', 18, 'PR'),
(2908, 'General Carneiro', 18, 'PR'),
(2909, 'Godoy Moreira', 18, 'PR'),
(2910, 'Goioerê', 18, 'PR'),
(2911, 'Goioxim', 18, 'PR'),
(2912, 'Grandes Rios', 18, 'PR'),
(2913, 'Guaíra', 18, 'PR'),
(2914, 'Guairaçá', 18, 'PR'),
(2915, 'Guamiranga', 18, 'PR'),
(2916, 'Guapirama', 18, 'PR'),
(2917, 'Guaporema', 18, 'PR'),
(2918, 'Guaraci', 18, 'PR'),
(2919, 'Guaraniaçu', 18, 'PR'),
(2920, 'Guarapuava', 18, 'PR'),
(2921, 'Guaraqueçaba', 18, 'PR'),
(2922, 'Guaratuba', 18, 'PR'),
(2923, 'Honório Serpa', 18, 'PR'),
(2924, 'Ibaiti', 18, 'PR'),
(2925, 'Ibema', 18, 'PR'),
(2926, 'Ibiporã', 18, 'PR'),
(2927, 'Icaraíma', 18, 'PR'),
(2928, 'Iguaraçu', 18, 'PR'),
(2929, 'Iguatu', 18, 'PR'),
(2930, 'Imbaú', 18, 'PR'),
(2931, 'Imbituva', 18, 'PR'),
(2932, 'Inácio Martins', 18, 'PR'),
(2933, 'Inajá', 18, 'PR'),
(2934, 'Indianópolis', 18, 'PR'),
(2935, 'Ipiranga', 18, 'PR'),
(2936, 'Iporã', 18, 'PR'),
(2937, 'Iracema do Oeste', 18, 'PR'),
(2938, 'Irati', 18, 'PR'),
(2939, 'Iretama', 18, 'PR'),
(2940, 'Itaguajé', 18, 'PR'),
(2941, 'Itaipulândia', 18, 'PR'),
(2942, 'Itambaracá', 18, 'PR'),
(2943, 'Itambé', 18, 'PR'),
(2944, 'Itapejara d`Oeste', 18, 'PR'),
(2945, 'Itaperuçu', 18, 'PR'),
(2946, 'Itaúna do Sul', 18, 'PR'),
(2947, 'Ivaí', 18, 'PR'),
(2948, 'Ivaiporã', 18, 'PR'),
(2949, 'Ivaté', 18, 'PR'),
(2950, 'Ivatuba', 18, 'PR'),
(2951, 'Jaboti', 18, 'PR'),
(2952, 'Jacarezinho', 18, 'PR'),
(2953, 'Jaguapitã', 18, 'PR'),
(2954, 'Jaguariaíva', 18, 'PR'),
(2955, 'Jandaia do Sul', 18, 'PR'),
(2956, 'Janiópolis', 18, 'PR'),
(2957, 'Japira', 18, 'PR'),
(2958, 'Japurá', 18, 'PR'),
(2959, 'Jardim Alegre', 18, 'PR'),
(2960, 'Jardim Olinda', 18, 'PR'),
(2961, 'Jataizinho', 18, 'PR'),
(2962, 'Jesuítas', 18, 'PR'),
(2963, 'Joaquim Távora', 18, 'PR'),
(2964, 'Jundiaí do Sul', 18, 'PR'),
(2965, 'Juranda', 18, 'PR'),
(2966, 'Jussara', 18, 'PR'),
(2967, 'Kaloré', 18, 'PR'),
(2968, 'Lapa', 18, 'PR'),
(2969, 'Laranjal', 18, 'PR'),
(2970, 'Laranjeiras do Sul', 18, 'PR'),
(2971, 'Leópolis', 18, 'PR'),
(2972, 'Lidianópolis', 18, 'PR'),
(2973, 'Lindoeste', 18, 'PR'),
(2974, 'Loanda', 18, 'PR'),
(2975, 'Lobato', 18, 'PR'),
(2976, 'Londrina', 18, 'PR'),
(2977, 'Luiziana', 18, 'PR'),
(2978, 'Lunardelli', 18, 'PR'),
(2979, 'Lupionópolis', 18, 'PR'),
(2980, 'Mallet', 18, 'PR'),
(2981, 'Mamborê', 18, 'PR'),
(2982, 'Mandaguaçu', 18, 'PR'),
(2983, 'Mandaguari', 18, 'PR'),
(2984, 'Mandirituba', 18, 'PR'),
(2985, 'Manfrinópolis', 18, 'PR'),
(2986, 'Mangueirinha', 18, 'PR'),
(2987, 'Manoel Ribas', 18, 'PR'),
(2988, 'Marechal Cândido Rondon', 18, 'PR'),
(2989, 'Maria Helena', 18, 'PR'),
(2990, 'Marialva', 18, 'PR'),
(2991, 'Marilândia do Sul', 18, 'PR'),
(2992, 'Marilena', 18, 'PR'),
(2993, 'Mariluz', 18, 'PR'),
(2994, 'Maringá', 18, 'PR'),
(2995, 'Mariópolis', 18, 'PR'),
(2996, 'Maripá', 18, 'PR'),
(2997, 'Marmeleiro', 18, 'PR'),
(2998, 'Marquinho', 18, 'PR'),
(2999, 'Marumbi', 18, 'PR'),
(3000, 'Matelândia', 18, 'PR'),
(3001, 'Matinhos', 18, 'PR'),
(3002, 'Mato Rico', 18, 'PR'),
(3003, 'Mauá da Serra', 18, 'PR'),
(3004, 'Medianeira', 18, 'PR'),
(3005, 'Mercedes', 18, 'PR'),
(3006, 'Mirador', 18, 'PR'),
(3007, 'Miraselva', 18, 'PR'),
(3008, 'Missal', 18, 'PR'),
(3009, 'Moreira Sales', 18, 'PR'),
(3010, 'Morretes', 18, 'PR'),
(3011, 'Munhoz de Melo', 18, 'PR'),
(3012, 'Nossa Senhora das Graças', 18, 'PR'),
(3013, 'Nova Aliança do Ivaí', 18, 'PR'),
(3014, 'Nova América da Colina', 18, 'PR'),
(3015, 'Nova Aurora', 18, 'PR'),
(3016, 'Nova Cantu', 18, 'PR'),
(3017, 'Nova Esperança', 18, 'PR'),
(3018, 'Nova Esperança do Sudoeste', 18, 'PR'),
(3019, 'Nova Fátima', 18, 'PR'),
(3020, 'Nova Laranjeiras', 18, 'PR'),
(3021, 'Nova Londrina', 18, 'PR'),
(3022, 'Nova Olímpia', 18, 'PR'),
(3023, 'Nova Prata do Iguaçu', 18, 'PR'),
(3024, 'Nova Santa Bárbara', 18, 'PR'),
(3025, 'Nova Santa Rosa', 18, 'PR'),
(3026, 'Nova Tebas', 18, 'PR'),
(3027, 'Novo Itacolomi', 18, 'PR'),
(3028, 'Ortigueira', 18, 'PR'),
(3029, 'Ourizona', 18, 'PR'),
(3030, 'Ouro Verde do Oeste', 18, 'PR'),
(3031, 'Paiçandu', 18, 'PR'),
(3032, 'Palmas', 18, 'PR'),
(3033, 'Palmeira', 18, 'PR'),
(3034, 'Palmital', 18, 'PR'),
(3035, 'Palotina', 18, 'PR'),
(3036, 'Paraíso do Norte', 18, 'PR'),
(3037, 'Paranacity', 18, 'PR'),
(3038, 'Paranaguá', 18, 'PR'),
(3039, 'Paranapoema', 18, 'PR'),
(3040, 'Paranavaí', 18, 'PR'),
(3041, 'Pato Bragado', 18, 'PR'),
(3042, 'Pato Branco', 18, 'PR'),
(3043, 'Paula Freitas', 18, 'PR'),
(3044, 'Paulo Frontin', 18, 'PR'),
(3045, 'Peabiru', 18, 'PR'),
(3046, 'Perobal', 18, 'PR'),
(3047, 'Pérola', 18, 'PR'),
(3048, 'Pérola d`Oeste', 18, 'PR'),
(3049, 'Piên', 18, 'PR'),
(3050, 'Pinhais', 18, 'PR'),
(3051, 'Pinhal de São Bento', 18, 'PR'),
(3052, 'Pinhalão', 18, 'PR'),
(3053, 'Pinhão', 18, 'PR'),
(3054, 'Piraí do Sul', 18, 'PR'),
(3055, 'Piraquara', 18, 'PR'),
(3056, 'Pitanga', 18, 'PR'),
(3057, 'Pitangueiras', 18, 'PR'),
(3058, 'Planaltina do Paraná', 18, 'PR'),
(3059, 'Planalto', 18, 'PR'),
(3060, 'Ponta Grossa', 18, 'PR'),
(3061, 'Pontal do Paraná', 18, 'PR'),
(3062, 'Porecatu', 18, 'PR'),
(3063, 'Porto Amazonas', 18, 'PR'),
(3064, 'Porto Barreiro', 18, 'PR'),
(3065, 'Porto Rico', 18, 'PR'),
(3066, 'Porto Vitória', 18, 'PR'),
(3067, 'Prado Ferreira', 18, 'PR'),
(3068, 'Pranchita', 18, 'PR'),
(3069, 'Presidente Castelo Branco', 18, 'PR'),
(3070, 'Primeiro de Maio', 18, 'PR'),
(3071, 'Prudentópolis', 18, 'PR'),
(3072, 'Quarto Centenário', 18, 'PR'),
(3073, 'Quatiguá', 18, 'PR'),
(3074, 'Quatro Barras', 18, 'PR'),
(3075, 'Quatro Pontes', 18, 'PR'),
(3076, 'Quedas do Iguaçu', 18, 'PR'),
(3077, 'Querência do Norte', 18, 'PR'),
(3078, 'Quinta do Sol', 18, 'PR'),
(3079, 'Quitandinha', 18, 'PR'),
(3080, 'Ramilândia', 18, 'PR'),
(3081, 'Rancho Alegre', 18, 'PR'),
(3082, 'Rancho Alegre d`Oeste', 18, 'PR'),
(3083, 'Realeza', 18, 'PR'),
(3084, 'Rebouças', 18, 'PR'),
(3085, 'Renascença', 18, 'PR'),
(3086, 'Reserva', 18, 'PR'),
(3087, 'Reserva do Iguaçu', 18, 'PR'),
(3088, 'Ribeirão Claro', 18, 'PR'),
(3089, 'Ribeirão do Pinhal', 18, 'PR'),
(3090, 'Rio Azul', 18, 'PR'),
(3091, 'Rio Bom', 18, 'PR'),
(3092, 'Rio Bonito do Iguaçu', 18, 'PR'),
(3093, 'Rio Branco do Ivaí', 18, 'PR'),
(3094, 'Rio Branco do Sul', 18, 'PR'),
(3095, 'Rio Negro', 18, 'PR'),
(3096, 'Rolândia', 18, 'PR'),
(3097, 'Roncador', 18, 'PR'),
(3098, 'Rondon', 18, 'PR'),
(3099, 'Rosário do Ivaí', 18, 'PR'),
(3100, 'Sabáudia', 18, 'PR'),
(3101, 'Salgado Filho', 18, 'PR'),
(3102, 'Salto do Itararé', 18, 'PR'),
(3103, 'Salto do Lontra', 18, 'PR'),
(3104, 'Santa Amélia', 18, 'PR'),
(3105, 'Santa Cecília do Pavão', 18, 'PR'),
(3106, 'Santa Cruz de Monte Castelo', 18, 'PR'),
(3107, 'Santa Fé', 18, 'PR'),
(3108, 'Santa Helena', 18, 'PR'),
(3109, 'Santa Inês', 18, 'PR'),
(3110, 'Santa Isabel do Ivaí', 18, 'PR'),
(3111, 'Santa Izabel do Oeste', 18, 'PR'),
(3112, 'Santa Lúcia', 18, 'PR'),
(3113, 'Santa Maria do Oeste', 18, 'PR'),
(3114, 'Santa Mariana', 18, 'PR'),
(3115, 'Santa Mônica', 18, 'PR'),
(3116, 'Santa Tereza do Oeste', 18, 'PR'),
(3117, 'Santa Terezinha de Itaipu', 18, 'PR'),
(3118, 'Santana do Itararé', 18, 'PR'),
(3119, 'Santo Antônio da Platina', 18, 'PR'),
(3120, 'Santo Antônio do Caiuá', 18, 'PR'),
(3121, 'Santo Antônio do Paraíso', 18, 'PR'),
(3122, 'Santo Antônio do Sudoeste', 18, 'PR'),
(3123, 'Santo Inácio', 18, 'PR'),
(3124, 'São Carlos do Ivaí', 18, 'PR'),
(3125, 'São Jerônimo da Serra', 18, 'PR'),
(3126, 'São João', 18, 'PR'),
(3127, 'São João do Caiuá', 18, 'PR'),
(3128, 'São João do Ivaí', 18, 'PR'),
(3129, 'São João do Triunfo', 18, 'PR'),
(3130, 'São Jorge d`Oeste', 18, 'PR'),
(3131, 'São Jorge do Ivaí', 18, 'PR'),
(3132, 'São Jorge do Patrocínio', 18, 'PR'),
(3133, 'São José da Boa Vista', 18, 'PR'),
(3134, 'São José das Palmeiras', 18, 'PR'),
(3135, 'São José dos Pinhais', 18, 'PR'),
(3136, 'São Manoel do Paraná', 18, 'PR'),
(3137, 'São Mateus do Sul', 18, 'PR'),
(3138, 'São Miguel do Iguaçu', 18, 'PR'),
(3139, 'São Pedro do Iguaçu', 18, 'PR'),
(3140, 'São Pedro do Ivaí', 18, 'PR'),
(3141, 'São Pedro do Paraná', 18, 'PR'),
(3142, 'São Sebastião da Amoreira', 18, 'PR'),
(3143, 'São Tomé', 18, 'PR'),
(3144, 'Sapopema', 18, 'PR'),
(3145, 'Sarandi', 18, 'PR'),
(3146, 'Saudade do Iguaçu', 18, 'PR'),
(3147, 'Sengés', 18, 'PR'),
(3148, 'Serranópolis do Iguaçu', 18, 'PR'),
(3149, 'Sertaneja', 18, 'PR'),
(3150, 'Sertanópolis', 18, 'PR'),
(3151, 'Siqueira Campos', 18, 'PR'),
(3152, 'Sulina', 18, 'PR'),
(3153, 'Tamarana', 18, 'PR'),
(3154, 'Tamboara', 18, 'PR'),
(3155, 'Tapejara', 18, 'PR'),
(3156, 'Tapira', 18, 'PR'),
(3157, 'Teixeira Soares', 18, 'PR'),
(3158, 'Telêmaco Borba', 18, 'PR'),
(3159, 'Terra Boa', 18, 'PR'),
(3160, 'Terra Rica', 18, 'PR'),
(3161, 'Terra Roxa', 18, 'PR'),
(3162, 'Tibagi', 18, 'PR'),
(3163, 'Tijucas do Sul', 18, 'PR'),
(3164, 'Toledo', 18, 'PR'),
(3165, 'Tomazina', 18, 'PR'),
(3166, 'Três Barras do Paraná', 18, 'PR'),
(3167, 'Tunas do Paraná', 18, 'PR'),
(3168, 'Tuneiras do Oeste', 18, 'PR'),
(3169, 'Tupãssi', 18, 'PR'),
(3170, 'Turvo', 18, 'PR'),
(3171, 'Ubiratã', 18, 'PR'),
(3172, 'Umuarama', 18, 'PR'),
(3173, 'União da Vitória', 18, 'PR'),
(3174, 'Uniflor', 18, 'PR'),
(3175, 'Uraí', 18, 'PR'),
(3176, 'Ventania', 18, 'PR'),
(3177, 'Vera Cruz do Oeste', 18, 'PR'),
(3178, 'Verê', 18, 'PR'),
(3179, 'Virmond', 18, 'PR'),
(3180, 'Vitorino', 18, 'PR'),
(3181, 'Wenceslau Braz', 18, 'PR'),
(3182, 'Xambrê', 18, 'PR'),
(3183, 'Abreu e Lima', 16, 'PE'),
(3184, 'Afogados da Ingazeira', 16, 'PE'),
(3185, 'Afrânio', 16, 'PE'),
(3186, 'Agrestina', 16, 'PE'),
(3187, 'Água Preta', 16, 'PE'),
(3188, 'Águas Belas', 16, 'PE'),
(3189, 'Alagoinha', 16, 'PE'),
(3190, 'Aliança', 16, 'PE'),
(3191, 'Altinho', 16, 'PE'),
(3192, 'Amaraji', 16, 'PE'),
(3193, 'Angelim', 16, 'PE'),
(3194, 'Araçoiaba', 16, 'PE'),
(3195, 'Araripina', 16, 'PE'),
(3196, 'Arcoverde', 16, 'PE'),
(3197, 'Barra de Guabiraba', 16, 'PE'),
(3198, 'Barreiros', 16, 'PE'),
(3199, 'Belém de Maria', 16, 'PE'),
(3200, 'Belém de São Francisco', 16, 'PE'),
(3201, 'Belo Jardim', 16, 'PE'),
(3202, 'Betânia', 16, 'PE'),
(3203, 'Bezerros', 16, 'PE'),
(3204, 'Bodocó', 16, 'PE'),
(3205, 'Bom Conselho', 16, 'PE'),
(3206, 'Bom Jardim', 16, 'PE'),
(3207, 'Bonito', 16, 'PE'),
(3208, 'Brejão', 16, 'PE'),
(3209, 'Brejinho', 16, 'PE'),
(3210, 'Brejo da Madre de Deus', 16, 'PE'),
(3211, 'Buenos Aires', 16, 'PE'),
(3212, 'Buíque', 16, 'PE'),
(3213, 'Cabo de Santo Agostinho', 16, 'PE'),
(3214, 'Cabrobó', 16, 'PE'),
(3215, 'Cachoeirinha', 16, 'PE'),
(3216, 'Caetés', 16, 'PE'),
(3217, 'Calçado', 16, 'PE'),
(3218, 'Calumbi', 16, 'PE'),
(3219, 'Camaragibe', 16, 'PE'),
(3220, 'Camocim de São Félix', 16, 'PE'),
(3221, 'Camutanga', 16, 'PE'),
(3222, 'Canhotinho', 16, 'PE'),
(3223, 'Capoeiras', 16, 'PE'),
(3224, 'Carnaíba', 16, 'PE'),
(3225, 'Carnaubeira da Penha', 16, 'PE'),
(3226, 'Carpina', 16, 'PE'),
(3227, 'Caruaru', 16, 'PE'),
(3228, 'Casinhas', 16, 'PE'),
(3229, 'Catende', 16, 'PE'),
(3230, 'Cedro', 16, 'PE'),
(3231, 'Chã de Alegria', 16, 'PE'),
(3232, 'Chã Grande', 16, 'PE'),
(3233, 'Condado', 16, 'PE'),
(3234, 'Correntes', 16, 'PE'),
(3235, 'Cortês', 16, 'PE'),
(3236, 'Cumaru', 16, 'PE');
INSERT INTO `cidade` (`id`, `nome`, `estado`, `uf`) VALUES
(3237, 'Cupira', 16, 'PE'),
(3238, 'Custódia', 16, 'PE'),
(3239, 'Dormentes', 16, 'PE'),
(3240, 'Escada', 16, 'PE'),
(3241, 'Exu', 16, 'PE'),
(3242, 'Feira Nova', 16, 'PE'),
(3243, 'Fernando de Noronha', 16, 'PE'),
(3244, 'Ferreiros', 16, 'PE'),
(3245, 'Flores', 16, 'PE'),
(3246, 'Floresta', 16, 'PE'),
(3247, 'Frei Miguelinho', 16, 'PE'),
(3248, 'Gameleira', 16, 'PE'),
(3249, 'Garanhuns', 16, 'PE'),
(3250, 'Glória do Goitá', 16, 'PE'),
(3251, 'Goiana', 16, 'PE'),
(3252, 'Granito', 16, 'PE'),
(3253, 'Gravatá', 16, 'PE'),
(3254, 'Iati', 16, 'PE'),
(3255, 'Ibimirim', 16, 'PE'),
(3256, 'Ibirajuba', 16, 'PE'),
(3257, 'Igarassu', 16, 'PE'),
(3258, 'Iguaraci', 16, 'PE'),
(3259, 'Ilha de Itamaracá', 16, 'PE'),
(3260, 'Inajá', 16, 'PE'),
(3261, 'Ingazeira', 16, 'PE'),
(3262, 'Ipojuca', 16, 'PE'),
(3263, 'Ipubi', 16, 'PE'),
(3264, 'Itacuruba', 16, 'PE'),
(3265, 'Itaíba', 16, 'PE'),
(3266, 'Itambé', 16, 'PE'),
(3267, 'Itapetim', 16, 'PE'),
(3268, 'Itapissuma', 16, 'PE'),
(3269, 'Itaquitinga', 16, 'PE'),
(3270, 'Jaboatão dos Guararapes', 16, 'PE'),
(3271, 'Jaqueira', 16, 'PE'),
(3272, 'Jataúba', 16, 'PE'),
(3273, 'Jatobá', 16, 'PE'),
(3274, 'João Alfredo', 16, 'PE'),
(3275, 'Joaquim Nabuco', 16, 'PE'),
(3276, 'Jucati', 16, 'PE'),
(3277, 'Jupi', 16, 'PE'),
(3278, 'Jurema', 16, 'PE'),
(3279, 'Lagoa do Carro', 16, 'PE'),
(3280, 'Lagoa do Itaenga', 16, 'PE'),
(3281, 'Lagoa do Ouro', 16, 'PE'),
(3282, 'Lagoa dos Gatos', 16, 'PE'),
(3283, 'Lagoa Grande', 16, 'PE'),
(3284, 'Lajedo', 16, 'PE'),
(3285, 'Limoeiro', 16, 'PE'),
(3286, 'Macaparana', 16, 'PE'),
(3287, 'Machados', 16, 'PE'),
(3288, 'Manari', 16, 'PE'),
(3289, 'Maraial', 16, 'PE'),
(3290, 'Mirandiba', 16, 'PE'),
(3291, 'Moreilândia', 16, 'PE'),
(3292, 'Moreno', 16, 'PE'),
(3293, 'Nazaré da Mata', 16, 'PE'),
(3294, 'Olinda', 16, 'PE'),
(3295, 'Orobó', 16, 'PE'),
(3296, 'Orocó', 16, 'PE'),
(3297, 'Ouricuri', 16, 'PE'),
(3298, 'Palmares', 16, 'PE'),
(3299, 'Palmeirina', 16, 'PE'),
(3300, 'Panelas', 16, 'PE'),
(3301, 'Paranatama', 16, 'PE'),
(3302, 'Parnamirim', 16, 'PE'),
(3303, 'Passira', 16, 'PE'),
(3304, 'Paudalho', 16, 'PE'),
(3305, 'Paulista', 16, 'PE'),
(3306, 'Pedra', 16, 'PE'),
(3307, 'Pesqueira', 16, 'PE'),
(3308, 'Petrolândia', 16, 'PE'),
(3309, 'Petrolina', 16, 'PE'),
(3310, 'Poção', 16, 'PE'),
(3311, 'Pombos', 16, 'PE'),
(3312, 'Primavera', 16, 'PE'),
(3313, 'Quipapá', 16, 'PE'),
(3314, 'Quixaba', 16, 'PE'),
(3315, 'Recife', 16, 'PE'),
(3316, 'Riacho das Almas', 16, 'PE'),
(3317, 'Ribeirão', 16, 'PE'),
(3318, 'Rio Formoso', 16, 'PE'),
(3319, 'Sairé', 16, 'PE'),
(3320, 'Salgadinho', 16, 'PE'),
(3321, 'Salgueiro', 16, 'PE'),
(3322, 'Saloá', 16, 'PE'),
(3323, 'Sanharó', 16, 'PE'),
(3324, 'Santa Cruz', 16, 'PE'),
(3325, 'Santa Cruz da Baixa Verde', 16, 'PE'),
(3326, 'Santa Cruz do Capibaribe', 16, 'PE'),
(3327, 'Santa Filomena', 16, 'PE'),
(3328, 'Santa Maria da Boa Vista', 16, 'PE'),
(3329, 'Santa Maria do Cambucá', 16, 'PE'),
(3330, 'Santa Terezinha', 16, 'PE'),
(3331, 'São Benedito do Sul', 16, 'PE'),
(3332, 'São Bento do Una', 16, 'PE'),
(3333, 'São Caitano', 16, 'PE'),
(3334, 'São João', 16, 'PE'),
(3335, 'São Joaquim do Monte', 16, 'PE'),
(3336, 'São José da Coroa Grande', 16, 'PE'),
(3337, 'São José do Belmonte', 16, 'PE'),
(3338, 'São José do Egito', 16, 'PE'),
(3339, 'São Lourenço da Mata', 16, 'PE'),
(3340, 'São Vicente Ferrer', 16, 'PE'),
(3341, 'Serra Talhada', 16, 'PE'),
(3342, 'Serrita', 16, 'PE'),
(3343, 'Sertânia', 16, 'PE'),
(3344, 'Sirinhaém', 16, 'PE'),
(3345, 'Solidão', 16, 'PE'),
(3346, 'Surubim', 16, 'PE'),
(3347, 'Tabira', 16, 'PE'),
(3348, 'Tacaimbó', 16, 'PE'),
(3349, 'Tacaratu', 16, 'PE'),
(3350, 'Tamandaré', 16, 'PE'),
(3351, 'Taquaritinga do Norte', 16, 'PE'),
(3352, 'Terezinha', 16, 'PE'),
(3353, 'Terra Nova', 16, 'PE'),
(3354, 'Timbaúba', 16, 'PE'),
(3355, 'Toritama', 16, 'PE'),
(3356, 'Tracunhaém', 16, 'PE'),
(3357, 'Trindade', 16, 'PE'),
(3358, 'Triunfo', 16, 'PE'),
(3359, 'Tupanatinga', 16, 'PE'),
(3360, 'Tuparetama', 16, 'PE'),
(3361, 'Venturosa', 16, 'PE'),
(3362, 'Verdejante', 16, 'PE'),
(3363, 'Vertente do Lério', 16, 'PE'),
(3364, 'Vertentes', 16, 'PE'),
(3365, 'Vicência', 16, 'PE'),
(3366, 'Vitória de Santo Antão', 16, 'PE'),
(3367, 'Xexéu', 16, 'PE'),
(3368, 'Acauã', 17, 'PI'),
(3369, 'Agricolândia', 17, 'PI'),
(3370, 'Água Branca', 17, 'PI'),
(3371, 'Alagoinha do Piauí', 17, 'PI'),
(3372, 'Alegrete do Piauí', 17, 'PI'),
(3373, 'Alto Longá', 17, 'PI'),
(3374, 'Altos', 17, 'PI'),
(3375, 'Alvorada do Gurguéia', 17, 'PI'),
(3376, 'Amarante', 17, 'PI'),
(3377, 'Angical do Piauí', 17, 'PI'),
(3378, 'Anísio de Abreu', 17, 'PI'),
(3379, 'Antônio Almeida', 17, 'PI'),
(3380, 'Aroazes', 17, 'PI'),
(3381, 'Aroeiras do Itaim', 17, 'PI'),
(3382, 'Arraial', 17, 'PI'),
(3383, 'Assunção do Piauí', 17, 'PI'),
(3384, 'Avelino Lopes', 17, 'PI'),
(3385, 'Baixa Grande do Ribeiro', 17, 'PI'),
(3386, 'Barra d`Alcântara', 17, 'PI'),
(3387, 'Barras', 17, 'PI'),
(3388, 'Barreiras do Piauí', 17, 'PI'),
(3389, 'Barro Duro', 17, 'PI'),
(3390, 'Batalha', 17, 'PI'),
(3391, 'Bela Vista do Piauí', 17, 'PI'),
(3392, 'Belém do Piauí', 17, 'PI'),
(3393, 'Beneditinos', 17, 'PI'),
(3394, 'Bertolínia', 17, 'PI'),
(3395, 'Betânia do Piauí', 17, 'PI'),
(3396, 'Boa Hora', 17, 'PI'),
(3397, 'Bocaina', 17, 'PI'),
(3398, 'Bom Jesus', 17, 'PI'),
(3399, 'Bom Princípio do Piauí', 17, 'PI'),
(3400, 'Bonfim do Piauí', 17, 'PI'),
(3401, 'Boqueirão do Piauí', 17, 'PI'),
(3402, 'Brasileira', 17, 'PI'),
(3403, 'Brejo do Piauí', 17, 'PI'),
(3404, 'Buriti dos Lopes', 17, 'PI'),
(3405, 'Buriti dos Montes', 17, 'PI'),
(3406, 'Cabeceiras do Piauí', 17, 'PI'),
(3407, 'Cajazeiras do Piauí', 17, 'PI'),
(3408, 'Cajueiro da Praia', 17, 'PI'),
(3409, 'Caldeirão Grande do Piauí', 17, 'PI'),
(3410, 'Campinas do Piauí', 17, 'PI'),
(3411, 'Campo Alegre do Fidalgo', 17, 'PI'),
(3412, 'Campo Grande do Piauí', 17, 'PI'),
(3413, 'Campo Largo do Piauí', 17, 'PI'),
(3414, 'Campo Maior', 17, 'PI'),
(3415, 'Canavieira', 17, 'PI'),
(3416, 'Canto do Buriti', 17, 'PI'),
(3417, 'Capitão de Campos', 17, 'PI'),
(3418, 'Capitão Gervásio Oliveira', 17, 'PI'),
(3419, 'Caracol', 17, 'PI'),
(3420, 'Caraúbas do Piauí', 17, 'PI'),
(3421, 'Caridade do Piauí', 17, 'PI'),
(3422, 'Castelo do Piauí', 17, 'PI'),
(3423, 'Caxingó', 17, 'PI'),
(3424, 'Cocal', 17, 'PI'),
(3425, 'Cocal de Telha', 17, 'PI'),
(3426, 'Cocal dos Alves', 17, 'PI'),
(3427, 'Coivaras', 17, 'PI'),
(3428, 'Colônia do Gurguéia', 17, 'PI'),
(3429, 'Colônia do Piauí', 17, 'PI'),
(3430, 'Conceição do Canindé', 17, 'PI'),
(3431, 'Coronel José Dias', 17, 'PI'),
(3432, 'Corrente', 17, 'PI'),
(3433, 'Cristalândia do Piauí', 17, 'PI'),
(3434, 'Cristino Castro', 17, 'PI'),
(3435, 'Curimatá', 17, 'PI'),
(3436, 'Currais', 17, 'PI'),
(3437, 'Curral Novo do Piauí', 17, 'PI'),
(3438, 'Curralinhos', 17, 'PI'),
(3439, 'Demerval Lobão', 17, 'PI'),
(3440, 'Dirceu Arcoverde', 17, 'PI'),
(3441, 'Dom Expedito Lopes', 17, 'PI'),
(3442, 'Dom Inocêncio', 17, 'PI'),
(3443, 'Domingos Mourão', 17, 'PI'),
(3444, 'Elesbão Veloso', 17, 'PI'),
(3445, 'Eliseu Martins', 17, 'PI'),
(3446, 'Esperantina', 17, 'PI'),
(3447, 'Fartura do Piauí', 17, 'PI'),
(3448, 'Flores do Piauí', 17, 'PI'),
(3449, 'Floresta do Piauí', 17, 'PI'),
(3450, 'Floriano', 17, 'PI'),
(3451, 'Francinópolis', 17, 'PI'),
(3452, 'Francisco Ayres', 17, 'PI'),
(3453, 'Francisco Macedo', 17, 'PI'),
(3454, 'Francisco Santos', 17, 'PI'),
(3455, 'Fronteiras', 17, 'PI'),
(3456, 'Geminiano', 17, 'PI'),
(3457, 'Gilbués', 17, 'PI'),
(3458, 'Guadalupe', 17, 'PI'),
(3459, 'Guaribas', 17, 'PI'),
(3460, 'Hugo Napoleão', 17, 'PI'),
(3461, 'Ilha Grande', 17, 'PI'),
(3462, 'Inhuma', 17, 'PI'),
(3463, 'Ipiranga do Piauí', 17, 'PI'),
(3464, 'Isaías Coelho', 17, 'PI'),
(3465, 'Itainópolis', 17, 'PI'),
(3466, 'Itaueira', 17, 'PI'),
(3467, 'Jacobina do Piauí', 17, 'PI'),
(3468, 'Jaicós', 17, 'PI'),
(3469, 'Jardim do Mulato', 17, 'PI'),
(3470, 'Jatobá do Piauí', 17, 'PI'),
(3471, 'Jerumenha', 17, 'PI'),
(3472, 'João Costa', 17, 'PI'),
(3473, 'Joaquim Pires', 17, 'PI'),
(3474, 'Joca Marques', 17, 'PI'),
(3475, 'José de Freitas', 17, 'PI'),
(3476, 'Juazeiro do Piauí', 17, 'PI'),
(3477, 'Júlio Borges', 17, 'PI'),
(3478, 'Jurema', 17, 'PI'),
(3479, 'Lagoa Alegre', 17, 'PI'),
(3480, 'Lagoa de São Francisco', 17, 'PI'),
(3481, 'Lagoa do Barro do Piauí', 17, 'PI'),
(3482, 'Lagoa do Piauí', 17, 'PI'),
(3483, 'Lagoa do Sítio', 17, 'PI'),
(3484, 'Lagoinha do Piauí', 17, 'PI'),
(3485, 'Landri Sales', 17, 'PI'),
(3486, 'Luís Correia', 17, 'PI'),
(3487, 'Luzilândia', 17, 'PI'),
(3488, 'Madeiro', 17, 'PI'),
(3489, 'Manoel Emídio', 17, 'PI'),
(3490, 'Marcolândia', 17, 'PI'),
(3491, 'Marcos Parente', 17, 'PI'),
(3492, 'Massapê do Piauí', 17, 'PI'),
(3493, 'Matias Olímpio', 17, 'PI'),
(3494, 'Miguel Alves', 17, 'PI'),
(3495, 'Miguel Leão', 17, 'PI'),
(3496, 'Milton Brandão', 17, 'PI'),
(3497, 'Monsenhor Gil', 17, 'PI'),
(3498, 'Monsenhor Hipólito', 17, 'PI'),
(3499, 'Monte Alegre do Piauí', 17, 'PI'),
(3500, 'Morro Cabeça no Tempo', 17, 'PI'),
(3501, 'Morro do Chapéu do Piauí', 17, 'PI'),
(3502, 'Murici dos Portelas', 17, 'PI'),
(3503, 'Nazaré do Piauí', 17, 'PI'),
(3504, 'Nossa Senhora de Nazaré', 17, 'PI'),
(3505, 'Nossa Senhora dos Remédios', 17, 'PI'),
(3506, 'Nova Santa Rita', 17, 'PI'),
(3507, 'Novo Oriente do Piauí', 17, 'PI'),
(3508, 'Novo Santo Antônio', 17, 'PI'),
(3509, 'Oeiras', 17, 'PI'),
(3510, 'Olho d`Água do Piauí', 17, 'PI'),
(3511, 'Padre Marcos', 17, 'PI'),
(3512, 'Paes Landim', 17, 'PI'),
(3513, 'Pajeú do Piauí', 17, 'PI'),
(3514, 'Palmeira do Piauí', 17, 'PI'),
(3515, 'Palmeirais', 17, 'PI'),
(3516, 'Paquetá', 17, 'PI'),
(3517, 'Parnaguá', 17, 'PI'),
(3518, 'Parnaíba', 17, 'PI'),
(3519, 'Passagem Franca do Piauí', 17, 'PI'),
(3520, 'Patos do Piauí', 17, 'PI'),
(3521, 'Pau d`Arco do Piauí', 17, 'PI'),
(3522, 'Paulistana', 17, 'PI'),
(3523, 'Pavussu', 17, 'PI'),
(3524, 'Pedro II', 17, 'PI'),
(3525, 'Pedro Laurentino', 17, 'PI'),
(3526, 'Picos', 17, 'PI'),
(3527, 'Pimenteiras', 17, 'PI'),
(3528, 'Pio IX', 17, 'PI'),
(3529, 'Piracuruca', 17, 'PI'),
(3530, 'Piripiri', 17, 'PI'),
(3531, 'Porto', 17, 'PI'),
(3532, 'Porto Alegre do Piauí', 17, 'PI'),
(3533, 'Prata do Piauí', 17, 'PI'),
(3534, 'Queimada Nova', 17, 'PI'),
(3535, 'Redenção do Gurguéia', 17, 'PI'),
(3536, 'Regeneração', 17, 'PI'),
(3537, 'Riacho Frio', 17, 'PI'),
(3538, 'Ribeira do Piauí', 17, 'PI'),
(3539, 'Ribeiro Gonçalves', 17, 'PI'),
(3540, 'Rio Grande do Piauí', 17, 'PI'),
(3541, 'Santa Cruz do Piauí', 17, 'PI'),
(3542, 'Santa Cruz dos Milagres', 17, 'PI'),
(3543, 'Santa Filomena', 17, 'PI'),
(3544, 'Santa Luz', 17, 'PI'),
(3545, 'Santa Rosa do Piauí', 17, 'PI'),
(3546, 'Santana do Piauí', 17, 'PI'),
(3547, 'Santo Antônio de Lisboa', 17, 'PI'),
(3548, 'Santo Antônio dos Milagres', 17, 'PI'),
(3549, 'Santo Inácio do Piauí', 17, 'PI'),
(3550, 'São Braz do Piauí', 17, 'PI'),
(3551, 'São Félix do Piauí', 17, 'PI'),
(3552, 'São Francisco de Assis do Piauí', 17, 'PI'),
(3553, 'São Francisco do Piauí', 17, 'PI'),
(3554, 'São Gonçalo do Gurguéia', 17, 'PI'),
(3555, 'São Gonçalo do Piauí', 17, 'PI'),
(3556, 'São João da Canabrava', 17, 'PI'),
(3557, 'São João da Fronteira', 17, 'PI'),
(3558, 'São João da Serra', 17, 'PI'),
(3559, 'São João da Varjota', 17, 'PI'),
(3560, 'São João do Arraial', 17, 'PI'),
(3561, 'São João do Piauí', 17, 'PI'),
(3562, 'São José do Divino', 17, 'PI'),
(3563, 'São José do Peixe', 17, 'PI'),
(3564, 'São José do Piauí', 17, 'PI'),
(3565, 'São Julião', 17, 'PI'),
(3566, 'São Lourenço do Piauí', 17, 'PI'),
(3567, 'São Luis do Piauí', 17, 'PI'),
(3568, 'São Miguel da Baixa Grande', 17, 'PI'),
(3569, 'São Miguel do Fidalgo', 17, 'PI'),
(3570, 'São Miguel do Tapuio', 17, 'PI'),
(3571, 'São Pedro do Piauí', 17, 'PI'),
(3572, 'São Raimundo Nonato', 17, 'PI'),
(3573, 'Sebastião Barros', 17, 'PI'),
(3574, 'Sebastião Leal', 17, 'PI'),
(3575, 'Sigefredo Pacheco', 17, 'PI'),
(3576, 'Simões', 17, 'PI'),
(3577, 'Simplício Mendes', 17, 'PI'),
(3578, 'Socorro do Piauí', 17, 'PI'),
(3579, 'Sussuapara', 17, 'PI'),
(3580, 'Tamboril do Piauí', 17, 'PI'),
(3581, 'Tanque do Piauí', 17, 'PI'),
(3582, 'Teresina', 17, 'PI'),
(3583, 'União', 17, 'PI'),
(3584, 'Uruçuí', 17, 'PI'),
(3585, 'Valença do Piauí', 17, 'PI'),
(3586, 'Várzea Branca', 17, 'PI'),
(3587, 'Várzea Grande', 17, 'PI'),
(3588, 'Vera Mendes', 17, 'PI'),
(3589, 'Vila Nova do Piauí', 17, 'PI'),
(3590, 'Wall Ferraz', 17, 'PI'),
(3591, 'Angra dos Reis', 19, 'RJ'),
(3592, 'Aperibé', 19, 'RJ'),
(3593, 'Araruama', 19, 'RJ'),
(3594, 'Areal', 19, 'RJ'),
(3595, 'Armação dos Búzios', 19, 'RJ'),
(3596, 'Arraial do Cabo', 19, 'RJ'),
(3597, 'Barra do Piraí', 19, 'RJ'),
(3598, 'Barra Mansa', 19, 'RJ'),
(3599, 'Belford Roxo', 19, 'RJ'),
(3600, 'Bom Jardim', 19, 'RJ'),
(3601, 'Bom Jesus do Itabapoana', 19, 'RJ'),
(3602, 'Cabo Frio', 19, 'RJ'),
(3603, 'Cachoeiras de Macacu', 19, 'RJ'),
(3604, 'Cambuci', 19, 'RJ'),
(3605, 'Campos dos Goytacazes', 19, 'RJ'),
(3606, 'Cantagalo', 19, 'RJ'),
(3607, 'Carapebus', 19, 'RJ'),
(3608, 'Cardoso Moreira', 19, 'RJ'),
(3609, 'Carmo', 19, 'RJ'),
(3610, 'Casimiro de Abreu', 19, 'RJ'),
(3611, 'Comendador Levy Gasparian', 19, 'RJ'),
(3612, 'Conceição de Macabu', 19, 'RJ'),
(3613, 'Cordeiro', 19, 'RJ'),
(3614, 'Duas Barras', 19, 'RJ'),
(3615, 'Duque de Caxias', 19, 'RJ'),
(3616, 'Engenheiro Paulo de Frontin', 19, 'RJ'),
(3617, 'Guapimirim', 19, 'RJ'),
(3618, 'Iguaba Grande', 19, 'RJ'),
(3619, 'Itaboraí', 19, 'RJ'),
(3620, 'Itaguaí', 19, 'RJ'),
(3621, 'Italva', 19, 'RJ'),
(3622, 'Itaocara', 19, 'RJ'),
(3623, 'Itaperuna', 19, 'RJ'),
(3624, 'Itatiaia', 19, 'RJ'),
(3625, 'Japeri', 19, 'RJ'),
(3626, 'Laje do Muriaé', 19, 'RJ'),
(3627, 'Macaé', 19, 'RJ'),
(3628, 'Macuco', 19, 'RJ'),
(3629, 'Magé', 19, 'RJ'),
(3630, 'Mangaratiba', 19, 'RJ'),
(3631, 'Maricá', 19, 'RJ'),
(3632, 'Mendes', 19, 'RJ'),
(3633, 'Mesquita', 19, 'RJ'),
(3634, 'Miguel Pereira', 19, 'RJ'),
(3635, 'Miracema', 19, 'RJ'),
(3636, 'Natividade', 19, 'RJ'),
(3637, 'Nilópolis', 19, 'RJ'),
(3638, 'Niterói', 19, 'RJ'),
(3639, 'Nova Friburgo', 19, 'RJ'),
(3640, 'Nova Iguaçu', 19, 'RJ'),
(3641, 'Paracambi', 19, 'RJ'),
(3642, 'Paraíba do Sul', 19, 'RJ'),
(3643, 'Parati', 19, 'RJ'),
(3644, 'Paty do Alferes', 19, 'RJ'),
(3645, 'Petrópolis', 19, 'RJ'),
(3646, 'Pinheiral', 19, 'RJ'),
(3647, 'Piraí', 19, 'RJ'),
(3648, 'Porciúncula', 19, 'RJ'),
(3649, 'Porto Real', 19, 'RJ'),
(3650, 'Quatis', 19, 'RJ'),
(3651, 'Queimados', 19, 'RJ'),
(3652, 'Quissamã', 19, 'RJ'),
(3653, 'Resende', 19, 'RJ'),
(3654, 'Rio Bonito', 19, 'RJ'),
(3655, 'Rio Claro', 19, 'RJ'),
(3656, 'Rio das Flores', 19, 'RJ'),
(3657, 'Rio das Ostras', 19, 'RJ'),
(3658, 'Rio de Janeiro', 19, 'RJ'),
(3659, 'Santa Maria Madalena', 19, 'RJ'),
(3660, 'Santo Antônio de Pádua', 19, 'RJ'),
(3661, 'São Fidélis', 19, 'RJ'),
(3662, 'São Francisco de Itabapoana', 19, 'RJ'),
(3663, 'São Gonçalo', 19, 'RJ'),
(3664, 'São João da Barra', 19, 'RJ'),
(3665, 'São João de Meriti', 19, 'RJ'),
(3666, 'São José de Ubá', 19, 'RJ'),
(3667, 'São José do Vale do Rio Pret', 19, 'RJ'),
(3668, 'São Pedro da Aldeia', 19, 'RJ'),
(3669, 'São Sebastião do Alto', 19, 'RJ'),
(3670, 'Sapucaia', 19, 'RJ'),
(3671, 'Saquarema', 19, 'RJ'),
(3672, 'Seropédica', 19, 'RJ'),
(3673, 'Silva Jardim', 19, 'RJ'),
(3674, 'Sumidouro', 19, 'RJ'),
(3675, 'Tanguá', 19, 'RJ'),
(3676, 'Teresópolis', 19, 'RJ'),
(3677, 'Trajano de Morais', 19, 'RJ'),
(3678, 'Três Rios', 19, 'RJ'),
(3679, 'Valença', 19, 'RJ'),
(3680, 'Varre-Sai', 19, 'RJ'),
(3681, 'Vassouras', 19, 'RJ'),
(3682, 'Volta Redonda', 19, 'RJ'),
(3683, 'Acari', 20, 'RN'),
(3684, 'Açu', 20, 'RN'),
(3685, 'Afonso Bezerra', 20, 'RN'),
(3686, 'Água Nova', 20, 'RN'),
(3687, 'Alexandria', 20, 'RN'),
(3688, 'Almino Afonso', 20, 'RN'),
(3689, 'Alto do Rodrigues', 20, 'RN'),
(3690, 'Angicos', 20, 'RN'),
(3691, 'Antônio Martins', 20, 'RN'),
(3692, 'Apodi', 20, 'RN'),
(3693, 'Areia Branca', 20, 'RN'),
(3694, 'Arês', 20, 'RN'),
(3695, 'Augusto Severo', 20, 'RN'),
(3696, 'Baía Formosa', 20, 'RN'),
(3697, 'Baraúna', 20, 'RN'),
(3698, 'Barcelona', 20, 'RN'),
(3699, 'Bento Fernandes', 20, 'RN'),
(3700, 'Bodó', 20, 'RN'),
(3701, 'Bom Jesus', 20, 'RN'),
(3702, 'Brejinho', 20, 'RN'),
(3703, 'Caiçara do Norte', 20, 'RN'),
(3704, 'Caiçara do Rio do Vento', 20, 'RN'),
(3705, 'Caicó', 20, 'RN'),
(3706, 'Campo Redondo', 20, 'RN'),
(3707, 'Canguaretama', 20, 'RN'),
(3708, 'Caraúbas', 20, 'RN'),
(3709, 'Carnaúba dos Dantas', 20, 'RN'),
(3710, 'Carnaubais', 20, 'RN'),
(3711, 'Ceará-Mirim', 20, 'RN'),
(3712, 'Cerro Corá', 20, 'RN'),
(3713, 'Coronel Ezequiel', 20, 'RN'),
(3714, 'Coronel João Pessoa', 20, 'RN'),
(3715, 'Cruzeta', 20, 'RN'),
(3716, 'Currais Novos', 20, 'RN'),
(3717, 'Doutor Severiano', 20, 'RN'),
(3718, 'Encanto', 20, 'RN'),
(3719, 'Equador', 20, 'RN'),
(3720, 'Espírito Santo', 20, 'RN'),
(3721, 'Extremoz', 20, 'RN'),
(3722, 'Felipe Guerra', 20, 'RN'),
(3723, 'Fernando Pedroza', 20, 'RN'),
(3724, 'Florânia', 20, 'RN'),
(3725, 'Francisco Dantas', 20, 'RN'),
(3726, 'Frutuoso Gomes', 20, 'RN'),
(3727, 'Galinhos', 20, 'RN'),
(3728, 'Goianinha', 20, 'RN'),
(3729, 'Governador Dix-Sept Rosado', 20, 'RN'),
(3730, 'Grossos', 20, 'RN'),
(3731, 'Guamaré', 20, 'RN'),
(3732, 'Ielmo Marinho', 20, 'RN'),
(3733, 'Ipanguaçu', 20, 'RN'),
(3734, 'Ipueira', 20, 'RN'),
(3735, 'Itajá', 20, 'RN'),
(3736, 'Itaú', 20, 'RN'),
(3737, 'Jaçanã', 20, 'RN'),
(3738, 'Jandaíra', 20, 'RN'),
(3739, 'Janduís', 20, 'RN'),
(3740, 'Januário Cicco', 20, 'RN'),
(3741, 'Japi', 20, 'RN'),
(3742, 'Jardim de Angicos', 20, 'RN'),
(3743, 'Jardim de Piranhas', 20, 'RN'),
(3744, 'Jardim do Seridó', 20, 'RN'),
(3745, 'João Câmara', 20, 'RN'),
(3746, 'João Dias', 20, 'RN'),
(3747, 'José da Penha', 20, 'RN'),
(3748, 'Jucurutu', 20, 'RN'),
(3749, 'Jundiá', 20, 'RN'),
(3750, 'Lagoa d`Anta', 20, 'RN'),
(3751, 'Lagoa de Pedras', 20, 'RN'),
(3752, 'Lagoa de Velhos', 20, 'RN'),
(3753, 'Lagoa Nova', 20, 'RN'),
(3754, 'Lagoa Salgada', 20, 'RN'),
(3755, 'Lajes', 20, 'RN'),
(3756, 'Lajes Pintadas', 20, 'RN'),
(3757, 'Lucrécia', 20, 'RN'),
(3758, 'Luís Gomes', 20, 'RN'),
(3759, 'Macaíba', 20, 'RN'),
(3760, 'Macau', 20, 'RN'),
(3761, 'Major Sales', 20, 'RN'),
(3762, 'Marcelino Vieira', 20, 'RN'),
(3763, 'Martins', 20, 'RN'),
(3764, 'Maxaranguape', 20, 'RN'),
(3765, 'Messias Targino', 20, 'RN'),
(3766, 'Montanhas', 20, 'RN'),
(3767, 'Monte Alegre', 20, 'RN'),
(3768, 'Monte das Gameleiras', 20, 'RN'),
(3769, 'Mossoró', 20, 'RN'),
(3770, 'Natal', 20, 'RN'),
(3771, 'Nísia Floresta', 20, 'RN'),
(3772, 'Nova Cruz', 20, 'RN'),
(3773, 'Olho-d`Água do Borges', 20, 'RN'),
(3774, 'Ouro Branco', 20, 'RN'),
(3775, 'Paraná', 20, 'RN'),
(3776, 'Paraú', 20, 'RN'),
(3777, 'Parazinho', 20, 'RN'),
(3778, 'Parelhas', 20, 'RN'),
(3779, 'Parnamirim', 20, 'RN'),
(3780, 'Passa e Fica', 20, 'RN'),
(3781, 'Passagem', 20, 'RN'),
(3782, 'Patu', 20, 'RN'),
(3783, 'Pau dos Ferros', 20, 'RN'),
(3784, 'Pedra Grande', 20, 'RN'),
(3785, 'Pedra Preta', 20, 'RN'),
(3786, 'Pedro Avelino', 20, 'RN'),
(3787, 'Pedro Velho', 20, 'RN'),
(3788, 'Pendências', 20, 'RN'),
(3789, 'Pilões', 20, 'RN'),
(3790, 'Poço Branco', 20, 'RN'),
(3791, 'Portalegre', 20, 'RN'),
(3792, 'Porto do Mangue', 20, 'RN'),
(3793, 'Presidente Juscelino', 20, 'RN'),
(3794, 'Pureza', 20, 'RN'),
(3795, 'Rafael Fernandes', 20, 'RN'),
(3796, 'Rafael Godeiro', 20, 'RN'),
(3797, 'Riacho da Cruz', 20, 'RN'),
(3798, 'Riacho de Santana', 20, 'RN'),
(3799, 'Riachuelo', 20, 'RN'),
(3800, 'Rio do Fogo', 20, 'RN'),
(3801, 'Rodolfo Fernandes', 20, 'RN'),
(3802, 'Ruy Barbosa', 20, 'RN'),
(3803, 'Santa Cruz', 20, 'RN'),
(3804, 'Santa Maria', 20, 'RN'),
(3805, 'Santana do Matos', 20, 'RN'),
(3806, 'Santana do Seridó', 20, 'RN'),
(3807, 'Santo Antônio', 20, 'RN'),
(3808, 'São Bento do Norte', 20, 'RN'),
(3809, 'São Bento do Trairí', 20, 'RN'),
(3810, 'São Fernando', 20, 'RN'),
(3811, 'São Francisco do Oeste', 20, 'RN'),
(3812, 'São Gonçalo do Amarante', 20, 'RN'),
(3813, 'São João do Sabugi', 20, 'RN'),
(3814, 'São José de Mipibu', 20, 'RN'),
(3815, 'São José do Campestre', 20, 'RN'),
(3816, 'São José do Seridó', 20, 'RN'),
(3817, 'São Miguel', 20, 'RN'),
(3818, 'São Miguel do Gostoso', 20, 'RN'),
(3819, 'São Paulo do Potengi', 20, 'RN'),
(3820, 'São Pedro', 20, 'RN'),
(3821, 'São Rafael', 20, 'RN'),
(3822, 'São Tomé', 20, 'RN'),
(3823, 'São Vicente', 20, 'RN'),
(3824, 'Senador Elói de Souza', 20, 'RN'),
(3825, 'Senador Georgino Avelino', 20, 'RN'),
(3826, 'Serra de São Bento', 20, 'RN'),
(3827, 'Serra do Mel', 20, 'RN'),
(3828, 'Serra Negra do Norte', 20, 'RN'),
(3829, 'Serrinha', 20, 'RN'),
(3830, 'Serrinha dos Pintos', 20, 'RN'),
(3831, 'Severiano Melo', 20, 'RN'),
(3832, 'Sítio Novo', 20, 'RN'),
(3833, 'Taboleiro Grande', 20, 'RN'),
(3834, 'Taipu', 20, 'RN'),
(3835, 'Tangará', 20, 'RN'),
(3836, 'Tenente Ananias', 20, 'RN'),
(3837, 'Tenente Laurentino Cruz', 20, 'RN'),
(3838, 'Tibau', 20, 'RN'),
(3839, 'Tibau do Sul', 20, 'RN'),
(3840, 'Timbaúba dos Batistas', 20, 'RN'),
(3841, 'Touros', 20, 'RN'),
(3842, 'Triunfo Potiguar', 20, 'RN'),
(3843, 'Umarizal', 20, 'RN'),
(3844, 'Upanema', 20, 'RN'),
(3845, 'Várzea', 20, 'RN'),
(3846, 'Venha-Ver', 20, 'RN'),
(3847, 'Vera Cruz', 20, 'RN'),
(3848, 'Viçosa', 20, 'RN'),
(3849, 'Vila Flor', 20, 'RN'),
(3850, 'Aceguá', 23, 'RS'),
(3851, 'Água Santa', 23, 'RS'),
(3852, 'Agudo', 23, 'RS'),
(3853, 'Ajuricaba', 23, 'RS'),
(3854, 'Alecrim', 23, 'RS'),
(3855, 'Alegrete', 23, 'RS'),
(3856, 'Alegria', 23, 'RS'),
(3857, 'Almirante Tamandaré do Sul', 23, 'RS'),
(3858, 'Alpestre', 23, 'RS'),
(3859, 'Alto Alegre', 23, 'RS'),
(3860, 'Alto Feliz', 23, 'RS'),
(3861, 'Alvorada', 23, 'RS'),
(3862, 'Amaral Ferrador', 23, 'RS'),
(3863, 'Ametista do Sul', 23, 'RS'),
(3864, 'André da Rocha', 23, 'RS'),
(3865, 'Anta Gorda', 23, 'RS'),
(3866, 'Antônio Prado', 23, 'RS'),
(3867, 'Arambaré', 23, 'RS'),
(3868, 'Araricá', 23, 'RS'),
(3869, 'Aratiba', 23, 'RS'),
(3870, 'Arroio do Meio', 23, 'RS'),
(3871, 'Arroio do Padre', 23, 'RS'),
(3872, 'Arroio do Sal', 23, 'RS'),
(3873, 'Arroio do Tigre', 23, 'RS'),
(3874, 'Arroio dos Ratos', 23, 'RS'),
(3875, 'Arroio Grande', 23, 'RS'),
(3876, 'Arvorezinha', 23, 'RS'),
(3877, 'Augusto Pestana', 23, 'RS'),
(3878, 'Áurea', 23, 'RS'),
(3879, 'Bagé', 23, 'RS'),
(3880, 'Balneário Pinhal', 23, 'RS'),
(3881, 'Barão', 23, 'RS'),
(3882, 'Barão de Cotegipe', 23, 'RS'),
(3883, 'Barão do Triunfo', 23, 'RS'),
(3884, 'Barra do Guarita', 23, 'RS'),
(3885, 'Barra do Quaraí', 23, 'RS'),
(3886, 'Barra do Ribeiro', 23, 'RS'),
(3887, 'Barra do Rio Azul', 23, 'RS'),
(3888, 'Barra Funda', 23, 'RS'),
(3889, 'Barracão', 23, 'RS'),
(3890, 'Barros Cassal', 23, 'RS'),
(3891, 'Benjamin Constant do Sul', 23, 'RS'),
(3892, 'Bento Gonçalves', 23, 'RS'),
(3893, 'Boa Vista das Missões', 23, 'RS'),
(3894, 'Boa Vista do Buricá', 23, 'RS'),
(3895, 'Boa Vista do Cadeado', 23, 'RS'),
(3896, 'Boa Vista do Incra', 23, 'RS'),
(3897, 'Boa Vista do Sul', 23, 'RS'),
(3898, 'Bom Jesus', 23, 'RS'),
(3899, 'Bom Princípio', 23, 'RS'),
(3900, 'Bom Progresso', 23, 'RS'),
(3901, 'Bom Retiro do Sul', 23, 'RS'),
(3902, 'Boqueirão do Leão', 23, 'RS'),
(3903, 'Bossoroca', 23, 'RS'),
(3904, 'Bozano', 23, 'RS'),
(3905, 'Braga', 23, 'RS'),
(3906, 'Brochier', 23, 'RS'),
(3907, 'Butiá', 23, 'RS'),
(3908, 'Caçapava do Sul', 23, 'RS'),
(3909, 'Cacequi', 23, 'RS'),
(3910, 'Cachoeira do Sul', 23, 'RS'),
(3911, 'Cachoeirinha', 23, 'RS'),
(3912, 'Cacique Doble', 23, 'RS'),
(3913, 'Caibaté', 23, 'RS'),
(3914, 'Caiçara', 23, 'RS'),
(3915, 'Camaquã', 23, 'RS'),
(3916, 'Camargo', 23, 'RS'),
(3917, 'Cambará do Sul', 23, 'RS'),
(3918, 'Campestre da Serra', 23, 'RS'),
(3919, 'Campina das Missões', 23, 'RS'),
(3920, 'Campinas do Sul', 23, 'RS'),
(3921, 'Campo Bom', 23, 'RS'),
(3922, 'Campo Novo', 23, 'RS'),
(3923, 'Campos Borges', 23, 'RS'),
(3924, 'Candelária', 23, 'RS'),
(3925, 'Cândido Godói', 23, 'RS'),
(3926, 'Candiota', 23, 'RS'),
(3927, 'Canela', 23, 'RS'),
(3928, 'Canguçu', 23, 'RS'),
(3929, 'Canoas', 23, 'RS'),
(3930, 'Canudos do Vale', 23, 'RS'),
(3931, 'Capão Bonito do Sul', 23, 'RS'),
(3932, 'Capão da Canoa', 23, 'RS'),
(3933, 'Capão do Cipó', 23, 'RS'),
(3934, 'Capão do Leão', 23, 'RS'),
(3935, 'Capela de Santana', 23, 'RS'),
(3936, 'Capitão', 23, 'RS'),
(3937, 'Capivari do Sul', 23, 'RS'),
(3938, 'Caraá', 23, 'RS'),
(3939, 'Carazinho', 23, 'RS'),
(3940, 'Carlos Barbosa', 23, 'RS'),
(3941, 'Carlos Gomes', 23, 'RS'),
(3942, 'Casca', 23, 'RS'),
(3943, 'Caseiros', 23, 'RS'),
(3944, 'Catuípe', 23, 'RS'),
(3945, 'Caxias do Sul', 23, 'RS'),
(3946, 'Centenário', 23, 'RS'),
(3947, 'Cerrito', 23, 'RS'),
(3948, 'Cerro Branco', 23, 'RS'),
(3949, 'Cerro Grande', 23, 'RS'),
(3950, 'Cerro Grande do Sul', 23, 'RS'),
(3951, 'Cerro Largo', 23, 'RS'),
(3952, 'Chapada', 23, 'RS'),
(3953, 'Charqueadas', 23, 'RS'),
(3954, 'Charrua', 23, 'RS'),
(3955, 'Chiapeta', 23, 'RS'),
(3956, 'Chuí', 23, 'RS'),
(3957, 'Chuvisca', 23, 'RS'),
(3958, 'Cidreira', 23, 'RS'),
(3959, 'Ciríaco', 23, 'RS'),
(3960, 'Colinas', 23, 'RS'),
(3961, 'Colorado', 23, 'RS'),
(3962, 'Condor', 23, 'RS'),
(3963, 'Constantina', 23, 'RS'),
(3964, 'Coqueiro Baixo', 23, 'RS'),
(3965, 'Coqueiros do Sul', 23, 'RS'),
(3966, 'Coronel Barros', 23, 'RS'),
(3967, 'Coronel Bicaco', 23, 'RS'),
(3968, 'Coronel Pilar', 23, 'RS'),
(3969, 'Cotiporã', 23, 'RS'),
(3970, 'Coxilha', 23, 'RS'),
(3971, 'Crissiumal', 23, 'RS'),
(3972, 'Cristal', 23, 'RS'),
(3973, 'Cristal do Sul', 23, 'RS'),
(3974, 'Cruz Alta', 23, 'RS'),
(3975, 'Cruzaltense', 23, 'RS'),
(3976, 'Cruzeiro do Sul', 23, 'RS'),
(3977, 'David Canabarro', 23, 'RS'),
(3978, 'Derrubadas', 23, 'RS'),
(3979, 'Dezesseis de Novembro', 23, 'RS'),
(3980, 'Dilermando de Aguiar', 23, 'RS'),
(3981, 'Dois Irmãos', 23, 'RS'),
(3982, 'Dois Irmãos das Missões', 23, 'RS'),
(3983, 'Dois Lajeados', 23, 'RS'),
(3984, 'Dom Feliciano', 23, 'RS'),
(3985, 'Dom Pedrito', 23, 'RS'),
(3986, 'Dom Pedro de Alcântara', 23, 'RS'),
(3987, 'Dona Francisca', 23, 'RS'),
(3988, 'Doutor Maurício Cardoso', 23, 'RS'),
(3989, 'Doutor Ricardo', 23, 'RS'),
(3990, 'Eldorado do Sul', 23, 'RS'),
(3991, 'Encantado', 23, 'RS'),
(3992, 'Encruzilhada do Sul', 23, 'RS'),
(3993, 'Engenho Velho', 23, 'RS'),
(3994, 'Entre Rios do Sul', 23, 'RS'),
(3995, 'Entre-Ijuís', 23, 'RS'),
(3996, 'Erebango', 23, 'RS'),
(3997, 'Erechim', 23, 'RS'),
(3998, 'Ernestina', 23, 'RS'),
(3999, 'Erval Grande', 23, 'RS'),
(4000, 'Erval Seco', 23, 'RS'),
(4001, 'Esmeralda', 23, 'RS'),
(4002, 'Esperança do Sul', 23, 'RS'),
(4003, 'Espumoso', 23, 'RS'),
(4004, 'Estação', 23, 'RS'),
(4005, 'Estância Velha', 23, 'RS'),
(4006, 'Esteio', 23, 'RS'),
(4007, 'Estrela', 23, 'RS'),
(4008, 'Estrela Velha', 23, 'RS'),
(4009, 'Eugênio de Castro', 23, 'RS'),
(4010, 'Fagundes Varela', 23, 'RS'),
(4011, 'Farroupilha', 23, 'RS'),
(4012, 'Faxinal do Soturno', 23, 'RS'),
(4013, 'Faxinalzinho', 23, 'RS'),
(4014, 'Fazenda Vilanova', 23, 'RS'),
(4015, 'Feliz', 23, 'RS'),
(4016, 'Flores da Cunha', 23, 'RS'),
(4017, 'Floriano Peixoto', 23, 'RS'),
(4018, 'Fontoura Xavier', 23, 'RS'),
(4019, 'Formigueiro', 23, 'RS'),
(4020, 'Forquetinha', 23, 'RS'),
(4021, 'Fortaleza dos Valos', 23, 'RS'),
(4022, 'Frederico Westphalen', 23, 'RS'),
(4023, 'Garibaldi', 23, 'RS'),
(4024, 'Garruchos', 23, 'RS'),
(4025, 'Gaurama', 23, 'RS'),
(4026, 'General Câmara', 23, 'RS'),
(4027, 'Gentil', 23, 'RS'),
(4028, 'Getúlio Vargas', 23, 'RS'),
(4029, 'Giruá', 23, 'RS'),
(4030, 'Glorinha', 23, 'RS'),
(4031, 'Gramado', 23, 'RS'),
(4032, 'Gramado dos Loureiros', 23, 'RS'),
(4033, 'Gramado Xavier', 23, 'RS'),
(4034, 'Gravataí', 23, 'RS'),
(4035, 'Guabiju', 23, 'RS'),
(4036, 'Guaíba', 23, 'RS'),
(4037, 'Guaporé', 23, 'RS'),
(4038, 'Guarani das Missões', 23, 'RS'),
(4039, 'Harmonia', 23, 'RS'),
(4040, 'Herval', 23, 'RS'),
(4041, 'Herveiras', 23, 'RS'),
(4042, 'Horizontina', 23, 'RS'),
(4043, 'Hulha Negra', 23, 'RS'),
(4044, 'Humaitá', 23, 'RS'),
(4045, 'Ibarama', 23, 'RS'),
(4046, 'Ibiaçá', 23, 'RS'),
(4047, 'Ibiraiaras', 23, 'RS'),
(4048, 'Ibirapuitã', 23, 'RS'),
(4049, 'Ibirubá', 23, 'RS'),
(4050, 'Igrejinha', 23, 'RS'),
(4051, 'Ijuí', 23, 'RS'),
(4052, 'Ilópolis', 23, 'RS'),
(4053, 'Imbé', 23, 'RS'),
(4054, 'Imigrante', 23, 'RS'),
(4055, 'Independência', 23, 'RS'),
(4056, 'Inhacorá', 23, 'RS'),
(4057, 'Ipê', 23, 'RS'),
(4058, 'Ipiranga do Sul', 23, 'RS'),
(4059, 'Iraí', 23, 'RS'),
(4060, 'Itaara', 23, 'RS'),
(4061, 'Itacurubi', 23, 'RS'),
(4062, 'Itapuca', 23, 'RS'),
(4063, 'Itaqui', 23, 'RS'),
(4064, 'Itati', 23, 'RS'),
(4065, 'Itatiba do Sul', 23, 'RS'),
(4066, 'Ivorá', 23, 'RS'),
(4067, 'Ivoti', 23, 'RS'),
(4068, 'Jaboticaba', 23, 'RS'),
(4069, 'Jacuizinho', 23, 'RS'),
(4070, 'Jacutinga', 23, 'RS'),
(4071, 'Jaguarão', 23, 'RS'),
(4072, 'Jaguari', 23, 'RS'),
(4073, 'Jaquirana', 23, 'RS'),
(4074, 'Jari', 23, 'RS'),
(4075, 'Jóia', 23, 'RS'),
(4076, 'Júlio de Castilhos', 23, 'RS'),
(4077, 'Lagoa Bonita do Sul', 23, 'RS'),
(4078, 'Lagoa dos Três Cantos', 23, 'RS'),
(4079, 'Lagoa Vermelha', 23, 'RS'),
(4080, 'Lagoão', 23, 'RS'),
(4081, 'Lajeado', 23, 'RS'),
(4082, 'Lajeado do Bugre', 23, 'RS'),
(4083, 'Lavras do Sul', 23, 'RS'),
(4084, 'Liberato Salzano', 23, 'RS'),
(4085, 'Lindolfo Collor', 23, 'RS'),
(4086, 'Linha Nova', 23, 'RS'),
(4087, 'Maçambara', 23, 'RS'),
(4088, 'Machadinho', 23, 'RS'),
(4089, 'Mampituba', 23, 'RS'),
(4090, 'Manoel Viana', 23, 'RS'),
(4091, 'Maquiné', 23, 'RS'),
(4092, 'Maratá', 23, 'RS'),
(4093, 'Marau', 23, 'RS'),
(4094, 'Marcelino Ramos', 23, 'RS'),
(4095, 'Mariana Pimentel', 23, 'RS'),
(4096, 'Mariano Moro', 23, 'RS'),
(4097, 'Marques de Souza', 23, 'RS'),
(4098, 'Mata', 23, 'RS'),
(4099, 'Mato Castelhano', 23, 'RS'),
(4100, 'Mato Leitão', 23, 'RS'),
(4101, 'Mato Queimado', 23, 'RS'),
(4102, 'Maximiliano de Almeida', 23, 'RS'),
(4103, 'Minas do Leão', 23, 'RS'),
(4104, 'Miraguaí', 23, 'RS'),
(4105, 'Montauri', 23, 'RS'),
(4106, 'Monte Alegre dos Campos', 23, 'RS'),
(4107, 'Monte Belo do Sul', 23, 'RS'),
(4108, 'Montenegro', 23, 'RS'),
(4109, 'Mormaço', 23, 'RS'),
(4110, 'Morrinhos do Sul', 23, 'RS'),
(4111, 'Morro Redondo', 23, 'RS'),
(4112, 'Morro Reuter', 23, 'RS'),
(4113, 'Mostardas', 23, 'RS'),
(4114, 'Muçum', 23, 'RS'),
(4115, 'Muitos Capões', 23, 'RS'),
(4116, 'Muliterno', 23, 'RS'),
(4117, 'Não-Me-Toque', 23, 'RS'),
(4118, 'Nicolau Vergueiro', 23, 'RS'),
(4119, 'Nonoai', 23, 'RS'),
(4120, 'Nova Alvorada', 23, 'RS'),
(4121, 'Nova Araçá', 23, 'RS'),
(4122, 'Nova Bassano', 23, 'RS'),
(4123, 'Nova Boa Vista', 23, 'RS'),
(4124, 'Nova Bréscia', 23, 'RS'),
(4125, 'Nova Candelária', 23, 'RS'),
(4126, 'Nova Esperança do Sul', 23, 'RS'),
(4127, 'Nova Hartz', 23, 'RS'),
(4128, 'Nova Pádua', 23, 'RS'),
(4129, 'Nova Palma', 23, 'RS'),
(4130, 'Nova Petrópolis', 23, 'RS'),
(4131, 'Nova Prata', 23, 'RS'),
(4132, 'Nova Ramada', 23, 'RS'),
(4133, 'Nova Roma do Sul', 23, 'RS'),
(4134, 'Nova Santa Rita', 23, 'RS'),
(4135, 'Novo Barreiro', 23, 'RS'),
(4136, 'Novo Cabrais', 23, 'RS'),
(4137, 'Novo Hamburgo', 23, 'RS'),
(4138, 'Novo Machado', 23, 'RS'),
(4139, 'Novo Tiradentes', 23, 'RS'),
(4140, 'Novo Xingu', 23, 'RS'),
(4141, 'Osório', 23, 'RS'),
(4142, 'Paim Filho', 23, 'RS'),
(4143, 'Palmares do Sul', 23, 'RS'),
(4144, 'Palmeira das Missões', 23, 'RS'),
(4145, 'Palmitinho', 23, 'RS'),
(4146, 'Panambi', 23, 'RS'),
(4147, 'Pantano Grande', 23, 'RS'),
(4148, 'Paraí', 23, 'RS'),
(4149, 'Paraíso do Sul', 23, 'RS'),
(4150, 'Pareci Novo', 23, 'RS'),
(4151, 'Parobé', 23, 'RS'),
(4152, 'Passa Sete', 23, 'RS'),
(4153, 'Passo do Sobrado', 23, 'RS'),
(4154, 'Passo Fundo', 23, 'RS'),
(4155, 'Paulo Bento', 23, 'RS'),
(4156, 'Paverama', 23, 'RS'),
(4157, 'Pedras Altas', 23, 'RS'),
(4158, 'Pedro Osório', 23, 'RS'),
(4159, 'Pejuçara', 23, 'RS'),
(4160, 'Pelotas', 23, 'RS'),
(4161, 'Picada Café', 23, 'RS'),
(4162, 'Pinhal', 23, 'RS'),
(4163, 'Pinhal da Serra', 23, 'RS'),
(4164, 'Pinhal Grande', 23, 'RS'),
(4165, 'Pinheirinho do Vale', 23, 'RS'),
(4166, 'Pinheiro Machado', 23, 'RS'),
(4167, 'Pirapó', 23, 'RS'),
(4168, 'Piratini', 23, 'RS'),
(4169, 'Planalto', 23, 'RS'),
(4170, 'Poço das Antas', 23, 'RS'),
(4171, 'Pontão', 23, 'RS'),
(4172, 'Ponte Preta', 23, 'RS'),
(4173, 'Portão', 23, 'RS'),
(4174, 'Porto Alegre', 23, 'RS'),
(4175, 'Porto Lucena', 23, 'RS'),
(4176, 'Porto Mauá', 23, 'RS'),
(4177, 'Porto Vera Cruz', 23, 'RS'),
(4178, 'Porto Xavier', 23, 'RS'),
(4179, 'Pouso Novo', 23, 'RS'),
(4180, 'Presidente Lucena', 23, 'RS'),
(4181, 'Progresso', 23, 'RS'),
(4182, 'Protásio Alves', 23, 'RS'),
(4183, 'Putinga', 23, 'RS'),
(4184, 'Quaraí', 23, 'RS'),
(4185, 'Quatro Irmãos', 23, 'RS'),
(4186, 'Quevedos', 23, 'RS'),
(4187, 'Quinze de Novembro', 23, 'RS'),
(4188, 'Redentora', 23, 'RS'),
(4189, 'Relvado', 23, 'RS'),
(4190, 'Restinga Seca', 23, 'RS'),
(4191, 'Rio dos Índios', 23, 'RS'),
(4192, 'Rio Grande', 23, 'RS'),
(4193, 'Rio Pardo', 23, 'RS'),
(4194, 'Riozinho', 23, 'RS'),
(4195, 'Roca Sales', 23, 'RS'),
(4196, 'Rodeio Bonito', 23, 'RS'),
(4197, 'Rolador', 23, 'RS'),
(4198, 'Rolante', 23, 'RS'),
(4199, 'Ronda Alta', 23, 'RS'),
(4200, 'Rondinha', 23, 'RS'),
(4201, 'Roque Gonzales', 23, 'RS'),
(4202, 'Rosário do Sul', 23, 'RS'),
(4203, 'Sagrada Família', 23, 'RS'),
(4204, 'Saldanha Marinho', 23, 'RS'),
(4205, 'Salto do Jacuí', 23, 'RS'),
(4206, 'Salvador das Missões', 23, 'RS'),
(4207, 'Salvador do Sul', 23, 'RS'),
(4208, 'Sananduva', 23, 'RS'),
(4209, 'Santa Bárbara do Sul', 23, 'RS'),
(4210, 'Santa Cecília do Sul', 23, 'RS'),
(4211, 'Santa Clara do Sul', 23, 'RS'),
(4212, 'Santa Cruz do Sul', 23, 'RS'),
(4213, 'Santa Margarida do Sul', 23, 'RS'),
(4214, 'Santa Maria', 23, 'RS'),
(4215, 'Santa Maria do Herval', 23, 'RS'),
(4216, 'Santa Rosa', 23, 'RS'),
(4217, 'Santa Tereza', 23, 'RS'),
(4218, 'Santa Vitória do Palmar', 23, 'RS'),
(4219, 'Santana da Boa Vista', 23, 'RS'),
(4220, 'Santana do Livramento', 23, 'RS'),
(4221, 'Santiago', 23, 'RS'),
(4222, 'Santo Ângelo', 23, 'RS'),
(4223, 'Santo Antônio da Patrulha', 23, 'RS'),
(4224, 'Santo Antônio das Missões', 23, 'RS'),
(4225, 'Santo Antônio do Palma', 23, 'RS'),
(4226, 'Santo Antônio do Planalto', 23, 'RS'),
(4227, 'Santo Augusto', 23, 'RS'),
(4228, 'Santo Cristo', 23, 'RS'),
(4229, 'Santo Expedito do Sul', 23, 'RS'),
(4230, 'São Borja', 23, 'RS'),
(4231, 'São Domingos do Sul', 23, 'RS'),
(4232, 'São Francisco de Assis', 23, 'RS'),
(4233, 'São Francisco de Paula', 23, 'RS'),
(4234, 'São Gabriel', 23, 'RS'),
(4235, 'São Jerônimo', 23, 'RS'),
(4236, 'São João da Urtiga', 23, 'RS'),
(4237, 'São João do Polêsine', 23, 'RS'),
(4238, 'São Jorge', 23, 'RS'),
(4239, 'São José das Missões', 23, 'RS'),
(4240, 'São José do Herval', 23, 'RS'),
(4241, 'São José do Hortêncio', 23, 'RS'),
(4242, 'São José do Inhacorá', 23, 'RS'),
(4243, 'São José do Norte', 23, 'RS'),
(4244, 'São José do Ouro', 23, 'RS'),
(4245, 'São José do Sul', 23, 'RS'),
(4246, 'São José dos Ausentes', 23, 'RS'),
(4247, 'São Leopoldo', 23, 'RS'),
(4248, 'São Lourenço do Sul', 23, 'RS'),
(4249, 'São Luiz Gonzaga', 23, 'RS'),
(4250, 'São Marcos', 23, 'RS'),
(4251, 'São Martinho', 23, 'RS'),
(4252, 'São Martinho da Serra', 23, 'RS'),
(4253, 'São Miguel das Missões', 23, 'RS'),
(4254, 'São Nicolau', 23, 'RS'),
(4255, 'São Paulo das Missões', 23, 'RS'),
(4256, 'São Pedro da Serra', 23, 'RS'),
(4257, 'São Pedro das Missões', 23, 'RS'),
(4258, 'São Pedro do Butiá', 23, 'RS'),
(4259, 'São Pedro do Sul', 23, 'RS'),
(4260, 'São Sebastião do Caí', 23, 'RS'),
(4261, 'São Sepé', 23, 'RS'),
(4262, 'São Valentim', 23, 'RS'),
(4263, 'São Valentim do Sul', 23, 'RS'),
(4264, 'São Valério do Sul', 23, 'RS'),
(4265, 'São Vendelino', 23, 'RS'),
(4266, 'São Vicente do Sul', 23, 'RS'),
(4267, 'Sapiranga', 23, 'RS'),
(4268, 'Sapucaia do Sul', 23, 'RS'),
(4269, 'Sarandi', 23, 'RS'),
(4270, 'Seberi', 23, 'RS'),
(4271, 'Sede Nova', 23, 'RS'),
(4272, 'Segredo', 23, 'RS'),
(4273, 'Selbach', 23, 'RS'),
(4274, 'Senador Salgado Filho', 23, 'RS'),
(4275, 'Sentinela do Sul', 23, 'RS'),
(4276, 'Serafina Corrêa', 23, 'RS'),
(4277, 'Sério', 23, 'RS'),
(4278, 'Sertão', 23, 'RS'),
(4279, 'Sertão Santana', 23, 'RS'),
(4280, 'Sete de Setembro', 23, 'RS'),
(4281, 'Severiano de Almeida', 23, 'RS'),
(4282, 'Silveira Martins', 23, 'RS'),
(4283, 'Sinimbu', 23, 'RS'),
(4284, 'Sobradinho', 23, 'RS'),
(4285, 'Soledade', 23, 'RS'),
(4286, 'Tabaí', 23, 'RS'),
(4287, 'Tapejara', 23, 'RS'),
(4288, 'Tapera', 23, 'RS'),
(4289, 'Tapes', 23, 'RS'),
(4290, 'Taquara', 23, 'RS'),
(4291, 'Taquari', 23, 'RS'),
(4292, 'Taquaruçu do Sul', 23, 'RS'),
(4293, 'Tavares', 23, 'RS'),
(4294, 'Tenente Portela', 23, 'RS'),
(4295, 'Terra de Areia', 23, 'RS'),
(4296, 'Teutônia', 23, 'RS'),
(4297, 'Tio Hugo', 23, 'RS'),
(4298, 'Tiradentes do Sul', 23, 'RS'),
(4299, 'Toropi', 23, 'RS'),
(4300, 'Torres', 23, 'RS'),
(4301, 'Tramandaí', 23, 'RS'),
(4302, 'Travesseiro', 23, 'RS'),
(4303, 'Três Arroios', 23, 'RS'),
(4304, 'Três Cachoeiras', 23, 'RS'),
(4305, 'Três Coroas', 23, 'RS'),
(4306, 'Três de Maio', 23, 'RS'),
(4307, 'Três Forquilhas', 23, 'RS'),
(4308, 'Três Palmeiras', 23, 'RS'),
(4309, 'Três Passos', 23, 'RS'),
(4310, 'Trindade do Sul', 23, 'RS'),
(4311, 'Triunfo', 23, 'RS'),
(4312, 'Tucunduva', 23, 'RS'),
(4313, 'Tunas', 23, 'RS'),
(4314, 'Tupanci do Sul', 23, 'RS'),
(4315, 'Tupanciretã', 23, 'RS'),
(4316, 'Tupandi', 23, 'RS'),
(4317, 'Tuparendi', 23, 'RS'),
(4318, 'Turuçu', 23, 'RS'),
(4319, 'Ubiretama', 23, 'RS'),
(4320, 'União da Serra', 23, 'RS'),
(4321, 'Unistalda', 23, 'RS'),
(4322, 'Uruguaiana', 23, 'RS'),
(4323, 'Vacaria', 23, 'RS'),
(4324, 'Vale do Sol', 23, 'RS'),
(4325, 'Vale Real', 23, 'RS'),
(4326, 'Vale Verde', 23, 'RS'),
(4327, 'Vanini', 23, 'RS'),
(4328, 'Venâncio Aires', 23, 'RS'),
(4329, 'Vera Cruz', 23, 'RS'),
(4330, 'Veranópolis', 23, 'RS'),
(4331, 'Vespasiano Correa', 23, 'RS'),
(4332, 'Viadutos', 23, 'RS'),
(4333, 'Viamão', 23, 'RS'),
(4334, 'Vicente Dutra', 23, 'RS'),
(4335, 'Victor Graeff', 23, 'RS'),
(4336, 'Vila Flores', 23, 'RS'),
(4337, 'Vila Lângaro', 23, 'RS'),
(4338, 'Vila Maria', 23, 'RS'),
(4339, 'Vila Nova do Sul', 23, 'RS'),
(4340, 'Vista Alegre', 23, 'RS'),
(4341, 'Vista Alegre do Prata', 23, 'RS'),
(4342, 'Vista Gaúcha', 23, 'RS'),
(4343, 'Vitória das Missões', 23, 'RS'),
(4344, 'Westfália', 23, 'RS'),
(4345, 'Xangri-lá', 23, 'RS'),
(4346, 'Alta Floresta d`Oeste', 21, 'RO'),
(4347, 'Alto Alegre dos Parecis', 21, 'RO'),
(4348, 'Alto Paraíso', 21, 'RO'),
(4349, 'Alvorada d`Oeste', 21, 'RO'),
(4350, 'Ariquemes', 21, 'RO'),
(4351, 'Buritis', 21, 'RO'),
(4352, 'Cabixi', 21, 'RO'),
(4353, 'Cacaulândia', 21, 'RO'),
(4354, 'Cacoal', 21, 'RO'),
(4355, 'Campo Novo de Rondônia', 21, 'RO'),
(4356, 'Candeias do Jamari', 21, 'RO'),
(4357, 'Castanheiras', 21, 'RO'),
(4358, 'Cerejeiras', 21, 'RO'),
(4359, 'Chupinguaia', 21, 'RO'),
(4360, 'Colorado do Oeste', 21, 'RO'),
(4361, 'Corumbiara', 21, 'RO'),
(4362, 'Costa Marques', 21, 'RO'),
(4363, 'Cujubim', 21, 'RO'),
(4364, 'Espigão d`Oeste', 21, 'RO'),
(4365, 'Governador Jorge Teixeira', 21, 'RO'),
(4366, 'Guajará-Mirim', 21, 'RO'),
(4367, 'Itapuã do Oeste', 21, 'RO'),
(4368, 'Jaru', 21, 'RO'),
(4369, 'Ji-Paraná', 21, 'RO'),
(4370, 'Machadinho d`Oeste', 21, 'RO'),
(4371, 'Ministro Andreazza', 21, 'RO'),
(4372, 'Mirante da Serra', 21, 'RO'),
(4373, 'Monte Negro', 21, 'RO'),
(4374, 'Nova Brasilândia d`Oeste', 21, 'RO'),
(4375, 'Nova Mamoré', 21, 'RO'),
(4376, 'Nova União', 21, 'RO'),
(4377, 'Novo Horizonte do Oeste', 21, 'RO'),
(4378, 'Ouro Preto do Oeste', 21, 'RO'),
(4379, 'Parecis', 21, 'RO'),
(4380, 'Pimenta Bueno', 21, 'RO'),
(4381, 'Pimenteiras do Oeste', 21, 'RO'),
(4382, 'Porto Velho', 21, 'RO'),
(4383, 'Presidente Médici', 21, 'RO'),
(4384, 'Primavera de Rondônia', 21, 'RO'),
(4385, 'Rio Crespo', 21, 'RO'),
(4386, 'Rolim de Moura', 21, 'RO'),
(4387, 'Santa Luzia d`Oeste', 21, 'RO'),
(4388, 'São Felipe d`Oeste', 21, 'RO'),
(4389, 'São Francisco do Guaporé', 21, 'RO'),
(4390, 'São Miguel do Guaporé', 21, 'RO'),
(4391, 'Seringueiras', 21, 'RO'),
(4392, 'Teixeirópolis', 21, 'RO'),
(4393, 'Theobroma', 21, 'RO'),
(4394, 'Urupá', 21, 'RO'),
(4395, 'Vale do Anari', 21, 'RO'),
(4396, 'Vale do Paraíso', 21, 'RO'),
(4397, 'Vilhena', 21, 'RO'),
(4398, 'Alto Alegre', 22, 'RR'),
(4399, 'Amajari', 22, 'RR'),
(4400, 'Boa Vista', 22, 'RR'),
(4401, 'Bonfim', 22, 'RR'),
(4402, 'Cantá', 22, 'RR'),
(4403, 'Caracaraí', 22, 'RR'),
(4404, 'Caroebe', 22, 'RR'),
(4405, 'Iracema', 22, 'RR'),
(4406, 'Mucajaí', 22, 'RR'),
(4407, 'Normandia', 22, 'RR'),
(4408, 'Pacaraima', 22, 'RR'),
(4409, 'Rorainópolis', 22, 'RR'),
(4410, 'São João da Baliza', 22, 'RR'),
(4411, 'São Luiz', 22, 'RR'),
(4412, 'Uiramutã', 22, 'RR'),
(4413, 'Abdon Batista', 24, 'SC'),
(4414, 'Abelardo Luz', 24, 'SC'),
(4415, 'Agrolândia', 24, 'SC'),
(4416, 'Agronômica', 24, 'SC'),
(4417, 'Água Doce', 24, 'SC'),
(4418, 'Águas de Chapecó', 24, 'SC'),
(4419, 'Águas Frias', 24, 'SC'),
(4420, 'Águas Mornas', 24, 'SC'),
(4421, 'Alfredo Wagner', 24, 'SC'),
(4422, 'Alto Bela Vista', 24, 'SC'),
(4423, 'Anchieta', 24, 'SC'),
(4424, 'Angelina', 24, 'SC'),
(4425, 'Anita Garibaldi', 24, 'SC'),
(4426, 'Anitápolis', 24, 'SC'),
(4427, 'Antônio Carlos', 24, 'SC'),
(4428, 'Apiúna', 24, 'SC'),
(4429, 'Arabutã', 24, 'SC'),
(4430, 'Araquari', 24, 'SC'),
(4431, 'Araranguá', 24, 'SC'),
(4432, 'Armazém', 24, 'SC'),
(4433, 'Arroio Trinta', 24, 'SC'),
(4434, 'Arvoredo', 24, 'SC'),
(4435, 'Ascurra', 24, 'SC'),
(4436, 'Atalanta', 24, 'SC'),
(4437, 'Aurora', 24, 'SC'),
(4438, 'Balneário Arroio do Silva', 24, 'SC'),
(4439, 'Balneário Barra do Sul', 24, 'SC'),
(4440, 'Balneário Camboriú', 24, 'SC'),
(4441, 'Balneário Gaivota', 24, 'SC'),
(4442, 'Bandeirante', 24, 'SC'),
(4443, 'Barra Bonita', 24, 'SC'),
(4444, 'Barra Velha', 24, 'SC'),
(4445, 'Bela Vista do Toldo', 24, 'SC'),
(4446, 'Belmonte', 24, 'SC'),
(4447, 'Benedito Novo', 24, 'SC'),
(4448, 'Biguaçu', 24, 'SC'),
(4449, 'Blumenau', 24, 'SC'),
(4450, 'Bocaina do Sul', 24, 'SC'),
(4451, 'Bom Jardim da Serra', 24, 'SC'),
(4452, 'Bom Jesus', 24, 'SC'),
(4453, 'Bom Jesus do Oeste', 24, 'SC'),
(4454, 'Bom Retiro', 24, 'SC'),
(4455, 'Bombinhas', 24, 'SC'),
(4456, 'Botuverá', 24, 'SC'),
(4457, 'Braço do Norte', 24, 'SC'),
(4458, 'Braço do Trombudo', 24, 'SC'),
(4459, 'Brunópolis', 24, 'SC'),
(4460, 'Brusque', 24, 'SC'),
(4461, 'Caçador', 24, 'SC'),
(4462, 'Caibi', 24, 'SC'),
(4463, 'Calmon', 24, 'SC'),
(4464, 'Camboriú', 24, 'SC'),
(4465, 'Campo Alegre', 24, 'SC'),
(4466, 'Campo Belo do Sul', 24, 'SC'),
(4467, 'Campo Erê', 24, 'SC'),
(4468, 'Campos Novos', 24, 'SC'),
(4469, 'Canelinha', 24, 'SC'),
(4470, 'Canoinhas', 24, 'SC'),
(4471, 'Capão Alto', 24, 'SC'),
(4472, 'Capinzal', 24, 'SC'),
(4473, 'Capivari de Baixo', 24, 'SC'),
(4474, 'Catanduvas', 24, 'SC'),
(4475, 'Caxambu do Sul', 24, 'SC'),
(4476, 'Celso Ramos', 24, 'SC'),
(4477, 'Cerro Negro', 24, 'SC'),
(4478, 'Chapadão do Lageado', 24, 'SC'),
(4479, 'Chapecó', 24, 'SC'),
(4480, 'Cocal do Sul', 24, 'SC'),
(4481, 'Concórdia', 24, 'SC'),
(4482, 'Cordilheira Alta', 24, 'SC'),
(4483, 'Coronel Freitas', 24, 'SC'),
(4484, 'Coronel Martins', 24, 'SC'),
(4485, 'Correia Pinto', 24, 'SC'),
(4486, 'Corupá', 24, 'SC'),
(4487, 'Criciúma', 24, 'SC'),
(4488, 'Cunha Porã', 24, 'SC'),
(4489, 'Cunhataí', 24, 'SC'),
(4490, 'Curitibanos', 24, 'SC'),
(4491, 'Descanso', 24, 'SC'),
(4492, 'Dionísio Cerqueira', 24, 'SC'),
(4493, 'Dona Emma', 24, 'SC'),
(4494, 'Doutor Pedrinho', 24, 'SC'),
(4495, 'Entre Rios', 24, 'SC'),
(4496, 'Ermo', 24, 'SC'),
(4497, 'Erval Velho', 24, 'SC'),
(4498, 'Faxinal dos Guedes', 24, 'SC'),
(4499, 'Flor do Sertão', 24, 'SC'),
(4500, 'Florianópolis', 24, 'SC'),
(4501, 'Formosa do Sul', 24, 'SC'),
(4502, 'Forquilhinha', 24, 'SC'),
(4503, 'Fraiburgo', 24, 'SC'),
(4504, 'Frei Rogério', 24, 'SC'),
(4505, 'Galvão', 24, 'SC'),
(4506, 'Garopaba', 24, 'SC'),
(4507, 'Garuva', 24, 'SC'),
(4508, 'Gaspar', 24, 'SC'),
(4509, 'Governador Celso Ramos', 24, 'SC'),
(4510, 'Grão Pará', 24, 'SC'),
(4511, 'Gravatal', 24, 'SC'),
(4512, 'Guabiruba', 24, 'SC'),
(4513, 'Guaraciaba', 24, 'SC'),
(4514, 'Guaramirim', 24, 'SC'),
(4515, 'Guarujá do Sul', 24, 'SC'),
(4516, 'Guatambú', 24, 'SC'),
(4517, 'Herval d`Oeste', 24, 'SC'),
(4518, 'Ibiam', 24, 'SC'),
(4519, 'Ibicaré', 24, 'SC'),
(4520, 'Ibirama', 24, 'SC'),
(4521, 'Içara', 24, 'SC'),
(4522, 'Ilhota', 24, 'SC'),
(4523, 'Imaruí', 24, 'SC'),
(4524, 'Imbituba', 24, 'SC'),
(4525, 'Imbuia', 24, 'SC'),
(4526, 'Indaial', 24, 'SC'),
(4527, 'Iomerê', 24, 'SC'),
(4528, 'Ipira', 24, 'SC'),
(4529, 'Iporã do Oeste', 24, 'SC'),
(4530, 'Ipuaçu', 24, 'SC'),
(4531, 'Ipumirim', 24, 'SC'),
(4532, 'Iraceminha', 24, 'SC'),
(4533, 'Irani', 24, 'SC'),
(4534, 'Irati', 24, 'SC'),
(4535, 'Irineópolis', 24, 'SC'),
(4536, 'Itá', 24, 'SC'),
(4537, 'Itaiópolis', 24, 'SC'),
(4538, 'Itajaí', 24, 'SC'),
(4539, 'Itapema', 24, 'SC'),
(4540, 'Itapiranga', 24, 'SC'),
(4541, 'Itapoá', 24, 'SC'),
(4542, 'Ituporanga', 24, 'SC'),
(4543, 'Jaborá', 24, 'SC'),
(4544, 'Jacinto Machado', 24, 'SC'),
(4545, 'Jaguaruna', 24, 'SC'),
(4546, 'Jaraguá do Sul', 24, 'SC'),
(4547, 'Jardinópolis', 24, 'SC'),
(4548, 'Joaçaba', 24, 'SC'),
(4549, 'Joinville', 24, 'SC'),
(4550, 'José Boiteux', 24, 'SC'),
(4551, 'Jupiá', 24, 'SC'),
(4552, 'Lacerdópolis', 24, 'SC'),
(4553, 'Lages', 24, 'SC'),
(4554, 'Laguna', 24, 'SC'),
(4555, 'Lajeado Grande', 24, 'SC'),
(4556, 'Laurentino', 24, 'SC'),
(4557, 'Lauro Muller', 24, 'SC'),
(4558, 'Lebon Régis', 24, 'SC'),
(4559, 'Leoberto Leal', 24, 'SC'),
(4560, 'Lindóia do Sul', 24, 'SC'),
(4561, 'Lontras', 24, 'SC'),
(4562, 'Luiz Alves', 24, 'SC'),
(4563, 'Luzerna', 24, 'SC'),
(4564, 'Macieira', 24, 'SC'),
(4565, 'Mafra', 24, 'SC'),
(4566, 'Major Gercino', 24, 'SC'),
(4567, 'Major Vieira', 24, 'SC'),
(4568, 'Maracajá', 24, 'SC'),
(4569, 'Maravilha', 24, 'SC'),
(4570, 'Marema', 24, 'SC'),
(4571, 'Massaranduba', 24, 'SC'),
(4572, 'Matos Costa', 24, 'SC'),
(4573, 'Meleiro', 24, 'SC'),
(4574, 'Mirim Doce', 24, 'SC'),
(4575, 'Modelo', 24, 'SC'),
(4576, 'Mondaí', 24, 'SC'),
(4577, 'Monte Carlo', 24, 'SC'),
(4578, 'Monte Castelo', 24, 'SC'),
(4579, 'Morro da Fumaça', 24, 'SC'),
(4580, 'Morro Grande', 24, 'SC'),
(4581, 'Navegantes', 24, 'SC'),
(4582, 'Nova Erechim', 24, 'SC'),
(4583, 'Nova Itaberaba', 24, 'SC'),
(4584, 'Nova Trento', 24, 'SC'),
(4585, 'Nova Veneza', 24, 'SC'),
(4586, 'Novo Horizonte', 24, 'SC'),
(4587, 'Orleans', 24, 'SC'),
(4588, 'Otacílio Costa', 24, 'SC'),
(4589, 'Ouro', 24, 'SC'),
(4590, 'Ouro Verde', 24, 'SC'),
(4591, 'Paial', 24, 'SC'),
(4592, 'Painel', 24, 'SC'),
(4593, 'Palhoça', 24, 'SC'),
(4594, 'Palma Sola', 24, 'SC'),
(4595, 'Palmeira', 24, 'SC'),
(4596, 'Palmitos', 24, 'SC'),
(4597, 'Papanduva', 24, 'SC'),
(4598, 'Paraíso', 24, 'SC'),
(4599, 'Passo de Torres', 24, 'SC'),
(4600, 'Passos Maia', 24, 'SC'),
(4601, 'Paulo Lopes', 24, 'SC'),
(4602, 'Pedras Grandes', 24, 'SC'),
(4603, 'Penha', 24, 'SC'),
(4604, 'Peritiba', 24, 'SC'),
(4605, 'Petrolândia', 24, 'SC'),
(4606, 'Piçarras', 24, 'SC'),
(4607, 'Pinhalzinho', 24, 'SC'),
(4608, 'Pinheiro Preto', 24, 'SC'),
(4609, 'Piratuba', 24, 'SC'),
(4610, 'Planalto Alegre', 24, 'SC'),
(4611, 'Pomerode', 24, 'SC'),
(4612, 'Ponte Alta', 24, 'SC'),
(4613, 'Ponte Alta do Norte', 24, 'SC'),
(4614, 'Ponte Serrada', 24, 'SC'),
(4615, 'Porto Belo', 24, 'SC'),
(4616, 'Porto União', 24, 'SC'),
(4617, 'Pouso Redondo', 24, 'SC'),
(4618, 'Praia Grande', 24, 'SC'),
(4619, 'Presidente Castelo Branco', 24, 'SC'),
(4620, 'Presidente Getúlio', 24, 'SC'),
(4621, 'Presidente Nereu', 24, 'SC'),
(4622, 'Princesa', 24, 'SC'),
(4623, 'Quilombo', 24, 'SC'),
(4624, 'Rancho Queimado', 24, 'SC'),
(4625, 'Rio das Antas', 24, 'SC'),
(4626, 'Rio do Campo', 24, 'SC'),
(4627, 'Rio do Oeste', 24, 'SC'),
(4628, 'Rio do Sul', 24, 'SC'),
(4629, 'Rio dos Cedros', 24, 'SC'),
(4630, 'Rio Fortuna', 24, 'SC'),
(4631, 'Rio Negrinho', 24, 'SC'),
(4632, 'Rio Rufino', 24, 'SC'),
(4633, 'Riqueza', 24, 'SC'),
(4634, 'Rodeio', 24, 'SC'),
(4635, 'Romelândia', 24, 'SC'),
(4636, 'Salete', 24, 'SC'),
(4637, 'Saltinho', 24, 'SC'),
(4638, 'Salto Veloso', 24, 'SC'),
(4639, 'Sangão', 24, 'SC'),
(4640, 'Santa Cecília', 24, 'SC'),
(4641, 'Santa Helena', 24, 'SC'),
(4642, 'Santa Rosa de Lima', 24, 'SC'),
(4643, 'Santa Rosa do Sul', 24, 'SC'),
(4644, 'Santa Terezinha', 24, 'SC'),
(4645, 'Santa Terezinha do Progresso', 24, 'SC'),
(4646, 'Santiago do Sul', 24, 'SC'),
(4647, 'Santo Amaro da Imperatriz', 24, 'SC'),
(4648, 'São Bento do Sul', 24, 'SC'),
(4649, 'São Bernardino', 24, 'SC'),
(4650, 'São Bonifácio', 24, 'SC'),
(4651, 'São Carlos', 24, 'SC'),
(4652, 'São Cristovão do Sul', 24, 'SC'),
(4653, 'São Domingos', 24, 'SC'),
(4654, 'São Francisco do Sul', 24, 'SC'),
(4655, 'São João Batista', 24, 'SC'),
(4656, 'São João do Itaperiú', 24, 'SC'),
(4657, 'São João do Oeste', 24, 'SC'),
(4658, 'São João do Sul', 24, 'SC'),
(4659, 'São Joaquim', 24, 'SC'),
(4660, 'São José', 24, 'SC'),
(4661, 'São José do Cedro', 24, 'SC'),
(4662, 'São José do Cerrito', 24, 'SC'),
(4663, 'São Lourenço do Oeste', 24, 'SC'),
(4664, 'São Ludgero', 24, 'SC'),
(4665, 'São Martinho', 24, 'SC'),
(4666, 'São Miguel da Boa Vista', 24, 'SC'),
(4667, 'São Miguel do Oeste', 24, 'SC'),
(4668, 'São Pedro de Alcântara', 24, 'SC'),
(4669, 'Saudades', 24, 'SC'),
(4670, 'Schroeder', 24, 'SC'),
(4671, 'Seara', 24, 'SC'),
(4672, 'Serra Alta', 24, 'SC'),
(4673, 'Siderópolis', 24, 'SC'),
(4674, 'Sombrio', 24, 'SC'),
(4675, 'Sul Brasil', 24, 'SC'),
(4676, 'Taió', 24, 'SC'),
(4677, 'Tangará', 24, 'SC'),
(4678, 'Tigrinhos', 24, 'SC'),
(4679, 'Tijucas', 24, 'SC'),
(4680, 'Timbé do Sul', 24, 'SC'),
(4681, 'Timbó', 24, 'SC'),
(4682, 'Timbó Grande', 24, 'SC'),
(4683, 'Três Barras', 24, 'SC'),
(4684, 'Treviso', 24, 'SC'),
(4685, 'Treze de Maio', 24, 'SC'),
(4686, 'Treze Tílias', 24, 'SC'),
(4687, 'Trombudo Central', 24, 'SC'),
(4688, 'Tubarão', 24, 'SC'),
(4689, 'Tunápolis', 24, 'SC'),
(4690, 'Turvo', 24, 'SC'),
(4691, 'União do Oeste', 24, 'SC'),
(4692, 'Urubici', 24, 'SC'),
(4693, 'Urupema', 24, 'SC'),
(4694, 'Urussanga', 24, 'SC'),
(4695, 'Vargeão', 24, 'SC'),
(4696, 'Vargem', 24, 'SC'),
(4697, 'Vargem Bonita', 24, 'SC'),
(4698, 'Vidal Ramos', 24, 'SC'),
(4699, 'Videira', 24, 'SC'),
(4700, 'Vitor Meireles', 24, 'SC'),
(4701, 'Witmarsum', 24, 'SC'),
(4702, 'Xanxerê', 24, 'SC'),
(4703, 'Xavantina', 24, 'SC'),
(4704, 'Xaxim', 24, 'SC'),
(4705, 'Zortéa', 24, 'SC'),
(4706, 'Adamantina', 26, 'SP'),
(4707, 'Adolfo', 26, 'SP'),
(4708, 'Aguaí', 26, 'SP'),
(4709, 'Águas da Prata', 26, 'SP'),
(4710, 'Águas de Lindóia', 26, 'SP'),
(4711, 'Águas de Santa Bárbara', 26, 'SP'),
(4712, 'Águas de São Pedro', 26, 'SP'),
(4713, 'Agudos', 26, 'SP'),
(4714, 'Alambari', 26, 'SP'),
(4715, 'Alfredo Marcondes', 26, 'SP'),
(4716, 'Altair', 26, 'SP'),
(4717, 'Altinópolis', 26, 'SP'),
(4718, 'Alto Alegre', 26, 'SP'),
(4719, 'Alumínio', 26, 'SP'),
(4720, 'Álvares Florence', 26, 'SP'),
(4721, 'Álvares Machado', 26, 'SP'),
(4722, 'Álvaro de Carvalho', 26, 'SP'),
(4723, 'Alvinlândia', 26, 'SP'),
(4724, 'Americana', 26, 'SP'),
(4725, 'Américo Brasiliense', 26, 'SP'),
(4726, 'Américo de Campos', 26, 'SP'),
(4727, 'Amparo', 26, 'SP'),
(4728, 'Analândia', 26, 'SP'),
(4729, 'Andradina', 26, 'SP'),
(4730, 'Angatuba', 26, 'SP'),
(4731, 'Anhembi', 26, 'SP'),
(4732, 'Anhumas', 26, 'SP'),
(4733, 'Aparecida', 26, 'SP'),
(4734, 'Aparecida d`Oeste', 26, 'SP'),
(4735, 'Apiaí', 26, 'SP'),
(4736, 'Araçariguama', 26, 'SP'),
(4737, 'Araçatuba', 26, 'SP'),
(4738, 'Araçoiaba da Serra', 26, 'SP'),
(4739, 'Aramina', 26, 'SP'),
(4740, 'Arandu', 26, 'SP'),
(4741, 'Arapeí', 26, 'SP'),
(4742, 'Araraquara', 26, 'SP'),
(4743, 'Araras', 26, 'SP'),
(4744, 'Arco-Íris', 26, 'SP'),
(4745, 'Arealva', 26, 'SP'),
(4746, 'Areias', 26, 'SP'),
(4747, 'Areiópolis', 26, 'SP'),
(4748, 'Ariranha', 26, 'SP'),
(4749, 'Artur Nogueira', 26, 'SP'),
(4750, 'Arujá', 26, 'SP'),
(4751, 'Aspásia', 26, 'SP'),
(4752, 'Assis', 26, 'SP'),
(4753, 'Atibaia', 26, 'SP'),
(4754, 'Auriflama', 26, 'SP'),
(4755, 'Avaí', 26, 'SP'),
(4756, 'Avanhandava', 26, 'SP'),
(4757, 'Avaré', 26, 'SP'),
(4758, 'Bady Bassitt', 26, 'SP'),
(4759, 'Balbinos', 26, 'SP'),
(4760, 'Bálsamo', 26, 'SP'),
(4761, 'Bananal', 26, 'SP'),
(4762, 'Barão de Antonina', 26, 'SP'),
(4763, 'Barbosa', 26, 'SP'),
(4764, 'Bariri', 26, 'SP'),
(4765, 'Barra Bonita', 26, 'SP'),
(4766, 'Barra do Chapéu', 26, 'SP'),
(4767, 'Barra do Turvo', 26, 'SP'),
(4768, 'Barretos', 26, 'SP'),
(4769, 'Barrinha', 26, 'SP'),
(4770, 'Barueri', 26, 'SP'),
(4771, 'Bastos', 26, 'SP'),
(4772, 'Batatais', 26, 'SP'),
(4773, 'Bauru', 26, 'SP'),
(4774, 'Bebedouro', 26, 'SP'),
(4775, 'Bento de Abreu', 26, 'SP'),
(4776, 'Bernardino de Campos', 26, 'SP'),
(4777, 'Bertioga', 26, 'SP'),
(4778, 'Bilac', 26, 'SP'),
(4779, 'Birigui', 26, 'SP'),
(4780, 'Biritiba-Mirim', 26, 'SP'),
(4781, 'Boa Esperança do Sul', 26, 'SP'),
(4782, 'Bocaina', 26, 'SP'),
(4783, 'Bofete', 26, 'SP'),
(4784, 'Boituva', 26, 'SP'),
(4785, 'Bom Jesus dos Perdões', 26, 'SP'),
(4786, 'Bom Sucesso de Itararé', 26, 'SP'),
(4787, 'Borá', 26, 'SP'),
(4788, 'Boracéia', 26, 'SP'),
(4789, 'Borborema', 26, 'SP'),
(4790, 'Borebi', 26, 'SP'),
(4791, 'Botucatu', 26, 'SP'),
(4792, 'Bragança Paulista', 26, 'SP'),
(4793, 'Braúna', 26, 'SP'),
(4794, 'Brejo Alegre', 26, 'SP'),
(4795, 'Brodowski', 26, 'SP'),
(4796, 'Brotas', 26, 'SP'),
(4797, 'Buri', 26, 'SP'),
(4798, 'Buritama', 26, 'SP'),
(4799, 'Buritizal', 26, 'SP'),
(4800, 'Cabrália Paulista', 26, 'SP'),
(4801, 'Cabreúva', 26, 'SP'),
(4802, 'Caçapava', 26, 'SP'),
(4803, 'Cachoeira Paulista', 26, 'SP'),
(4804, 'Caconde', 26, 'SP');
INSERT INTO `cidade` (`id`, `nome`, `estado`, `uf`) VALUES
(4805, 'Cafelândia', 26, 'SP'),
(4806, 'Caiabu', 26, 'SP'),
(4807, 'Caieiras', 26, 'SP'),
(4808, 'Caiuá', 26, 'SP'),
(4809, 'Cajamar', 26, 'SP'),
(4810, 'Cajati', 26, 'SP'),
(4811, 'Cajobi', 26, 'SP'),
(4812, 'Cajuru', 26, 'SP'),
(4813, 'Campina do Monte Alegre', 26, 'SP'),
(4814, 'Campinas', 26, 'SP'),
(4815, 'Campo Limpo Paulista', 26, 'SP'),
(4816, 'Campos do Jordão', 26, 'SP'),
(4817, 'Campos Novos Paulista', 26, 'SP'),
(4818, 'Cananéia', 26, 'SP'),
(4819, 'Canas', 26, 'SP'),
(4820, 'Cândido Mota', 26, 'SP'),
(4821, 'Cândido Rodrigues', 26, 'SP'),
(4822, 'Canitar', 26, 'SP'),
(4823, 'Capão Bonito', 26, 'SP'),
(4824, 'Capela do Alto', 26, 'SP'),
(4825, 'Capivari', 26, 'SP'),
(4826, 'Caraguatatuba', 26, 'SP'),
(4827, 'Carapicuíba', 26, 'SP'),
(4828, 'Cardoso', 26, 'SP'),
(4829, 'Casa Branca', 26, 'SP'),
(4830, 'Cássia dos Coqueiros', 26, 'SP'),
(4831, 'Castilho', 26, 'SP'),
(4832, 'Catanduva', 26, 'SP'),
(4833, 'Catiguá', 26, 'SP'),
(4834, 'Cedral', 26, 'SP'),
(4835, 'Cerqueira César', 26, 'SP'),
(4836, 'Cerquilho', 26, 'SP'),
(4837, 'Cesário Lange', 26, 'SP'),
(4838, 'Charqueada', 26, 'SP'),
(4839, 'Chavantes', 26, 'SP'),
(4840, 'Clementina', 26, 'SP'),
(4841, 'Colina', 26, 'SP'),
(4842, 'Colômbia', 26, 'SP'),
(4843, 'Conchal', 26, 'SP'),
(4844, 'Conchas', 26, 'SP'),
(4845, 'Cordeirópolis', 26, 'SP'),
(4846, 'Coroados', 26, 'SP'),
(4847, 'Coronel Macedo', 26, 'SP'),
(4848, 'Corumbataí', 26, 'SP'),
(4849, 'Cosmópolis', 26, 'SP'),
(4850, 'Cosmorama', 26, 'SP'),
(4851, 'Cotia', 26, 'SP'),
(4852, 'Cravinhos', 26, 'SP'),
(4853, 'Cristais Paulista', 26, 'SP'),
(4854, 'Cruzália', 26, 'SP'),
(4855, 'Cruzeiro', 26, 'SP'),
(4856, 'Cubatão', 26, 'SP'),
(4857, 'Cunha', 26, 'SP'),
(4858, 'Descalvado', 26, 'SP'),
(4859, 'Diadema', 26, 'SP'),
(4860, 'Dirce Reis', 26, 'SP'),
(4861, 'Divinolândia', 26, 'SP'),
(4862, 'Dobrada', 26, 'SP'),
(4863, 'Dois Córregos', 26, 'SP'),
(4864, 'Dolcinópolis', 26, 'SP'),
(4865, 'Dourado', 26, 'SP'),
(4866, 'Dracena', 26, 'SP'),
(4867, 'Duartina', 26, 'SP'),
(4868, 'Dumont', 26, 'SP'),
(4869, 'Echaporã', 26, 'SP'),
(4870, 'Eldorado', 26, 'SP'),
(4871, 'Elias Fausto', 26, 'SP'),
(4872, 'Elisiário', 26, 'SP'),
(4873, 'Embaúba', 26, 'SP'),
(4874, 'Embu', 26, 'SP'),
(4875, 'Embu-Guaçu', 26, 'SP'),
(4876, 'Emilianópolis', 26, 'SP'),
(4877, 'Engenheiro Coelho', 26, 'SP'),
(4878, 'Espírito Santo do Pinhal', 26, 'SP'),
(4879, 'Espírito Santo do Turvo', 26, 'SP'),
(4880, 'Estiva Gerbi', 26, 'SP'),
(4881, 'Estrela d`Oeste', 26, 'SP'),
(4882, 'Estrela do Norte', 26, 'SP'),
(4883, 'Euclides da Cunha Paulista', 26, 'SP'),
(4884, 'Fartura', 26, 'SP'),
(4885, 'Fernando Prestes', 26, 'SP'),
(4886, 'Fernandópolis', 26, 'SP'),
(4887, 'Fernão', 26, 'SP'),
(4888, 'Ferraz de Vasconcelos', 26, 'SP'),
(4889, 'Flora Rica', 26, 'SP'),
(4890, 'Floreal', 26, 'SP'),
(4891, 'Flórida Paulista', 26, 'SP'),
(4892, 'Florínia', 26, 'SP'),
(4893, 'Franca', 26, 'SP'),
(4894, 'Francisco Morato', 26, 'SP'),
(4895, 'Franco da Rocha', 26, 'SP'),
(4896, 'Gabriel Monteiro', 26, 'SP'),
(4897, 'Gália', 26, 'SP'),
(4898, 'Garça', 26, 'SP'),
(4899, 'Gastão Vidigal', 26, 'SP'),
(4900, 'Gavião Peixoto', 26, 'SP'),
(4901, 'General Salgado', 26, 'SP'),
(4902, 'Getulina', 26, 'SP'),
(4903, 'Glicério', 26, 'SP'),
(4904, 'Guaiçara', 26, 'SP'),
(4905, 'Guaimbê', 26, 'SP'),
(4906, 'Guaíra', 26, 'SP'),
(4907, 'Guapiaçu', 26, 'SP'),
(4908, 'Guapiara', 26, 'SP'),
(4909, 'Guará', 26, 'SP'),
(4910, 'Guaraçaí', 26, 'SP'),
(4911, 'Guaraci', 26, 'SP'),
(4912, 'Guarani d`Oeste', 26, 'SP'),
(4913, 'Guarantã', 26, 'SP'),
(4914, 'Guararapes', 26, 'SP'),
(4915, 'Guararema', 26, 'SP'),
(4916, 'Guaratinguetá', 26, 'SP'),
(4917, 'Guareí', 26, 'SP'),
(4918, 'Guariba', 26, 'SP'),
(4919, 'Guarujá', 26, 'SP'),
(4920, 'Guarulhos', 26, 'SP'),
(4921, 'Guatapará', 26, 'SP'),
(4922, 'Guzolândia', 26, 'SP'),
(4923, 'Herculândia', 26, 'SP'),
(4924, 'Holambra', 26, 'SP'),
(4925, 'Hortolândia', 26, 'SP'),
(4926, 'Iacanga', 26, 'SP'),
(4927, 'Iacri', 26, 'SP'),
(4928, 'Iaras', 26, 'SP'),
(4929, 'Ibaté', 26, 'SP'),
(4930, 'Ibirá', 26, 'SP'),
(4931, 'Ibirarema', 26, 'SP'),
(4932, 'Ibitinga', 26, 'SP'),
(4933, 'Ibiúna', 26, 'SP'),
(4934, 'Icém', 26, 'SP'),
(4935, 'Iepê', 26, 'SP'),
(4936, 'Igaraçu do Tietê', 26, 'SP'),
(4937, 'Igarapava', 26, 'SP'),
(4938, 'Igaratá', 26, 'SP'),
(4939, 'Iguape', 26, 'SP'),
(4940, 'Ilha Comprida', 26, 'SP'),
(4941, 'Ilha Solteira', 26, 'SP'),
(4942, 'Ilhabela', 26, 'SP'),
(4943, 'Indaiatuba', 26, 'SP'),
(4944, 'Indiana', 26, 'SP'),
(4945, 'Indiaporã', 26, 'SP'),
(4946, 'Inúbia Paulista', 26, 'SP'),
(4947, 'Ipaussu', 26, 'SP'),
(4948, 'Iperó', 26, 'SP'),
(4949, 'Ipeúna', 26, 'SP'),
(4950, 'Ipiguá', 26, 'SP'),
(4951, 'Iporanga', 26, 'SP'),
(4952, 'Ipuã', 26, 'SP'),
(4953, 'Iracemápolis', 26, 'SP'),
(4954, 'Irapuã', 26, 'SP'),
(4955, 'Irapuru', 26, 'SP'),
(4956, 'Itaberá', 26, 'SP'),
(4957, 'Itaí', 26, 'SP'),
(4958, 'Itajobi', 26, 'SP'),
(4959, 'Itaju', 26, 'SP'),
(4960, 'Itanhaém', 26, 'SP'),
(4961, 'Itaóca', 26, 'SP'),
(4962, 'Itapecerica da Serra', 26, 'SP'),
(4963, 'Itapetininga', 26, 'SP'),
(4964, 'Itapeva', 26, 'SP'),
(4965, 'Itapevi', 26, 'SP'),
(4966, 'Itapira', 26, 'SP'),
(4967, 'Itapirapuã Paulista', 26, 'SP'),
(4968, 'Itápolis', 26, 'SP'),
(4969, 'Itaporanga', 26, 'SP'),
(4970, 'Itapuí', 26, 'SP'),
(4971, 'Itapura', 26, 'SP'),
(4972, 'Itaquaquecetuba', 26, 'SP'),
(4973, 'Itararé', 26, 'SP'),
(4974, 'Itariri', 26, 'SP'),
(4975, 'Itatiba', 26, 'SP'),
(4976, 'Itatinga', 26, 'SP'),
(4977, 'Itirapina', 26, 'SP'),
(4978, 'Itirapuã', 26, 'SP'),
(4979, 'Itobi', 26, 'SP'),
(4980, 'Itu', 26, 'SP'),
(4981, 'Itupeva', 26, 'SP'),
(4982, 'Ituverava', 26, 'SP'),
(4983, 'Jaborandi', 26, 'SP'),
(4984, 'Jaboticabal', 26, 'SP'),
(4985, 'Jacareí', 26, 'SP'),
(4986, 'Jaci', 26, 'SP'),
(4987, 'Jacupiranga', 26, 'SP'),
(4988, 'Jaguariúna', 26, 'SP'),
(4989, 'Jales', 26, 'SP'),
(4990, 'Jambeiro', 26, 'SP'),
(4991, 'Jandira', 26, 'SP'),
(4992, 'Jardinópolis', 26, 'SP'),
(4993, 'Jarinu', 26, 'SP'),
(4994, 'Jaú', 26, 'SP'),
(4995, 'Jeriquara', 26, 'SP'),
(4996, 'Joanópolis', 26, 'SP'),
(4997, 'João Ramalho', 26, 'SP'),
(4998, 'José Bonifácio', 26, 'SP'),
(4999, 'Júlio Mesquita', 26, 'SP'),
(5000, 'Jumirim', 26, 'SP'),
(5001, 'Jundiaí', 26, 'SP'),
(5002, 'Junqueirópolis', 26, 'SP'),
(5003, 'Juquiá', 26, 'SP'),
(5004, 'Juquitiba', 26, 'SP'),
(5005, 'Lagoinha', 26, 'SP'),
(5006, 'Laranjal Paulista', 26, 'SP'),
(5007, 'Lavínia', 26, 'SP'),
(5008, 'Lavrinhas', 26, 'SP'),
(5009, 'Leme', 26, 'SP'),
(5010, 'Lençóis Paulista', 26, 'SP'),
(5011, 'Limeira', 26, 'SP'),
(5012, 'Lindóia', 26, 'SP'),
(5013, 'Lins', 26, 'SP'),
(5014, 'Lorena', 26, 'SP'),
(5015, 'Lourdes', 26, 'SP'),
(5016, 'Louveira', 26, 'SP'),
(5017, 'Lucélia', 26, 'SP'),
(5018, 'Lucianópolis', 26, 'SP'),
(5019, 'Luís Antônio', 26, 'SP'),
(5020, 'Luiziânia', 26, 'SP'),
(5021, 'Lupércio', 26, 'SP'),
(5022, 'Lutécia', 26, 'SP'),
(5023, 'Macatuba', 26, 'SP'),
(5024, 'Macaubal', 26, 'SP'),
(5025, 'Macedônia', 26, 'SP'),
(5026, 'Magda', 26, 'SP'),
(5027, 'Mairinque', 26, 'SP'),
(5028, 'Mairiporã', 26, 'SP'),
(5029, 'Manduri', 26, 'SP'),
(5030, 'Marabá Paulista', 26, 'SP'),
(5031, 'Maracaí', 26, 'SP'),
(5032, 'Marapoama', 26, 'SP'),
(5033, 'Mariápolis', 26, 'SP'),
(5034, 'Marília', 26, 'SP'),
(5035, 'Marinópolis', 26, 'SP'),
(5036, 'Martinópolis', 26, 'SP'),
(5037, 'Matão', 26, 'SP'),
(5038, 'Mauá', 26, 'SP'),
(5039, 'Mendonça', 26, 'SP'),
(5040, 'Meridiano', 26, 'SP'),
(5041, 'Mesópolis', 26, 'SP'),
(5042, 'Miguelópolis', 26, 'SP'),
(5043, 'Mineiros do Tietê', 26, 'SP'),
(5044, 'Mira Estrela', 26, 'SP'),
(5045, 'Miracatu', 26, 'SP'),
(5046, 'Mirandópolis', 26, 'SP'),
(5047, 'Mirante do Paranapanema', 26, 'SP'),
(5048, 'Mirassol', 26, 'SP'),
(5049, 'Mirassolândia', 26, 'SP'),
(5050, 'Mococa', 26, 'SP'),
(5051, 'Mogi das Cruzes', 26, 'SP'),
(5052, 'Mogi Guaçu', 26, 'SP'),
(5053, 'Moji Mirim', 26, 'SP'),
(5054, 'Mombuca', 26, 'SP'),
(5055, 'Monções', 26, 'SP'),
(5056, 'Mongaguá', 26, 'SP'),
(5057, 'Monte Alegre do Sul', 26, 'SP'),
(5058, 'Monte Alto', 26, 'SP'),
(5059, 'Monte Aprazível', 26, 'SP'),
(5060, 'Monte Azul Paulista', 26, 'SP'),
(5061, 'Monte Castelo', 26, 'SP'),
(5062, 'Monte Mor', 26, 'SP'),
(5063, 'Monteiro Lobato', 26, 'SP'),
(5064, 'Morro Agudo', 26, 'SP'),
(5065, 'Morungaba', 26, 'SP'),
(5066, 'Motuca', 26, 'SP'),
(5067, 'Murutinga do Sul', 26, 'SP'),
(5068, 'Nantes', 26, 'SP'),
(5069, 'Narandiba', 26, 'SP'),
(5070, 'Natividade da Serra', 26, 'SP'),
(5071, 'Nazaré Paulista', 26, 'SP'),
(5072, 'Neves Paulista', 26, 'SP'),
(5073, 'Nhandeara', 26, 'SP'),
(5074, 'Nipoã', 26, 'SP'),
(5075, 'Nova Aliança', 26, 'SP'),
(5076, 'Nova Campina', 26, 'SP'),
(5077, 'Nova Canaã Paulista', 26, 'SP'),
(5078, 'Nova Castilho', 26, 'SP'),
(5079, 'Nova Europa', 26, 'SP'),
(5080, 'Nova Granada', 26, 'SP'),
(5081, 'Nova Guataporanga', 26, 'SP'),
(5082, 'Nova Independência', 26, 'SP'),
(5083, 'Nova Luzitânia', 26, 'SP'),
(5084, 'Nova Odessa', 26, 'SP'),
(5085, 'Novais', 26, 'SP'),
(5086, 'Novo Horizonte', 26, 'SP'),
(5087, 'Nuporanga', 26, 'SP'),
(5088, 'Ocauçu', 26, 'SP'),
(5089, 'Óleo', 26, 'SP'),
(5090, 'Olímpia', 26, 'SP'),
(5091, 'Onda Verde', 26, 'SP'),
(5092, 'Oriente', 26, 'SP'),
(5093, 'Orindiúva', 26, 'SP'),
(5094, 'Orlândia', 26, 'SP'),
(5095, 'Osasco', 26, 'SP'),
(5096, 'Oscar Bressane', 26, 'SP'),
(5097, 'Osvaldo Cruz', 26, 'SP'),
(5098, 'Ourinhos', 26, 'SP'),
(5099, 'Ouro Verde', 26, 'SP'),
(5100, 'Ouroeste', 26, 'SP'),
(5101, 'Pacaembu', 26, 'SP'),
(5102, 'Palestina', 26, 'SP'),
(5103, 'Palmares Paulista', 26, 'SP'),
(5104, 'Palmeira d`Oeste', 26, 'SP'),
(5105, 'Palmital', 26, 'SP'),
(5106, 'Panorama', 26, 'SP'),
(5107, 'Paraguaçu Paulista', 26, 'SP'),
(5108, 'Paraibuna', 26, 'SP'),
(5109, 'Paraíso', 26, 'SP'),
(5110, 'Paranapanema', 26, 'SP'),
(5111, 'Paranapuã', 26, 'SP'),
(5112, 'Parapuã', 26, 'SP'),
(5113, 'Pardinho', 26, 'SP'),
(5114, 'Pariquera-Açu', 26, 'SP'),
(5115, 'Parisi', 26, 'SP'),
(5116, 'Patrocínio Paulista', 26, 'SP'),
(5117, 'Paulicéia', 26, 'SP'),
(5118, 'Paulínia', 26, 'SP'),
(5119, 'Paulistânia', 26, 'SP'),
(5120, 'Paulo de Faria', 26, 'SP'),
(5121, 'Pederneiras', 26, 'SP'),
(5122, 'Pedra Bela', 26, 'SP'),
(5123, 'Pedranópolis', 26, 'SP'),
(5124, 'Pedregulho', 26, 'SP'),
(5125, 'Pedreira', 26, 'SP'),
(5126, 'Pedrinhas Paulista', 26, 'SP'),
(5127, 'Pedro de Toledo', 26, 'SP'),
(5128, 'Penápolis', 26, 'SP'),
(5129, 'Pereira Barreto', 26, 'SP'),
(5130, 'Pereiras', 26, 'SP'),
(5131, 'Peruíbe', 26, 'SP'),
(5132, 'Piacatu', 26, 'SP'),
(5133, 'Piedade', 26, 'SP'),
(5134, 'Pilar do Sul', 26, 'SP'),
(5135, 'Pindamonhangaba', 26, 'SP'),
(5136, 'Pindorama', 26, 'SP'),
(5137, 'Pinhalzinho', 26, 'SP'),
(5138, 'Piquerobi', 26, 'SP'),
(5139, 'Piquete', 26, 'SP'),
(5140, 'Piracaia', 26, 'SP'),
(5141, 'Piracicaba', 26, 'SP'),
(5142, 'Piraju', 26, 'SP'),
(5143, 'Pirajuí', 26, 'SP'),
(5144, 'Pirangi', 26, 'SP'),
(5145, 'Pirapora do Bom Jesus', 26, 'SP'),
(5146, 'Pirapozinho', 26, 'SP'),
(5147, 'Pirassununga', 26, 'SP'),
(5148, 'Piratininga', 26, 'SP'),
(5149, 'Pitangueiras', 26, 'SP'),
(5150, 'Planalto', 26, 'SP'),
(5151, 'Platina', 26, 'SP'),
(5152, 'Poá', 26, 'SP'),
(5153, 'Poloni', 26, 'SP'),
(5154, 'Pompéia', 26, 'SP'),
(5155, 'Pongaí', 26, 'SP'),
(5156, 'Pontal', 26, 'SP'),
(5157, 'Pontalinda', 26, 'SP'),
(5158, 'Pontes Gestal', 26, 'SP'),
(5159, 'Populina', 26, 'SP'),
(5160, 'Porangaba', 26, 'SP'),
(5161, 'Porto Feliz', 26, 'SP'),
(5162, 'Porto Ferreira', 26, 'SP'),
(5163, 'Potim', 26, 'SP'),
(5164, 'Potirendaba', 26, 'SP'),
(5165, 'Pracinha', 26, 'SP'),
(5166, 'Pradópolis', 26, 'SP'),
(5167, 'Praia Grande', 26, 'SP'),
(5168, 'Pratânia', 26, 'SP'),
(5169, 'Presidente Alves', 26, 'SP'),
(5170, 'Presidente Bernardes', 26, 'SP'),
(5171, 'Presidente Epitácio', 26, 'SP'),
(5172, 'Presidente Prudente', 26, 'SP'),
(5173, 'Presidente Venceslau', 26, 'SP'),
(5174, 'Promissão', 26, 'SP'),
(5175, 'Quadra', 26, 'SP'),
(5176, 'Quatá', 26, 'SP'),
(5177, 'Queiroz', 26, 'SP'),
(5178, 'Queluz', 26, 'SP'),
(5179, 'Quintana', 26, 'SP'),
(5180, 'Rafard', 26, 'SP'),
(5181, 'Rancharia', 26, 'SP'),
(5182, 'Redenção da Serra', 26, 'SP'),
(5183, 'Regente Feijó', 26, 'SP'),
(5184, 'Reginópolis', 26, 'SP'),
(5185, 'Registro', 26, 'SP'),
(5186, 'Restinga', 26, 'SP'),
(5187, 'Ribeira', 26, 'SP'),
(5188, 'Ribeirão Bonito', 26, 'SP'),
(5189, 'Ribeirão Branco', 26, 'SP'),
(5190, 'Ribeirão Corrente', 26, 'SP'),
(5191, 'Ribeirão do Sul', 26, 'SP'),
(5192, 'Ribeirão dos Índios', 26, 'SP'),
(5193, 'Ribeirão Grande', 26, 'SP'),
(5194, 'Ribeirão Pires', 26, 'SP'),
(5195, 'Ribeirão Preto', 26, 'SP'),
(5196, 'Rifaina', 26, 'SP'),
(5197, 'Rincão', 26, 'SP'),
(5198, 'Rinópolis', 26, 'SP'),
(5199, 'Rio Claro', 26, 'SP'),
(5200, 'Rio das Pedras', 26, 'SP'),
(5201, 'Rio Grande da Serra', 26, 'SP'),
(5202, 'Riolândia', 26, 'SP'),
(5203, 'Riversul', 26, 'SP'),
(5204, 'Rosana', 26, 'SP'),
(5205, 'Roseira', 26, 'SP'),
(5206, 'Rubiácea', 26, 'SP'),
(5207, 'Rubinéia', 26, 'SP'),
(5208, 'Sabino', 26, 'SP'),
(5209, 'Sagres', 26, 'SP'),
(5210, 'Sales', 26, 'SP'),
(5211, 'Sales Oliveira', 26, 'SP'),
(5212, 'Salesópolis', 26, 'SP'),
(5213, 'Salmourão', 26, 'SP'),
(5214, 'Saltinho', 26, 'SP'),
(5215, 'Salto', 26, 'SP'),
(5216, 'Salto de Pirapora', 26, 'SP'),
(5217, 'Salto Grande', 26, 'SP'),
(5218, 'Sandovalina', 26, 'SP'),
(5219, 'Santa Adélia', 26, 'SP'),
(5220, 'Santa Albertina', 26, 'SP'),
(5221, 'Santa Bárbara d`Oeste', 26, 'SP'),
(5222, 'Santa Branca', 26, 'SP'),
(5223, 'Santa Clara d`Oeste', 26, 'SP'),
(5224, 'Santa Cruz da Conceição', 26, 'SP'),
(5225, 'Santa Cruz da Esperança', 26, 'SP'),
(5226, 'Santa Cruz das Palmeiras', 26, 'SP'),
(5227, 'Santa Cruz do Rio Pardo', 26, 'SP'),
(5228, 'Santa Ernestina', 26, 'SP'),
(5229, 'Santa Fé do Sul', 26, 'SP'),
(5230, 'Santa Gertrudes', 26, 'SP'),
(5231, 'Santa Isabel', 26, 'SP'),
(5232, 'Santa Lúcia', 26, 'SP'),
(5233, 'Santa Maria da Serra', 26, 'SP'),
(5234, 'Santa Mercedes', 26, 'SP'),
(5235, 'Santa Rita d`Oeste', 26, 'SP'),
(5236, 'Santa Rita do Passa Quatro', 26, 'SP'),
(5237, 'Santa Rosa de Viterbo', 26, 'SP'),
(5238, 'Santa Salete', 26, 'SP'),
(5239, 'Santana da Ponte Pensa', 26, 'SP'),
(5240, 'Santana de Parnaíba', 26, 'SP'),
(5241, 'Santo Anastácio', 26, 'SP'),
(5242, 'Santo André', 26, 'SP'),
(5243, 'Santo Antônio da Alegria', 26, 'SP'),
(5244, 'Santo Antônio de Posse', 26, 'SP'),
(5245, 'Santo Antônio do Aracanguá', 26, 'SP'),
(5246, 'Santo Antônio do Jardim', 26, 'SP'),
(5247, 'Santo Antônio do Pinhal', 26, 'SP'),
(5248, 'Santo Expedito', 26, 'SP'),
(5249, 'Santópolis do Aguapeí', 26, 'SP'),
(5250, 'Santos', 26, 'SP'),
(5251, 'São Bento do Sapucaí', 26, 'SP'),
(5252, 'São Bernardo do Campo', 26, 'SP'),
(5253, 'São Caetano do Sul', 26, 'SP'),
(5254, 'São Carlos', 26, 'SP'),
(5255, 'São Francisco', 26, 'SP'),
(5256, 'São João da Boa Vista', 26, 'SP'),
(5257, 'São João das Duas Pontes', 26, 'SP'),
(5258, 'São João de Iracema', 26, 'SP'),
(5259, 'São João do Pau d`Alho', 26, 'SP'),
(5260, 'São Joaquim da Barra', 26, 'SP'),
(5261, 'São José da Bela Vista', 26, 'SP'),
(5262, 'São José do Barreiro', 26, 'SP'),
(5263, 'São José do Rio Pardo', 26, 'SP'),
(5264, 'São José do Rio Preto', 26, 'SP'),
(5265, 'São José dos Campos', 26, 'SP'),
(5266, 'São Lourenço da Serra', 26, 'SP'),
(5267, 'São Luís do Paraitinga', 26, 'SP'),
(5268, 'São Manuel', 26, 'SP'),
(5269, 'São Miguel Arcanjo', 26, 'SP'),
(5270, 'São Paulo', 26, 'SP'),
(5271, 'São Pedro', 26, 'SP'),
(5272, 'São Pedro do Turvo', 26, 'SP'),
(5273, 'São Roque', 26, 'SP'),
(5274, 'São Sebastião', 26, 'SP'),
(5275, 'São Sebastião da Grama', 26, 'SP'),
(5276, 'São Simão', 26, 'SP'),
(5277, 'São Vicente', 26, 'SP'),
(5278, 'Sarapuí', 26, 'SP'),
(5279, 'Sarutaiá', 26, 'SP'),
(5280, 'Sebastianópolis do Sul', 26, 'SP'),
(5281, 'Serra Azul', 26, 'SP'),
(5282, 'Serra Negra', 26, 'SP'),
(5283, 'Serrana', 26, 'SP'),
(5284, 'Sertãozinho', 26, 'SP'),
(5285, 'Sete Barras', 26, 'SP'),
(5286, 'Severínia', 26, 'SP'),
(5287, 'Silveiras', 26, 'SP'),
(5288, 'Socorro', 26, 'SP'),
(5289, 'Sorocaba', 26, 'SP'),
(5290, 'Sud Mennucci', 26, 'SP'),
(5291, 'Sumaré', 26, 'SP'),
(5292, 'Suzanápolis', 26, 'SP'),
(5293, 'Suzano', 26, 'SP'),
(5294, 'Tabapuã', 26, 'SP'),
(5295, 'Tabatinga', 26, 'SP'),
(5296, 'Taboão da Serra', 26, 'SP'),
(5297, 'Taciba', 26, 'SP'),
(5298, 'Taguaí', 26, 'SP'),
(5299, 'Taiaçu', 26, 'SP'),
(5300, 'Taiúva', 26, 'SP'),
(5301, 'Tambaú', 26, 'SP'),
(5302, 'Tanabi', 26, 'SP'),
(5303, 'Tapiraí', 26, 'SP'),
(5304, 'Tapiratiba', 26, 'SP'),
(5305, 'Taquaral', 26, 'SP'),
(5306, 'Taquaritinga', 26, 'SP'),
(5307, 'Taquarituba', 26, 'SP'),
(5308, 'Taquarivaí', 26, 'SP'),
(5309, 'Tarabai', 26, 'SP'),
(5310, 'Tarumã', 26, 'SP'),
(5311, 'Tatuí', 26, 'SP'),
(5312, 'Taubaté', 26, 'SP'),
(5313, 'Tejupá', 26, 'SP'),
(5314, 'Teodoro Sampaio', 26, 'SP'),
(5315, 'Terra Roxa', 26, 'SP'),
(5316, 'Tietê', 26, 'SP'),
(5317, 'Timburi', 26, 'SP'),
(5318, 'Torre de Pedra', 26, 'SP'),
(5319, 'Torrinha', 26, 'SP'),
(5320, 'Trabiju', 26, 'SP'),
(5321, 'Tremembé', 26, 'SP'),
(5322, 'Três Fronteiras', 26, 'SP'),
(5323, 'Tuiuti', 26, 'SP'),
(5324, 'Tupã', 26, 'SP'),
(5325, 'Tupi Paulista', 26, 'SP'),
(5326, 'Turiúba', 26, 'SP'),
(5327, 'Turmalina', 26, 'SP'),
(5328, 'Ubarana', 26, 'SP'),
(5329, 'Ubatuba', 26, 'SP'),
(5330, 'Ubirajara', 26, 'SP'),
(5331, 'Uchoa', 26, 'SP'),
(5332, 'União Paulista', 26, 'SP'),
(5333, 'Urânia', 26, 'SP'),
(5334, 'Uru', 26, 'SP'),
(5335, 'Urupês', 26, 'SP'),
(5336, 'Valentim Gentil', 26, 'SP'),
(5337, 'Valinhos', 26, 'SP'),
(5338, 'Valparaíso', 26, 'SP'),
(5339, 'Vargem', 26, 'SP'),
(5340, 'Vargem Grande do Sul', 26, 'SP'),
(5341, 'Vargem Grande Paulista', 26, 'SP'),
(5342, 'Várzea Paulista', 26, 'SP'),
(5343, 'Vera Cruz', 26, 'SP'),
(5344, 'Vinhedo', 26, 'SP'),
(5345, 'Viradouro', 26, 'SP'),
(5346, 'Vista Alegre do Alto', 26, 'SP'),
(5347, 'Vitória Brasil', 26, 'SP'),
(5348, 'Votorantim', 26, 'SP'),
(5349, 'Votuporanga', 26, 'SP'),
(5350, 'Zacarias', 26, 'SP'),
(5351, 'Amparo de São Francisco', 25, 'SE'),
(5352, 'Aquidabã', 25, 'SE'),
(5353, 'Aracaju', 25, 'SE'),
(5354, 'Arauá', 25, 'SE'),
(5355, 'Areia Branca', 25, 'SE'),
(5356, 'Barra dos Coqueiros', 25, 'SE'),
(5357, 'Boquim', 25, 'SE'),
(5358, 'Brejo Grande', 25, 'SE'),
(5359, 'Campo do Brito', 25, 'SE'),
(5360, 'Canhoba', 25, 'SE'),
(5361, 'Canindé de São Francisco', 25, 'SE'),
(5362, 'Capela', 25, 'SE'),
(5363, 'Carira', 25, 'SE'),
(5364, 'Carmópolis', 25, 'SE'),
(5365, 'Cedro de São João', 25, 'SE'),
(5366, 'Cristinápolis', 25, 'SE'),
(5367, 'Cumbe', 25, 'SE'),
(5368, 'Divina Pastora', 25, 'SE'),
(5369, 'Estância', 25, 'SE'),
(5370, 'Feira Nova', 25, 'SE'),
(5371, 'Frei Paulo', 25, 'SE'),
(5372, 'Gararu', 25, 'SE'),
(5373, 'General Maynard', 25, 'SE'),
(5374, 'Gracho Cardoso', 25, 'SE'),
(5375, 'Ilha das Flores', 25, 'SE'),
(5376, 'Indiaroba', 25, 'SE'),
(5377, 'Itabaiana', 25, 'SE'),
(5378, 'Itabaianinha', 25, 'SE'),
(5379, 'Itabi', 25, 'SE'),
(5380, 'Itaporanga d`Ajuda', 25, 'SE'),
(5381, 'Japaratuba', 25, 'SE'),
(5382, 'Japoatã', 25, 'SE'),
(5383, 'Lagarto', 25, 'SE'),
(5384, 'Laranjeiras', 25, 'SE'),
(5385, 'Macambira', 25, 'SE'),
(5386, 'Malhada dos Bois', 25, 'SE'),
(5387, 'Malhador', 25, 'SE'),
(5388, 'Maruim', 25, 'SE'),
(5389, 'Moita Bonita', 25, 'SE'),
(5390, 'Monte Alegre de Sergipe', 25, 'SE'),
(5391, 'Muribeca', 25, 'SE'),
(5392, 'Neópolis', 25, 'SE'),
(5393, 'Nossa Senhora Aparecida', 25, 'SE'),
(5394, 'Nossa Senhora da Glória', 25, 'SE'),
(5395, 'Nossa Senhora das Dores', 25, 'SE'),
(5396, 'Nossa Senhora de Lourdes', 25, 'SE'),
(5397, 'Nossa Senhora do Socorro', 25, 'SE'),
(5398, 'Pacatuba', 25, 'SE'),
(5399, 'Pedra Mole', 25, 'SE'),
(5400, 'Pedrinhas', 25, 'SE'),
(5401, 'Pinhão', 25, 'SE'),
(5402, 'Pirambu', 25, 'SE'),
(5403, 'Poço Redondo', 25, 'SE'),
(5404, 'Poço Verde', 25, 'SE'),
(5405, 'Porto da Folha', 25, 'SE'),
(5406, 'Propriá', 25, 'SE'),
(5407, 'Riachão do Dantas', 25, 'SE'),
(5408, 'Riachuelo', 25, 'SE'),
(5409, 'Ribeirópolis', 25, 'SE'),
(5410, 'Rosário do Catete', 25, 'SE'),
(5411, 'Salgado', 25, 'SE'),
(5412, 'Santa Luzia do Itanhy', 25, 'SE'),
(5413, 'Santa Rosa de Lima', 25, 'SE'),
(5414, 'Santana do São Francisco', 25, 'SE'),
(5415, 'Santo Amaro das Brotas', 25, 'SE'),
(5416, 'São Cristóvão', 25, 'SE'),
(5417, 'São Domingos', 25, 'SE'),
(5418, 'São Francisco', 25, 'SE'),
(5419, 'São Miguel do Aleixo', 25, 'SE'),
(5420, 'Simão Dias', 25, 'SE'),
(5421, 'Siriri', 25, 'SE'),
(5422, 'Telha', 25, 'SE'),
(5423, 'Tobias Barreto', 25, 'SE'),
(5424, 'Tomar do Geru', 25, 'SE'),
(5425, 'Umbaúba', 25, 'SE'),
(5426, 'Abreulândia', 27, 'TO'),
(5427, 'Aguiarnópolis', 27, 'TO'),
(5428, 'Aliança do Tocantins', 27, 'TO'),
(5429, 'Almas', 27, 'TO'),
(5430, 'Alvorada', 27, 'TO'),
(5431, 'Ananás', 27, 'TO'),
(5432, 'Angico', 27, 'TO'),
(5433, 'Aparecida do Rio Negro', 27, 'TO'),
(5434, 'Aragominas', 27, 'TO'),
(5435, 'Araguacema', 27, 'TO'),
(5436, 'Araguaçu', 27, 'TO'),
(5437, 'Araguaína', 27, 'TO'),
(5438, 'Araguanã', 27, 'TO'),
(5439, 'Araguatins', 27, 'TO'),
(5440, 'Arapoema', 27, 'TO'),
(5441, 'Arraias', 27, 'TO'),
(5442, 'Augustinópolis', 27, 'TO'),
(5443, 'Aurora do Tocantins', 27, 'TO'),
(5444, 'Axixá do Tocantins', 27, 'TO'),
(5445, 'Babaçulândia', 27, 'TO'),
(5446, 'Bandeirantes do Tocantins', 27, 'TO'),
(5447, 'Barra do Ouro', 27, 'TO'),
(5448, 'Barrolândia', 27, 'TO'),
(5449, 'Bernardo Sayão', 27, 'TO'),
(5450, 'Bom Jesus do Tocantins', 27, 'TO'),
(5451, 'Brasilândia do Tocantins', 27, 'TO'),
(5452, 'Brejinho de Nazaré', 27, 'TO'),
(5453, 'Buriti do Tocantins', 27, 'TO'),
(5454, 'Cachoeirinha', 27, 'TO'),
(5455, 'Campos Lindos', 27, 'TO'),
(5456, 'Cariri do Tocantins', 27, 'TO'),
(5457, 'Carmolândia', 27, 'TO'),
(5458, 'Carrasco Bonito', 27, 'TO'),
(5459, 'Caseara', 27, 'TO'),
(5460, 'Centenário', 27, 'TO'),
(5461, 'Chapada da Natividade', 27, 'TO'),
(5462, 'Chapada de Areia', 27, 'TO'),
(5463, 'Colinas do Tocantins', 27, 'TO'),
(5464, 'Colméia', 27, 'TO'),
(5465, 'Combinado', 27, 'TO'),
(5466, 'Conceição do Tocantins', 27, 'TO'),
(5467, 'Couto de Magalhães', 27, 'TO'),
(5468, 'Cristalândia', 27, 'TO'),
(5469, 'Crixás do Tocantins', 27, 'TO'),
(5470, 'Darcinópolis', 27, 'TO'),
(5471, 'Dianópolis', 27, 'TO'),
(5472, 'Divinópolis do Tocantins', 27, 'TO'),
(5473, 'Dois Irmãos do Tocantins', 27, 'TO'),
(5474, 'Dueré', 27, 'TO'),
(5475, 'Esperantina', 27, 'TO'),
(5476, 'Fátima', 27, 'TO'),
(5477, 'Figueirópolis', 27, 'TO'),
(5478, 'Filadélfia', 27, 'TO'),
(5479, 'Formoso do Araguaia', 27, 'TO'),
(5480, 'Fortaleza do Tabocão', 27, 'TO'),
(5481, 'Goianorte', 27, 'TO'),
(5482, 'Goiatins', 27, 'TO'),
(5483, 'Guaraí', 27, 'TO'),
(5484, 'Gurupi', 27, 'TO'),
(5485, 'Ipueiras', 27, 'TO'),
(5486, 'Itacajá', 27, 'TO'),
(5487, 'Itaguatins', 27, 'TO'),
(5488, 'Itapiratins', 27, 'TO'),
(5489, 'Itaporã do Tocantins', 27, 'TO'),
(5490, 'Jaú do Tocantins', 27, 'TO'),
(5491, 'Juarina', 27, 'TO'),
(5492, 'Lagoa da Confusão', 27, 'TO'),
(5493, 'Lagoa do Tocantins', 27, 'TO'),
(5494, 'Lajeado', 27, 'TO'),
(5495, 'Lavandeira', 27, 'TO'),
(5496, 'Lizarda', 27, 'TO'),
(5497, 'Luzinópolis', 27, 'TO'),
(5498, 'Marianópolis do Tocantins', 27, 'TO'),
(5499, 'Mateiros', 27, 'TO'),
(5500, 'Maurilândia do Tocantins', 27, 'TO'),
(5501, 'Miracema do Tocantins', 27, 'TO'),
(5502, 'Miranorte', 27, 'TO'),
(5503, 'Monte do Carmo', 27, 'TO'),
(5504, 'Monte Santo do Tocantins', 27, 'TO'),
(5505, 'Muricilândia', 27, 'TO'),
(5506, 'Natividade', 27, 'TO'),
(5507, 'Nazaré', 27, 'TO'),
(5508, 'Nova Olinda', 27, 'TO'),
(5509, 'Nova Rosalândia', 27, 'TO'),
(5510, 'Novo Acordo', 27, 'TO'),
(5511, 'Novo Alegre', 27, 'TO'),
(5512, 'Novo Jardim', 27, 'TO'),
(5513, 'Oliveira de Fátima', 27, 'TO'),
(5514, 'Palmas', 27, 'TO'),
(5515, 'Palmeirante', 27, 'TO'),
(5516, 'Palmeiras do Tocantins', 27, 'TO'),
(5517, 'Palmeirópolis', 27, 'TO'),
(5518, 'Paraíso do Tocantins', 27, 'TO'),
(5519, 'Paranã', 27, 'TO'),
(5520, 'Pau d`Arco', 27, 'TO'),
(5521, 'Pedro Afonso', 27, 'TO'),
(5522, 'Peixe', 27, 'TO'),
(5523, 'Pequizeiro', 27, 'TO'),
(5524, 'Pindorama do Tocantins', 27, 'TO'),
(5525, 'Piraquê', 27, 'TO'),
(5526, 'Pium', 27, 'TO'),
(5527, 'Ponte Alta do Bom Jesus', 27, 'TO'),
(5528, 'Ponte Alta do Tocantins', 27, 'TO'),
(5529, 'Porto Alegre do Tocantins', 27, 'TO'),
(5530, 'Porto Nacional', 27, 'TO'),
(5531, 'Praia Norte', 27, 'TO'),
(5532, 'Presidente Kennedy', 27, 'TO'),
(5533, 'Pugmil', 27, 'TO'),
(5534, 'Recursolândia', 27, 'TO'),
(5535, 'Riachinho', 27, 'TO'),
(5536, 'Rio da Conceição', 27, 'TO'),
(5537, 'Rio dos Bois', 27, 'TO'),
(5538, 'Rio Sono', 27, 'TO'),
(5539, 'Sampaio', 27, 'TO'),
(5540, 'Sandolândia', 27, 'TO'),
(5541, 'Santa Fé do Araguaia', 27, 'TO'),
(5542, 'Santa Maria do Tocantins', 27, 'TO'),
(5543, 'Santa Rita do Tocantins', 27, 'TO'),
(5544, 'Santa Rosa do Tocantins', 27, 'TO'),
(5545, 'Santa Tereza do Tocantins', 27, 'TO'),
(5546, 'Santa Terezinha do Tocantins', 27, 'TO'),
(5547, 'São Bento do Tocantins', 27, 'TO'),
(5548, 'São Félix do Tocantins', 27, 'TO'),
(5549, 'São Miguel do Tocantins', 27, 'TO'),
(5550, 'São Salvador do Tocantins', 27, 'TO'),
(5551, 'São Sebastião do Tocantins', 27, 'TO'),
(5552, 'São Valério da Natividade', 27, 'TO'),
(5553, 'Silvanópolis', 27, 'TO'),
(5554, 'Sítio Novo do Tocantins', 27, 'TO'),
(5555, 'Sucupira', 27, 'TO'),
(5556, 'Taguatinga', 27, 'TO'),
(5557, 'Taipas do Tocantins', 27, 'TO'),
(5558, 'Talismã', 27, 'TO'),
(5559, 'Tocantínia', 27, 'TO'),
(5560, 'Tocantinópolis', 27, 'TO'),
(5561, 'Tupirama', 27, 'TO'),
(5562, 'Tupiratins', 27, 'TO'),
(5563, 'Wanderlândia', 27, 'TO'),
(5564, 'Xambioá', 27, 'TO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `contato`
--

CREATE TABLE `contato` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `titulo` varchar(240) DEFAULT NULL,
  `email` varchar(240) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `contato`
--

INSERT INTO `contato` (`id`, `codigo`, `titulo`, `email`) VALUES
(59, '147017157989381', 'Formulario de Contato', 'contato@studiobala.com.br');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cotacoes`
--

CREATE TABLE `cotacoes` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `grupo` varchar(100) DEFAULT NULL,
  `data` int(11) NOT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `regiao` varchar(255) NOT NULL,
  `valor` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `cotacoes`
--

INSERT INTO `cotacoes` (`id`, `codigo`, `grupo`, `data`, `titulo`, `regiao`, `valor`) VALUES
(1, '150837272992801', '150837201499516', 1508373083, 'Feijão Carioca Sc 60Kg', 'Pato Branco - PR', '130,00'),
(2, '150837281144785', '150837201499516', 1508372811, 'Feijão Carioquinha 30Kg', 'Pato Branco - PR', '120,00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cotacoes_grupos`
--

CREATE TABLE `cotacoes_grupos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `titulo` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cotacoes_grupos_ordem`
--

CREATE TABLE `cotacoes_grupos_ordem` (
  `id` int(11) NOT NULL,
  `id_pai` int(11) NOT NULL,
  `data` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cotacoes_grupos_ordem`
--

INSERT INTO `cotacoes_grupos_ordem` (`id`, `id_pai`, `data`) VALUES
(1, 0, '1'),
(2, 0, '1,2'),
(3, 0, '1,2,3'),
(4, 0, '1,2,3,4'),
(5, 0, '1,2,3,4,5'),
(6, 2, ''),
(7, 4, ''),
(8, 3, ''),
(9, 0, '2,4,3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `depoimento`
--

CREATE TABLE `depoimento` (
  `id` int(11) UNSIGNED NOT NULL,
  `data` int(11) DEFAULT NULL,
  `nome` char(240) DEFAULT NULL,
  `email` char(240) DEFAULT NULL,
  `cidade` varchar(255) DEFAULT NULL,
  `conteudo` text,
  `imagem` varchar(255) DEFAULT NULL,
  `bloqueio` int(2) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `depoimento`
--

INSERT INTO `depoimento` (`id`, `data`, `nome`, `email`, `cidade`, `conteudo`, `imagem`, `bloqueio`) VALUES
(43, 1529522883, 'Joanão', '', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'orna-donath-original-[20-06-18][16-36-42].jpg', 2),
(42, 1529522363, 'Ficticio', '', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 'orna-donath-original-[20-06-18][16-36-52].jpg', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `downloads`
--

CREATE TABLE `downloads` (
  `id` int(10) UNSIGNED NOT NULL,
  `codigo` char(100) DEFAULT NULL,
  `titulo` char(200) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `endereco` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `enquete`
--

CREATE TABLE `enquete` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `enquete` text,
  `status` int(10) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `enquete`
--

INSERT INTO `enquete` (`id`, `codigo`, `enquete`, `status`) VALUES
(23, '158448292286564', 'O que você achou de nosso Site?', 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `enquete_resposta`
--

CREATE TABLE `enquete_resposta` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `enquete_codigo` varchar(255) NOT NULL,
  `resposta` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `enquete_resposta`
--

INSERT INTO `enquete_resposta` (`id`, `codigo`, `enquete_codigo`, `resposta`) VALUES
(42, '147042997518102', '147042400746828', 'resposta 1'),
(43, '147042998181221', '147042400746828', 'resposta 2'),
(44, '147122826885720', '147122815448888', 'Ótimo'),
(45, '147122827594786', '147122815448888', 'Bom'),
(46, '147122828965447', '147122815448888', 'Regular'),
(47, '147132639780776', '147122815448888', 'Péssimo'),
(48, '149593730431607', '149593730013724', 'sdfasdf'),
(49, '149593731054890', '149593730013724', 'aaaa'),
(53, '150816391119011', '150816390721228', 'asdfasdf'),
(54, '150816391468507', '150816390721228', '2222'),
(56, '150830460818585', '150830459278181', 'Ótimo'),
(57, '150830461171322', '150830459278181', 'Bom'),
(58, '150830461524512', '150830459278181', 'Regular'),
(59, '150830461890191', '150830459278181', 'Ruim'),
(60, '150830462347798', '150830459278181', 'Péssimo'),
(61, '158448292791233', '158448292286564', 'Ótimo'),
(62, '158448293132895', '158448292286564', 'Muito bom'),
(63, '158448293528913', '158448292286564', 'Regular'),
(64, '158448293916662', '158448292286564', 'Pode melhorar');

-- --------------------------------------------------------

--
-- Estrutura da tabela `enquete_voto`
--

CREATE TABLE `enquete_voto` (
  `id` int(11) NOT NULL,
  `data` int(11) NOT NULL,
  `codigo_enquete` varchar(100) DEFAULT NULL,
  `codigo_resposta` varchar(100) DEFAULT NULL,
  `ip` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `enquete_voto`
--

INSERT INTO `enquete_voto` (`id`, `data`, `codigo_enquete`, `codigo_resposta`, `ip`) VALUES
(36, 1508304944, '150830459278181', '150830460818585', '::1'),
(37, 1584484238, '158448292286564', '158448292791233', '::1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estado`
--

CREATE TABLE `estado` (
  `id` int(11) NOT NULL,
  `nome` varchar(75) DEFAULT NULL,
  `uf` varchar(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `estado`
--

INSERT INTO `estado` (`id`, `nome`, `uf`) VALUES
(1, 'Acre', 'AC'),
(2, 'Alagoas', 'AL'),
(3, 'Amazonas', 'AM'),
(4, 'Amapá', 'AP'),
(5, 'Bahia', 'BA'),
(6, 'Ceará', 'CE'),
(7, 'Distrito Federal', 'DF'),
(8, 'Espírito Santo', 'ES'),
(9, 'Goiás', 'GO'),
(10, 'Maranhão', 'MA'),
(11, 'Minas Gerais', 'MG'),
(12, 'Mato Grosso do Sul', 'MS'),
(13, 'Mato Grosso', 'MT'),
(14, 'Pará', 'PA'),
(15, 'Paraíba', 'PB'),
(16, 'Pernambuco', 'PE'),
(17, 'Piauí', 'PI'),
(18, 'Paraná', 'PR'),
(19, 'Rio de Janeiro', 'RJ'),
(20, 'Rio Grande do Norte', 'RN'),
(21, 'Rondônia', 'RO'),
(22, 'Roraima', 'RR'),
(23, 'Rio Grande do Sul', 'RS'),
(24, 'Santa Catarina', 'SC'),
(25, 'Sergipe', 'SE'),
(26, 'São Paulo', 'SP'),
(27, 'Tocantins', 'TO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `filiais`
--

CREATE TABLE `filiais` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `previa` text,
  `conteudo` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura da tabela `filiais_imagem`
--

CREATE TABLE `filiais_imagem` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura da tabela `filiais_imagem_legenda`
--

CREATE TABLE `filiais_imagem_legenda` (
  `id` int(11) NOT NULL,
  `id_img` varchar(100) DEFAULT NULL,
  `legenda` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `filiais_imagem_legenda`
--

INSERT INTO `filiais_imagem_legenda` (`id`, `id_img`, `legenda`) VALUES
(1, '1', 'dfsdfsdf');

-- --------------------------------------------------------

--
-- Estrutura da tabela `filiais_imagem_ordem`
--

CREATE TABLE `filiais_imagem_ordem` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `filiais_imagem_ordem`
--

INSERT INTO `filiais_imagem_ordem` (`id`, `codigo`, `data`) VALUES
(1, '150816999458988', '1'),
(2, '150816999458988', '1,2'),
(3, '150816999458988', '1,2,3'),
(4, '150816999458988', '1,2,3,4'),
(5, '150816999458988', '1,2,3,4,5'),
(6, '150816999458988', '1,2,3,4,5,6'),
(7, '150816999458988', '1,2,3,4,5,6,7'),
(8, '150816999458988', '1,2,3,4,5,6,7,8'),
(9, '150816999458988', '1,2,3,4,5,6,7,8,9'),
(10, '150816999458988', '2,4,3,5,6,7,8,9'),
(11, '150816999458988', '3,2,4,5,6,7,8,9'),
(12, '150816999458988', '3,2,6,5,7,8,9'),
(13, '150833618598764', '10'),
(14, '150833618598764', '10,11'),
(15, '150833618598764', '10,11,12'),
(16, '150833621622159', '13'),
(17, '150833621622159', '13,14'),
(18, '150833621622159', '13,14,15');

-- --------------------------------------------------------

--
-- Estrutura da tabela `filiais_ordem`
--

CREATE TABLE `filiais_ordem` (
  `id` int(11) NOT NULL,
  `grupo` varchar(100) DEFAULT NULL,
  `data` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `filiais_ordem`
--

INSERT INTO `filiais_ordem` (`id`, `grupo`, `data`) VALUES
(1, NULL, '1'),
(2, NULL, '1,2'),
(3, NULL, '2,1'),
(4, NULL, '1,2'),
(5, NULL, '2,1'),
(6, NULL, '2,1,3'),
(7, NULL, '2,1,3,4'),
(8, NULL, '2,1,3,4,5');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotos`
--

CREATE TABLE `fotos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `grupo` varchar(100) DEFAULT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `previa` text,
  `conteudo` text,
  `ordem` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `fotos`
--

INSERT INTO `fotos` (`id`, `codigo`, `grupo`, `titulo`, `previa`, `conteudo`, `ordem`) VALUES
(22, '156080207818362', '152459334482807', 'Galeria1', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotos_grupos`
--

CREATE TABLE `fotos_grupos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `fotos_grupos`
--

INSERT INTO `fotos_grupos` (`id`, `codigo`, `titulo`, `imagem`) VALUES
(4, '152459334482807', 'Destaque Inicial', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotos_grupos_ordem`
--

CREATE TABLE `fotos_grupos_ordem` (
  `id` int(11) NOT NULL,
  `id_pai` int(11) NOT NULL DEFAULT '0',
  `data` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `fotos_grupos_ordem`
--

INSERT INTO `fotos_grupos_ordem` (`id`, `id_pai`, `data`) VALUES
(1, 0, '1'),
(2, 0, '1,2'),
(3, 1, ''),
(4, 2, ''),
(5, 0, '1,2'),
(6, 0, '1,2,3'),
(7, 1, ''),
(8, 3, ''),
(9, 2, '3'),
(10, 0, '1,2'),
(11, 3, ''),
(12, 2, '3'),
(13, 1, ''),
(14, 0, '2,1'),
(15, 1, ''),
(16, 2, ''),
(17, 0, '1,2'),
(18, 0, '1,2,4');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotos_imagem`
--

CREATE TABLE `fotos_imagem` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `fotos_imagem`
--

INSERT INTO `fotos_imagem` (`id`, `codigo`, `imagem`) VALUES
(1, '150672659813251', '6e67aecaf746cf9b6d7840956385b0-[29-09-17][20-10-10].jpg'),
(2, '150672659813251', '13735-bela-paisagem-em-kentucky-[29-09-17][20-10-12].jpg'),
(3, '150672659813251', '2727-Papel-de-Parede-Bela-Paisagem-de-Campo-1680x1050-[29-09-17][20-10-13].jpg'),
(4, '150672659813251', 'c2a753f194c1ad707e7e243ae3b8d4d-[29-09-17][20-10-16].jpg'),
(5, '150672659813251', 'eb946e26d94985a59410491caf6e91-[29-09-17][20-10-17].jpg'),
(6, '150672659813251', 'Elementos-da-Paisagem-Natural-[29-09-17][20-10-19].jpg'),
(7, '150672659813251', 'images-2-[29-09-17][20-10-20].jpg'),
(8, '150672659813251', 'images-3-[29-09-17][20-10-21].jpg'),
(9, '150672659813251', 'images-4-[29-09-17][20-10-22].jpg'),
(169, '156080207818362', '310861-[17-06-19][17-08-14].jpg'),
(168, '156080207818362', '398274-dark-forest-walpapers-160x90-h-[17-06-19][17-08-13].jpg'),
(167, '156080207818362', '4803-walpapers-tre-dark-forest-desktop-walpapers-nature-godwp-com-1920x120-h-[17-06-19][17-08-12].jpg'),
(166, '156080207818362', '482078-[17-06-19][17-08-11].jpg'),
(172, '156080207818362', 'foto2-[23-03-20][15-55-42].jpg'),
(173, '156080207818362', 'foto3-[23-03-20][15-58-13].jpg'),
(170, '156080207818362', '250481-nature-landscape-lake-forest-fal-clouds-sun-rays-mountain-Germany-dark-water-[17-06-19][17-08-15].jpg'),
(171, '156080207818362', 'foto1-[23-03-20][15-54-22].jpg'),
(174, '156080207818362', 'foto4-[23-03-20][15-59-54].jpg'),
(175, '156080207818362', 'foto5-[23-03-20][16-01-44].jpg'),
(176, '156080207818362', 'foto6-[23-03-20][16-10-01].jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotos_imagem_legenda`
--

CREATE TABLE `fotos_imagem_legenda` (
  `id` int(11) NOT NULL,
  `id_img` varchar(100) DEFAULT NULL,
  `legenda` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `fotos_imagem_legenda`
--

INSERT INTO `fotos_imagem_legenda` (`id`, `id_img`, `legenda`) VALUES
(1, '10', 'asdfasdf');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotos_imagem_ordem`
--

CREATE TABLE `fotos_imagem_ordem` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `fotos_imagem_ordem`
--

INSERT INTO `fotos_imagem_ordem` (`id`, `codigo`, `data`) VALUES
(1, '150672659813251', '1'),
(2, '150672659813251', '1,2'),
(3, '150672659813251', '1,2,3'),
(4, '150672659813251', '1,2,3,4'),
(5, '150672659813251', '1,2,3,4,5'),
(6, '150672659813251', '1,2,3,4,5,6'),
(7, '150672659813251', '1,2,3,4,5,6,7'),
(8, '150672659813251', '1,2,3,4,5,6,7,8'),
(9, '150672659813251', '1,2,3,4,5,6,7,8,9'),
(10, '150817039567818', '10'),
(11, '150817039567818', '10,11'),
(12, '150817039567818', '11,10'),
(13, '150817039567818', '10,11'),
(14, '150817039567818', '10,11,12'),
(15, '150817039567818', '10,11,12,13'),
(16, '150817039567818', '10,11,12,13,14'),
(17, '150817039567818', '10,11,12,13,14,15'),
(18, '150817039567818', '10,11,12,13,14,15,16'),
(19, '150817039567818', '10,11,12,13,14,15,16,17'),
(20, '150817039567818', '10,11,12,13,14,15,16,17,18'),
(21, '150817039567818', '10,11,12,13,14,15,16,17,18,19'),
(22, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20'),
(23, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21'),
(24, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22'),
(25, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23'),
(26, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24'),
(27, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25'),
(28, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26'),
(29, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27'),
(30, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28'),
(31, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29'),
(32, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30'),
(33, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31'),
(34, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32'),
(35, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33'),
(36, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34'),
(37, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35'),
(38, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36'),
(39, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37'),
(40, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38'),
(41, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39'),
(42, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40'),
(43, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41'),
(44, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42'),
(45, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43'),
(46, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44'),
(47, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45'),
(48, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46'),
(49, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47'),
(50, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48'),
(51, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49'),
(52, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50'),
(53, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51'),
(54, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52'),
(55, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53'),
(56, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54'),
(57, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55'),
(58, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56'),
(59, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57'),
(60, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58'),
(61, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59'),
(62, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60'),
(63, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61'),
(64, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62'),
(65, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63'),
(66, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64'),
(67, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65'),
(68, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66'),
(69, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67'),
(70, '150817039567818', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68'),
(71, '150817039567818', '23,11,13,14,15,16,17,18,19,20,21,22,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68'),
(72, '150817053266379', '69'),
(73, '150817053266379', '69,70'),
(74, '150817053266379', '69,70,71'),
(75, '150817053266379', '69,70,71,72'),
(76, '150817053266379', '69,70,71,72,73'),
(77, '150817053266379', '69,70,71,72,73,74'),
(78, '150817053266379', '69,70,71,72,73,74,75'),
(79, '150817053266379', '69,70,71,72,73,74,75,76'),
(80, '150817053266379', '69,70,71,72,73,74,75,76,77'),
(81, '150817053266379', '69,70,71,72,73,74,75,76,77,78'),
(82, '150817053266379', '69,70,71,72,73,74,75,76,77,78,79'),
(83, '150817053266379', '69,70,71,72,73,74,75,76,77,78,79,80'),
(84, '150817053266379', '69,70,71,72,73,74,75,76,77,78,79,80,81'),
(85, '150817053266379', '69,70,71,72,73,74,75,76,77,78,79,80,81,82'),
(86, '152449076528551', '83'),
(87, '152449076528551', '83,84'),
(88, '152449076528551', '83,84,85'),
(89, '152449076528551', '83,84,85,86'),
(90, '152449080731384', '87'),
(91, '152449080731384', '87,88'),
(92, '152449080731384', '87,88,89'),
(93, '152449080731384', '87,88,89,90'),
(94, '152449086746499', '91'),
(95, '152449086746499', '91,92'),
(96, '152449086746499', '91,92,93'),
(97, '152449086746499', '91,92,93,94'),
(98, '152449088617766', '95'),
(99, '152449088617766', '95,96'),
(100, '152449088617766', '95,96,97'),
(101, '152449090322199', '98'),
(102, '152449090322199', '98,99'),
(103, '152449090322199', '98,99,100'),
(104, '152449090322199', '98,99,100,101'),
(105, '152449094042126', '102'),
(106, '152449094042126', '102,103'),
(107, '152449094042126', '102,103,104'),
(108, '152449094042126', '102,103,104,105'),
(109, '152449101292960', '106'),
(110, '152449101292960', '106,107'),
(111, '152449101292960', '106,107,108'),
(112, '152449104489913', '109'),
(113, '152449104489913', '109,110'),
(114, '152449104489913', '109,110,111'),
(115, '152449106589732', '112'),
(116, '152449106589732', '112,113'),
(117, '152449106589732', '112,113,114'),
(118, '152459465629457', '115'),
(119, '152459465629457', '115,116'),
(120, '152459465629457', '115,116,117'),
(121, '152459465629457', '115,116,117,118'),
(122, '152459465629457', '115,116,117,118,119'),
(123, '152459465629457', '115,116,117,118,119,120'),
(124, '152459465629457', '115,116,117,118,119,120,121'),
(125, '152459465629457', '115,116,117,118,119,120,121,122'),
(126, '152459465629457', '115,116,117,118,119,120,121,122,123'),
(127, '152459465629457', '115,116,117,118,119,120,121,122,123,124'),
(128, '152459465629457', '115,116,117,118,119,120,121,122,123,124,125'),
(129, '152459465629457', '115,116,117,118,119,120,121,122,123,124,125,126'),
(130, '152459465629457', '116,115,117,118,119,120,121,122,123,124,125,126'),
(131, '152459499426120', '127'),
(132, '152459499426120', '127,128'),
(133, '152459499426120', '127,128,129'),
(134, '152459499426120', '127,128,129,130'),
(135, '152459499426120', '127,128,129,130,131'),
(136, '152459499426120', '127,128,129,130,131,132'),
(137, '152459499426120', '127,128,129,130,131,132,133'),
(138, '152459499426120', '127,128,129,130,131,132,133,134'),
(139, '152459499426120', '127,128,129,130,131,132,133,134,135'),
(140, '152459499426120', '127,128,129,130,131,132,133,134,135,136'),
(141, '152459499426120', '127,128,129,130,131,132,133,134,135,136,137'),
(142, '152459499426120', '127,128,129,130,131,132,133,134,135,136,137,138'),
(143, '152459511792300', '139'),
(144, '152459514473549', '140'),
(145, '152459511792300', '139,141'),
(146, '152459511792300', '139,141,142'),
(147, '152459511792300', '139,141,142,143'),
(148, '152459511792300', '139,141,142,143,144'),
(149, '152459511792300', '139,141,142,143,144,145'),
(150, '152459511792300', '139,141,142,143,144,145,146'),
(151, '152459511792300', '139,141,142,143,144,145,146,147'),
(152, '152459511792300', '139,141,142,143,144,145,146,147,148'),
(153, '152459511792300', '139,141,142,143,144,145,146,147,148,149'),
(154, '152459511792300', '139,141,142,143,144,145,146,147,148,149,150'),
(155, '152459511792300', '139,141,142,143,144,145,146,147,148,149,150,151'),
(156, '152951716252326', '152'),
(157, '152951716252326', '152,153'),
(158, '152951716252326', '152,153,154'),
(159, '152951716252326', '152,153,154,155'),
(160, '152951716252326', '152,153,154,155,156'),
(161, '152951716252326', '152,153,154,155,156,157'),
(162, '152951716252326', '152,153,154,155,156,157,158'),
(163, '152951716252326', '152,153,154,155,156,157,158,159'),
(164, '152951716252326', '152,153,154,155,156,157,158,159,160'),
(165, '152951716252326', '152,153,154,155,156,157,158,159,160,161'),
(166, '152951716252326', '152,153,154,155,156,157,158,159,160,161,162'),
(167, '152951716252326', '152,153,154,155,156,157,158,159,160,161,162,163'),
(168, '152951716252326', '152,153,154,155,156,157,158,159,160,161,162,163,164'),
(169, '156080207818362', '165'),
(170, '156080207818362', '165,166'),
(171, '156080207818362', '165,166,167'),
(172, '156080207818362', '165,166,167,168'),
(173, '156080207818362', '165,166,167,168,169'),
(174, '156080207818362', '165,166,167,168,169,170'),
(175, '156080207818362', '165,166,167,168,169,170,171'),
(176, '156080207818362', '171'),
(177, '156080207818362', '171,172'),
(178, '156080207818362', '171,172,173'),
(179, '156080207818362', '171,172,173,174'),
(180, '156080207818362', '171,172,173,174,175'),
(181, '156080207818362', '171,172,173,174,175,176');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fotos_ordem`
--

CREATE TABLE `fotos_ordem` (
  `id` int(11) NOT NULL,
  `grupo` varchar(100) DEFAULT NULL,
  `data` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `fotos_ordem`
--

INSERT INTO `fotos_ordem` (`id`, `grupo`, `data`) VALUES
(1, '150672655960185', '1'),
(2, '150672657673025', '1'),
(3, '150672655960185', '1,2'),
(4, '150672655960185', '2,1'),
(5, '150672655960185', '2,1,3'),
(6, '150672655960185', '3,2'),
(7, '150672655960185', '2,3'),
(8, '150672657673025', '1,4'),
(9, '150672655960185', '3,2'),
(10, '150672657673025', '1,4,5'),
(11, '150672657673025', '5,4'),
(12, '150672655960185', '2,3'),
(13, '150672657673025', '4,5'),
(14, '150672655960185', '2,3,6'),
(15, '150672655960185', '2,6,3'),
(16, '150672655960185', '6,2,3'),
(17, '150672657673025', '4,5,7'),
(18, '150672657673025', '4,7,5'),
(19, '150672655960185', '3,2'),
(20, '150672655960185', '2,3'),
(21, '150672655960185', '2,3,8'),
(22, '150672655960185', '2,3,8,9'),
(23, '150672655960185', '2,3,8,9,10'),
(24, '150672655960185', '2,3,8,9,10,11'),
(25, '150672655960185', '2,3,8,9,10,11,12'),
(26, '150672655960185', '2,3,8,9,10,11,12,13'),
(27, '150672655960185', '2,3,8,9,10,11,12,13,14'),
(28, '150672657673025', '4,7,5,15'),
(29, '150672657673025', '4,7,5,15,16'),
(30, '152459334482807', '17'),
(31, '152459334482807', '17,18'),
(32, '152459334482807', '17,18,19'),
(33, '152459334482807', '17,18,19,20'),
(34, '152459334482807', '17,18,19,20,21'),
(35, '152459334482807', '17,18,19,20,21,22');

-- --------------------------------------------------------

--
-- Estrutura da tabela `hospedararquivo`
--

CREATE TABLE `hospedararquivo` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `titulo` varchar(240) DEFAULT NULL,
  `arquivo` varchar(240) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura da tabela `imagem`
--

CREATE TABLE `imagem` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `imagem` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `imagem`
--

INSERT INTO `imagem` (`id`, `codigo`, `titulo`, `imagem`) VALUES
(35, '147129831543478', 'Logo', 'logo-[22-03-20][10-51-18].png'),
(32, '146955550242195', 'Favicon', 'favicon-fw-[22-03-20][10-54-46].png'),
(54, '152951244874600', 'Banner Meio Numeros', 'baner-meio-numeros-[23-03-20][15-33-17].jpg'),
(57, '153692954944466', 'Inicial - Fundo Galeria', 'baner-meio-numeros-[23-03-20][15-52-20].jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `layout_cor`
--

CREATE TABLE `layout_cor` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `cor` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `layout_cor`
--

INSERT INTO `layout_cor` (`id`, `titulo`, `cor`) VALUES
(38, 'Topo - Menu Selecionado', '#ffcc00'),
(62, 'Rodapé - Titulos', '#ffffff'),
(4, 'Cor Secundária Contraste', '#171717'),
(1, 'Cor Predominante', '#ffcc00'),
(2, 'Cor Predominante Contraste', '#121111'),
(63, 'Rodapé - Textos', '#9ba1ac'),
(3, 'Cor Secundária', '#ffffff'),
(60, 'Rodapé - Fundo', '#1d1b21'),
(64, 'Topo - Menu', '#ffffff');

-- --------------------------------------------------------

--
-- Estrutura da tabela `layout_menu`
--

CREATE TABLE `layout_menu` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `endereco` text,
  `visivel` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `layout_menu`
--

INSERT INTO `layout_menu` (`id`, `codigo`, `titulo`, `endereco`, `visivel`) VALUES
(2, '150424247797670', '<i class=\"fa fa-home\" aria-hidden=\"true\"></i> INICIAL', 'index', 0),
(3, '150424248462042', 'Sobre', '#sobre', 1),
(4, '150424249182534', '<i class=\"fa fa-camera\" aria-hidden=\"true\"></i> FOTOS', '#galeria', 0),
(5, '150424249785885', '<i class=\"fa fa-envelope\" aria-hidden=\"true\"></i> CONTATO', '#faleconosco', 0),
(9, '150818145470166', '<i class=\"fa fa-users\" aria-hidden=\"true\"></i> EQUIPE', '#equipe', 0),
(25, '153682828526113', '<i class=\"fa fa-newspaper\" aria-hidden=\"true\"></i> BLOG', '#blog', 0),
(26, '158447793421183', '<i class=\"fa fa-clock\" aria-hidden=\"true\"></i> PROGRAMAÇÃO', '#programacao', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `layout_menu_ordem`
--

CREATE TABLE `layout_menu_ordem` (
  `id` int(11) NOT NULL,
  `id_pai` int(11) NOT NULL,
  `data` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `layout_menu_ordem`
--

INSERT INTO `layout_menu_ordem` (`id`, `id_pai`, `data`) VALUES
(103, 0, '1'),
(104, 0, '1,2'),
(105, 0, '1,2,3'),
(106, 0, '1,2,3,4'),
(107, 0, '1,2,3,4,5'),
(108, 0, '1,2,3,4,5'),
(109, 0, '1,2,3,4,5,6'),
(110, 2, '6'),
(111, 0, '1,2,3,4,5'),
(112, 0, '1,2,3,4,5,7'),
(113, 2, '6,7'),
(114, 0, '1,2,3,4,5'),
(115, 2, '6,7'),
(119, 0, '1,2,3,4,5'),
(117, 0, '1,2,3,4'),
(118, 2, '6,7'),
(120, 0, '1,2,3,4,5,8'),
(121, 2, '6,7'),
(122, 5, '8'),
(123, 0, '1,2,3,4,5'),
(124, 2, '6,7'),
(125, 5, ''),
(126, 0, '1,2,3,4,5'),
(132, 2, '6,7'),
(128, 2, '6,7'),
(129, 5, ''),
(130, 0, '1,2,4,5'),
(135, 2, '6,7'),
(133, 5, ''),
(134, 0, '1,2,4,5'),
(136, 5, ''),
(137, 0, '1,2,3,4,5'),
(138, 0, '1,2,3,4,5,9'),
(139, 2, '6,7'),
(140, 5, ''),
(141, 0, '1,2,3,9,4,5'),
(142, 0, '1,2,3,9,4,5,10'),
(143, 2, ''),
(144, 5, '10'),
(145, 0, '1,2,3,9,4,5'),
(146, 0, '1,2,3,9,4,5,11'),
(147, 2, ''),
(148, 5, '10,11'),
(149, 0, '1,2,3,9,4,5'),
(150, 0, '1,2,3,9,4,5,12'),
(151, 2, ''),
(152, 5, '10,11,12'),
(153, 0, '1,2,3,9,4,5'),
(154, 2, ''),
(155, 5, '12,10,11'),
(156, 0, '1,2,3,9,4,5'),
(157, 2, ''),
(158, 5, '12,10,11'),
(159, 0, '1,2,3,9,4,5'),
(160, 2, ''),
(161, 5, '12,10'),
(162, 0, '1,2,3,9,4,11,5'),
(163, 0, '1,2,3,9,4,11,5,13'),
(164, 2, ''),
(165, 5, '12,10'),
(166, 0, '1,2,13,3,9,4,11,5'),
(167, 0, '1,2,13,3,9,4,11,5,14'),
(168, 2, ''),
(173, 5, '12,10'),
(170, 5, '12,10'),
(171, 0, '1,2,13,3,9,4,11,5'),
(172, 2, ''),
(174, 0, '1,2,13,3,9,4,14,11,5'),
(175, 2, ''),
(176, 4, '14'),
(177, 5, '12,10'),
(178, 0, '1,2,13,3,9,4,11,5'),
(179, 0, '1,2,13,3,9,4,11,5,15'),
(180, 2, '15'),
(181, 4, '14'),
(182, 5, '12,10'),
(183, 0, '1,2,13,3,9,4,11,5'),
(184, 0, '1,2,13,3,9,4,11,5,16'),
(185, 2, '16,15'),
(186, 4, '14'),
(187, 5, '12,10'),
(188, 0, '1,2,13,3,9,4,11,5'),
(189, 0, '1,2,13,3,9,4,11,5,17'),
(190, 2, '16,15'),
(191, 4, '14'),
(192, 5, '12,10'),
(193, 0, '1,2,13,3,9,4,11,5,17'),
(194, 2, '13,16,15'),
(195, 4, '14'),
(196, 5, '12,10'),
(197, 0, '1,2,3,9,4,11,5,17'),
(198, 0, '1,2,3,9,4,11,5,17,18'),
(199, 2, ''),
(200, 4, ''),
(201, 5, ''),
(202, 0, '1,2,3,9,4,5,18'),
(203, 0, '1,2,3,9,4,5,18,19'),
(204, 2, ''),
(205, 3, '19'),
(206, 4, ''),
(207, 5, ''),
(208, 0, '1,2,3,9,4,5'),
(209, 2, ''),
(210, 3, '19'),
(211, 4, ''),
(212, 5, ''),
(213, 0, '1,2,3,9,4,5'),
(214, 0, '1,2,3,9,4,5,20'),
(215, 2, ''),
(216, 3, '19,20'),
(217, 4, ''),
(218, 5, ''),
(219, 0, '1,2,3,9,4,5'),
(220, 0, '1,2,3,9,4,5,21'),
(221, 2, ''),
(222, 3, '19,20,21'),
(223, 4, ''),
(224, 5, ''),
(225, 0, '1,2,3,9,4,5'),
(226, 0, '1,2,3,9,4,5,22'),
(227, 2, ''),
(228, 3, '19,20,21,22'),
(229, 4, ''),
(230, 5, ''),
(231, 0, '1,2,3,9,4,5'),
(232, 0, '1,2,3,9,4,5,23'),
(233, 2, ''),
(234, 3, '19,20,21,22,23'),
(235, 4, ''),
(236, 5, ''),
(237, 0, '1,2,3,9,4,5'),
(238, 2, ''),
(239, 3, ''),
(240, 4, ''),
(241, 5, ''),
(242, 0, '1,2,3,9,4,5'),
(243, 0, '1,2,3,9,4,5,24'),
(244, 2, ''),
(245, 3, '24'),
(246, 4, ''),
(247, 5, ''),
(248, 0, '2,3,9,4,5'),
(249, 0, '2,3,9,4,5,25'),
(250, 2, ''),
(251, 3, ''),
(252, 4, ''),
(253, 5, ''),
(254, 0, '2,3,9,4,25,5'),
(255, 0, '2,3,9,4,25,5,0'),
(256, 0, '2,3,9,4,25,5,0,26'),
(257, 2, ''),
(258, 3, ''),
(259, 4, ''),
(260, 5, ''),
(261, 0, '2,3,26,9,4,25,5'),
(262, 0, '2,3,26,9,4,25,5,27'),
(263, 2, ''),
(264, 3, ''),
(265, 4, ''),
(266, 5, ''),
(267, 0, '2,3,26,9,4,25,5,27'),
(268, 0, '2,3,26,9,4,25,5,27,28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `layout_menu_rodape`
--

CREATE TABLE `layout_menu_rodape` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `endereco` text,
  `visivel` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `layout_menu_rodape`
--

INSERT INTO `layout_menu_rodape` (`id`, `codigo`, `titulo`, `endereco`, `visivel`) VALUES
(1, '150424251528759', 'SOBRE NÓS', 'sobrenos', 0),
(2, '150424252573374', 'CONTATO', '#faleconosco', 0),
(5, '150424256386429', 'OUTROS', 'outros', 0),
(10, '150818202080897', 'BLOG', 'blog', 0),
(11, '150818206323960', 'FAQ', 'conteudo/pag/id/faq', 0),
(12, '158447796960234', 'PROGRAMAÇÃO', '#programacao', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `layout_menu_rodape_ordem`
--

CREATE TABLE `layout_menu_rodape_ordem` (
  `id` int(11) NOT NULL,
  `id_pai` int(11) NOT NULL,
  `data` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `layout_menu_rodape_ordem`
--

INSERT INTO `layout_menu_rodape_ordem` (`id`, `id_pai`, `data`) VALUES
(1, 0, '1'),
(2, 0, '1,2'),
(3, 0, '1,2,3'),
(4, 0, '1,2,3,4'),
(5, 0, '1,2,3,4,5'),
(6, 0, '1,2,3,4,5'),
(9, 0, '1,2,3,4,5'),
(8, 0, '1,3,4,5'),
(10, 0, '1,2,3,4,5,6'),
(11, 0, '1,2,3,4,5'),
(12, 0, '1,2,3,4,5,7'),
(13, 0, '1,2,3,4,5,7,8'),
(14, 0, '1,2,3,4,7,8,5'),
(15, 0, '1,2,3,4,7,8,5,9'),
(16, 0, '1,2,3,4,9,7,8,5'),
(17, 0, '1,2,3,4,9,7,8,5,10'),
(18, 0, '1,2,10,3,4,9,7,8,5'),
(19, 0, '1,2,10,3,4,9,7,8,5,11'),
(20, 0, '1,2,10,3,11,4,9,7,8,5'),
(21, 0, '1,2,10,11,4,5'),
(22, 0, '1,10,2,11,4,5'),
(23, 0, '1,10,2,11,4,5,0'),
(24, 0, '1,10,2,11,4,5,0,12'),
(25, 0, '1,10,2,11,5,12'),
(26, 0, '1,10,2,12,11,5'),
(27, 0, '1,10,12,2,11,5');

-- --------------------------------------------------------

--
-- Estrutura da tabela `marcadagua`
--

CREATE TABLE `marcadagua` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `imagem` varchar(240) DEFAULT NULL,
  `posicao` int(2) DEFAULT '0',
  `preencher` int(2) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura da tabela `meta`
--

CREATE TABLE `meta` (
  `id` int(11) NOT NULL,
  `titulo_pagina` varchar(240) DEFAULT NULL,
  `keywords1` text,
  `keywords2` text,
  `descricao` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `meta`
--

INSERT INTO `meta` (`id`, `titulo_pagina`, `keywords1`, `keywords2`, `descricao`) VALUES
(1, 'SITE DE WEB RÁDIO', '', '', 'SITE DE WEB RÁDIO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--

CREATE TABLE `noticia` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `categoria` varchar(100) DEFAULT NULL,
  `data` int(10) DEFAULT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `autor` varchar(240) DEFAULT NULL,
  `previa` text,
  `conteudo` text,
  `destaque` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`id`, `codigo`, `categoria`, `data`, `titulo`, `autor`, `previa`, `conteudo`, `destaque`) VALUES
(51, '152365215032246', '159907608932099', 1599079320, 'Mark Zuckerberg, o novo membro do clube dos 100 bilhões de dólares', '149594055151679', 'Casas, camisetas cinza de mais de 2.500 reais e um carro de 7,6 milhões de reais: os excessos do terceiro homem mais rico do mundo', '<p>Em um ano complicado economicamente para a maior parte do planeta devido &agrave; pandemia de Covid, Zuckerberg conseguiu resultados positivos. Sua riqueza ultrapassou os 100 bilh&otilde;es de d&oacute;lares quando as a&ccedil;&otilde;es da empresa subiram 6,5%, um dia depois do lan&ccedil;amento do Reels no Instagram, recurso que imita o enorme sucesso do TikTok, uma rede social de compartilhamento de v&iacute;deos curtos utilizada principalmente por adolescentes e jovens. Coincid&ecirc;ncia ou n&atilde;o, o lan&ccedil;amento veio logo depois que o presidente dos Estados Unidos, Donald Trump, amea&ccedil;ou proibir no pa&iacute;s o TikTok, um aplicativo chin&ecirc;s cuja venda est&aacute; sendo negociada com a Microsoft, por consider&aacute;-la uma amea&ccedil;a &agrave; seguran&ccedil;a nacional.</p>\r\n\r\n<p>Caso faltassem motivos para Zuckerberg celebrar, h&aacute; duas semanas o Facebook anunciou ter batido um novo recorde de usu&aacute;rios em suas plataformas, incluindo WhatsApp e Instagram: 3 bilh&otilde;es. Mais do que o dobro da popula&ccedil;&atilde;o da <a href=\"https://brasil.elpais.com/noticias/china/\" target=\"_blank\">China</a>. O confinamento pela pandemia incentivou o uso das redes sociais no ano mais at&iacute;pico da hist&oacute;ria recente, o que levou a um aumento de quase 30% no valor nas a&ccedil;&otilde;es do Facebook e de 22 bilh&otilde;es de d&oacute;lares (119 bilh&otilde;es de reais) na fortuna de Zuckerberg, que se tornou assim o terceiro homem mais rico do mundo.</p>\r\n\r\n<p>Apesar de procurar economizar na hora de comprar uma TV, Zuckerberg &eacute; famoso por ter uma ampla carteira de im&oacute;veis, que inclui 10 propriedades nos Estados Unidos. As duas &uacute;ltimas foram compradas em 2019. Est&atilde;o localizadas nos arredores do lago Tahoe, um popular destino de f&eacute;rias nas montanhas de Sierra Nevada, entre a fronteira dos Estados de Calif&oacute;rnia e Nevada. O investimento foi de 59 milh&otilde;es de d&oacute;lares (320 milh&otilde;es de reais).</p>\r\n\r\n<p>O gosto por im&oacute;veis tamb&eacute;m lhe trouxe alguns contratempos. Em 2014, por exemplo, adquiriu um terreno de 300 hectares em Kauai, <a href=\"https://brasil.elpais.com/noticias/hawaii/\" target=\"_blank\">Hava&iacute;</a>, por 100 milh&otilde;es de d&oacute;lares (542 milh&otilde;es de reais), que conta com uma praia de 800 metros, uma planta&ccedil;&atilde;o de cana-de-a&ccedil;&uacute;car e uma fazenda org&acirc;nica. Mas tamb&eacute;m inclui uma d&uacute;zia de pequenos lotes concedidos aos nativos em meados do s&eacute;culo XIX, quando foram privatizadas terras do arquip&eacute;lago pela primeira vez. Pela legisla&ccedil;&atilde;o havaiana, fam&iacute;lias nativas conservam direitos sobre essas &aacute;reas. Em 2017, o empres&aacute;rio processou essas fam&iacute;lias com o objetivo de que um juiz as obrigasse a vender os lotes a quem fizesse a melhor oferta em um leil&atilde;o p&uacute;blico. Depois de uma avalanche de cr&iacute;ticas, retirou a a&ccedil;&atilde;o. &ldquo;Foi um erro&rdquo;, disse ele em uma carta p&uacute;blica. Agora, uma campanha lan&ccedil;ada pela ativista Mia Brier no site Change.org pede que seja barrado o &ldquo;colonialismo&rdquo; do CEO do Facebook no Hava&iacute;. A iniciativa de Brier j&aacute; reuniu quase 1 milh&atilde;o de assinaturas. &ldquo;A premissa da peti&ccedil;&atilde;o &eacute; falsa. Mark n&atilde;o est&aacute; denunciando os nativos e ningu&eacute;m foi obrigado a abandonar sua terra&rdquo;, afirmou um representante do empres&aacute;rio &agrave; revista <em>Newsweek</em>.</p>\r\n\r\n<p>Al&eacute;m da fama mundial de Zuckerberg por sua onipresente rede social, ele e sua mulher s&atilde;o reconhecidos filantropos. Nos &uacute;ltimos anos, investiram bilh&otilde;es de d&oacute;lares em programas de educa&ccedil;&atilde;o para crian&ccedil;as com poucos recursos e em fundos de pesquisas m&eacute;dicas destinadas a curar doen&ccedil;as que afetam principalmente menores de idade. Em 2010, uniu-se &agrave; iniciativa The Giving Pledge, que foi lan&ccedil;ada em junho de 2010 com o patroc&iacute;nio de Warren Buffet e Bill Gates e convida as pessoas e fam&iacute;lias mais ricas dos EUA a se comprometer a doar a maior parte de sua fortuna em vida para fins altru&iacute;stas.</p>\r\n\r\n<p>Em 2015, quando nasceu a primeira das duas filhas de Zuckerberg e Chan, Maxima Chan, o casal anunciou que doar&aacute; ao longo de sua vida 99% de suas a&ccedil;&otilde;es do Facebook para trabalhos filantr&oacute;picos. Naquela ocasi&atilde;o, seu valor j&aacute; passava de 45 bilh&otilde;es de d&oacute;lares (244 bilh&otilde;es de reais). O dinheiro, segundo o jovem empres&aacute;rio, ser&aacute; canalizado por meio de uma funda&ccedil;&atilde;o chamada Chan Zuckerberg Initiative, cujo objetivo &eacute; &ldquo;impulsionar o potencial humano e promover a igualdade do ser humano&rdquo;.</p>\r\n\r\n<p>Exceto por seus gostos imobili&aacute;rios, Zuckerberg n&atilde;o costuma ostentar sua fortuna. Nem em sua forma de se vestir. Suas roupas costumam ser informais e repetitivas: cal&ccedil;a jeans preta e camiseta cinza. Mas essas camisetas aparentemente comuns s&atilde;o uma encomenda especial &agrave; grife italiana Brunello Cucinelli e custam, cada uma, mais de 400 euros (2.570 reais). Quanto aos carros, outro sinal vis&iacute;vel de poder econ&ocirc;mico, o fundador do Facebook tem preferido dirigir esportivos econ&ocirc;micos como o Acura TSX, o Honda Fit e o Volkswagen Golf GTI, todos de menos de 30.000 d&oacute;lares (163.000 reais). Embora, como publicou o <em>Business Insider</em>, o agora membro do clube dos 100 bilh&otilde;es de d&oacute;lares tenha se permitido um capricho em 2014 e comprado um Pagani Huayra avaliado em 1,4 milh&atilde;o de d&oacute;lares (7,6 milh&otilde;es de reais).</p>\r\n', '148895720854403'),
(52, '152390697192862', '159907608932099', 1599074460, 'Neymar Jr. está com coronavírus', '149594055151679', 'Neymar Jr. testou positivo para o novo coronavírus, segundo o jornal francês L\'Equipe.  Segundo a publicação, o craque foi infectado após passar as férias em Ibiza, na Espanha, e já está em quarentena. Não foi divulgado se Neymar estaria assintomático ou não.', '<p>O Paris-Saint Germain confirmou que teve tr&ecirc;s jogadores de seu elenco contaminados pela doen&ccedil;a, no entanto ainda n&atilde;o revelou os nomes. Segundo o jornal, al&eacute;m do ex-namorado de Bruna Marquezine,&nbsp; os&nbsp;argentinos &Aacute;ngel Di Maria e Leandro Paredes estariam com as doen&ccedil;as. Assim como Neymar, os dois estavam tamb&eacute;m em Ibiza ap&oacute;s a derrota do time na Champions League para o Bayern de Munique.</p>\r\n\r\n<p>Vale lembrar que, Neymar e Anitta estiveram juntos em Ibiza recentemente. Os dois apareceram curtindo a ilha espanhola com outros jogadores de futebol. A cantora j&aacute; retornou ao Brasil.&nbsp;</p>\r\n\r\n<p>Procurada pelo<strong><em> ESTRELANDO, </em></strong>a assessoria de imprensa de Neymar Jr. disse n&atilde;o saber sobre o assunto e que iria confirmar com o clube de futebol franc&ecirc;s.&nbsp;</p>\r\n\r\n<div class=\"wall protected-content\">\r\n<div class=\"mc-column content-text active-extra-styles \">\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>\r\n', '148895720854403'),
(53, '152407047925396', '159907608932099', 1599065640, 'De volta ao Brasil, Anitta adota cães com necessidades especiais', '149594055151679', 'Anitta adotou três cães após voltar ao Brasil de viagem pela Europa.\r\nA musa, que já é &quot;mãe&quot; de seis cachorros, decidiu aumentar sua família canina.', '<p>Em v&iacute;deos publicados nas redes sociais para dizer que est&aacute; de volta ao Brasil, a estrela aproveitou para compartilhar que adotou dois bichinhos do abrigo para animais da famosa ativista Luisa Mell, e outro c&atilde;o de um local diferente.&quot;Oi, Brasil. Cheguei em S&atilde;o Paulo, n&atilde;o cheguei em casa ainda porque adotei dois cachorrinhos com a Luisa Mell, tr&ecirc;s no total. Um &eacute; cadeirante, mas &eacute; de outro lugar. Estamos esperando a cadeira dele chegar&quot;, disse.&quot;Um deles &eacute; deficiente visual, da mesma ra&ccedil;a do Pl&iacute;nio, mas &eacute; mais velhinho, era usado para fazer filhotes. Cheguei feliz da vida&quot;, completou a cantora.Al&eacute;m dos tr&ecirc;s novos cachorros, Anitta &eacute; dona de Pl&iacute;nio, Olavo, Serafim, Alfredo, Afonso e Tobias.</p>\r\n', '148895720854403');

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia_audio`
--

CREATE TABLE `noticia_audio` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `arquivo` varchar(200) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia_autores`
--

CREATE TABLE `noticia_autores` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  `descricao` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `noticia_autores`
--

INSERT INTO `noticia_autores` (`id`, `codigo`, `nome`, `imagem`, `descricao`) VALUES
(13, '149594055151679', 'Assessoria de Imprensa', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia_destaque`
--

CREATE TABLE `noticia_destaque` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `titulo` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `noticia_destaque`
--

INSERT INTO `noticia_destaque` (`id`, `codigo`, `titulo`) VALUES
(13, '148895720854403', 'Destaque Inicial');

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia_grupo`
--

CREATE TABLE `noticia_grupo` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `titulo` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `noticia_grupo`
--

INSERT INTO `noticia_grupo` (`id`, `codigo`, `titulo`) VALUES
(59, '152360554284648', 'Tecnologia'),
(61, '159907608932099', 'Artistas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia_imagem`
--

CREATE TABLE `noticia_imagem` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `noticia_imagem`
--

INSERT INTO `noticia_imagem` (`id`, `codigo`, `imagem`) VALUES
(64, '147793794629308', '1892012-13407-1-[31-10-16][16-19-09].jpg'),
(316, '152365215032246', 'TCBG2Y2LQBSXPXC3VGAFQ3QE-[02-09-20][16-47-23].jpg'),
(313, '152407047925396', 'B18DfAe-img-[02-09-20][16-24-38].jpg'),
(315, '152390697192862', 'ney-[02-09-20][16-32-35].jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia_imagem_legenda`
--

CREATE TABLE `noticia_imagem_legenda` (
  `id` int(11) NOT NULL,
  `id_img` varchar(100) DEFAULT NULL,
  `legenda` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `noticia_imagem_legenda`
--

INSERT INTO `noticia_imagem_legenda` (`id`, `id_img`, `legenda`) VALUES
(19, '186', 'teste'),
(20, '120', 'dsfgsdfg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia_imagem_ordem`
--

CREATE TABLE `noticia_imagem_ordem` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `noticia_imagem_ordem`
--

INSERT INTO `noticia_imagem_ordem` (`id`, `codigo`, `data`) VALUES
(1, '149599811047271', '114'),
(2, '149599880476145', '115'),
(3, '149599883688118', '116'),
(4, '149599885384737', '117'),
(5, '149599887364288', '118'),
(6, '149599888515844', '119'),
(7, '149601438182408', '120'),
(8, '149601438182408', '120,121'),
(9, '149601438182408', '120,121,122'),
(10, '149601438182408', '120,121,122,123'),
(11, '149601438182408', '120,121,122,123,124'),
(12, '149601438182408', '120,121,122,123,124,125'),
(13, '149601438182408', '120,121,122,123,124,125,126'),
(14, '149601438182408', '120,121,122,123,124,125,126,127'),
(15, '149601438182408', '120,121,122,123,124,125,126,127,128'),
(16, '149601438182408', '123,120,121,124,125,126,127,128'),
(17, '149599880476145', '115,129'),
(18, '149599880476145', '115,129,130'),
(19, '149599880476145', '130,129'),
(20, '149599880476145', '130,129,131'),
(21, '149599880476145', '130,129,131,132'),
(22, '150129704346243', '133'),
(23, '150129704346243', '133,134'),
(24, '150129704346243', '133,134,135'),
(25, '150129704346243', '133,134,135,136'),
(26, '150129704346243', '133,134,135,136,137'),
(27, '150129704346243', '133,134,135,136,137,138'),
(28, '150129704346243', '133,134,135,136,137,138,139'),
(29, '150129704346243', '133,134,135,136,137,138,139,140'),
(30, '150129704346243', '133,134,135,136,137,138,139,140,141'),
(31, '150129704346243', '133,134,135,136,137,138,139,140,141,142'),
(32, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143'),
(33, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144'),
(34, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145'),
(35, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146'),
(36, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147'),
(37, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148'),
(38, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149'),
(39, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150'),
(40, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151'),
(41, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152'),
(42, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153'),
(43, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154'),
(44, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155'),
(45, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156'),
(46, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157'),
(47, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158'),
(48, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159'),
(49, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160'),
(50, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161'),
(51, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162'),
(52, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163'),
(53, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164'),
(54, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165'),
(55, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166'),
(56, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167'),
(57, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168'),
(58, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169'),
(59, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170'),
(60, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171'),
(61, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172'),
(62, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173'),
(63, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174'),
(64, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175'),
(65, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176'),
(66, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177'),
(67, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178'),
(68, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179'),
(69, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180'),
(70, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181'),
(71, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182'),
(72, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183'),
(73, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184'),
(74, '150129704346243', '133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185'),
(75, '150129815284047', '186'),
(76, '150129815284047', '186,187'),
(77, '150129815284047', '186,187,188'),
(78, '150129815284047', '186,187,188,189'),
(79, '150129815284047', '186,187,188,189,190'),
(80, '150129815284047', '186,187,188,189,190,191'),
(81, '150129815284047', '186,187,188,189,190,191,192'),
(82, '150129815284047', '186,187,188,189,190,191,192,193'),
(83, '150129815284047', '186,187,188,189,190,191,192,193,194'),
(84, '150129815284047', '186,187,188,189,190,191,192,193,194,195'),
(85, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196'),
(86, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197'),
(87, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198'),
(88, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199'),
(89, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200'),
(90, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201'),
(91, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202'),
(92, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203'),
(93, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204'),
(94, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205'),
(95, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206'),
(96, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207'),
(97, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208'),
(98, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209'),
(99, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210'),
(100, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211'),
(101, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212'),
(102, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213'),
(103, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214'),
(104, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215'),
(105, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216'),
(106, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217'),
(107, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218'),
(108, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219'),
(109, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220'),
(110, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221'),
(111, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222'),
(112, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223'),
(113, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224'),
(114, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225'),
(115, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226'),
(116, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227'),
(117, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228'),
(118, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229'),
(119, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230'),
(120, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231'),
(121, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232'),
(122, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233'),
(123, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234'),
(124, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235'),
(125, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236'),
(126, '150129815284047', '186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237'),
(127, '150129815284047', '189,186,187,188,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237'),
(128, '150129815284047', '189,186,187,188,190,191,192,193,197,194,195,196,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237'),
(129, '150129815284047', '197,189,186,187,188,190,191,192,193,194,195,196,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237'),
(130, '149599880476145', '130,129,131,132,238'),
(131, '149601438182408', '123,120,121,124,125,126,127,128,239'),
(132, '149601438182408', '123,120,121,124,125,126,127,128,239,240'),
(133, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241'),
(134, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242'),
(135, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243'),
(136, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244'),
(137, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245'),
(138, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246'),
(139, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247'),
(140, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248'),
(141, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249'),
(142, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250'),
(143, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251'),
(144, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252'),
(145, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253'),
(146, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254'),
(147, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255'),
(148, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256'),
(149, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257'),
(150, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258'),
(151, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259'),
(152, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260'),
(153, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261'),
(154, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262'),
(155, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263'),
(156, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264'),
(157, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265'),
(158, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266'),
(159, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267'),
(160, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268'),
(161, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269'),
(162, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270'),
(163, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271'),
(164, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272'),
(165, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273'),
(166, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274'),
(167, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275'),
(168, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276'),
(169, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277'),
(170, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278'),
(171, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279'),
(172, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280'),
(173, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281'),
(174, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282'),
(175, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283'),
(176, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284'),
(177, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285'),
(178, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286'),
(179, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287'),
(180, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288'),
(181, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289'),
(182, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290'),
(183, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291'),
(184, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292'),
(185, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293'),
(186, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294'),
(187, '149601438182408', '123,120,121,124,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294'),
(188, '149601438182408', '124,120,125,126,127,128,239,240,241,242,243,244,245,246,247,248,249,250,251,252,253,254,255,256,257,258,259,260,261,262,263,264,265,266,267,268,269,270,271,272,273,274,275,276,277,278,279,280,281,282,283,284,285,286,287,288,289,290,291,292,293,294'),
(189, '150817346426446', '296'),
(190, '152365215032246', '297'),
(191, '152390697192862', '298'),
(192, '152407047925396', '299'),
(193, '152952693859187', '300'),
(194, '152952695554312', '301'),
(195, '152952697158469', '302'),
(196, '152952698730902', '303'),
(197, '152952700697756', '304'),
(198, '152952703581295', '305'),
(199, '152952705256857', '306'),
(200, '152952708798678', '307'),
(201, '152407047925396', '299,308'),
(202, '152390697192862', '298,309'),
(203, '152365215032246', '297,310'),
(204, '152407047925396', '299,308,311'),
(205, '152390697192862', '298,309,312'),
(206, '152407047925396', '299,308,311,313'),
(207, '152390697192862', '298,309,312,314'),
(208, '152390697192862', '298,309,312,314,315'),
(209, '152365215032246', '297,310,316');

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia_marcadagua`
--

CREATE TABLE `noticia_marcadagua` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `noticia_marcadagua`
--

INSERT INTO `noticia_marcadagua` (`id`, `codigo`) VALUES
(1, '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `parceiros`
--

CREATE TABLE `parceiros` (
  `id` int(10) UNSIGNED NOT NULL,
  `codigo` char(100) DEFAULT NULL,
  `titulo` char(200) DEFAULT NULL,
  `endereco` text,
  `imagem` varchar(240) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `parceiros`
--

INSERT INTO `parceiros` (`id`, `codigo`, `titulo`, `endereco`, `imagem`) VALUES
(72, '153693181295426', 'Studio Bala - Diretor Geral', '', 'g-[02-09-20][16-21-04].jpg'),
(71, '153693180133497', 'Studio Bala - Marketing', '', 'rad-[02-09-20][16-19-25].jpg'),
(70, '153693178880430', 'Studio Bala - Direção Musical', '', 'mulher02-[02-09-20][16-21-26].jpg'),
(69, '153693168050736', 'Studio Bala - Edição e Marketing', '', 'a18-[02-09-20][16-17-42].jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `parceiros_ordem`
--

CREATE TABLE `parceiros_ordem` (
  `id` int(11) NOT NULL,
  `data` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `parceiros_ordem`
--

INSERT INTO `parceiros_ordem` (`id`, `data`) VALUES
(16, '7,6,9,10,11,12'),
(17, '7,6,9,10,11,12,13'),
(18, '7,6,9,10,11,12,13,14'),
(19, '7,6,9,10,11,12,13,14,15'),
(20, '7,6,9,10,11,12,13,14,15,16'),
(21, '7,6,9,10,11,12,13,14,15,16,17'),
(22, '7,6,9,10,11,12,13,14,15,16,17,18'),
(23, '7,6,9,10,11,12,13,14,15,16,17,18,19'),
(24, '7,6,9,10,11,12,13,14,15,16,17,18,19,20'),
(25, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21'),
(26, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22'),
(27, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23'),
(28, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24'),
(29, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25'),
(30, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26'),
(31, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27'),
(32, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28'),
(33, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29'),
(34, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30'),
(35, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31'),
(36, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32'),
(37, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33'),
(38, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34'),
(39, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35'),
(40, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36'),
(41, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37'),
(42, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38'),
(43, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39'),
(44, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40'),
(45, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41'),
(46, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42'),
(47, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43'),
(48, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44'),
(49, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45'),
(50, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46'),
(51, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47'),
(52, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48'),
(53, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49'),
(54, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50'),
(55, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51'),
(56, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52'),
(57, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53'),
(58, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54'),
(59, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55'),
(60, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56'),
(61, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57'),
(62, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58'),
(63, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59'),
(64, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60'),
(65, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61'),
(66, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62'),
(67, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63'),
(68, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64'),
(69, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65'),
(70, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66'),
(71, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67'),
(72, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68'),
(73, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69'),
(74, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70'),
(75, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71'),
(76, '7,6,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `grupo` varchar(100) DEFAULT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `previa` text,
  `conteudo` text,
  `ordem` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos_grupos`
--

CREATE TABLE `produtos_grupos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) NOT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `produtos_grupos`
--

INSERT INTO `produtos_grupos` (`id`, `codigo`, `titulo`, `imagem`) VALUES
(5, '150672561235889', 'Subgrupo 1', NULL),
(6, '150672562488318', 'Subgrupo 2', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos_grupos_ordem`
--

CREATE TABLE `produtos_grupos_ordem` (
  `id` int(11) NOT NULL,
  `id_pai` int(11) NOT NULL,
  `data` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos_grupos_ordem`
--

INSERT INTO `produtos_grupos_ordem` (`id`, `id_pai`, `data`) VALUES
(1, 0, '1'),
(2, 0, '1,2'),
(3, 0, '1,2,3'),
(4, 0, '1,2,3,4'),
(5, 0, '1,2,3,4,5'),
(6, 0, '1,2,3,4,5,6'),
(7, 5, ''),
(8, 6, ''),
(9, 1, '5,6'),
(10, 2, ''),
(34, 2, ''),
(12, 4, ''),
(13, 0, '1,2,3,4'),
(14, 2, ''),
(15, 5, ''),
(16, 6, ''),
(17, 1, '5,6'),
(33, 0, '2,1,3,4'),
(19, 4, ''),
(20, 0, '2,1,3,4'),
(21, 2, ''),
(22, 5, ''),
(23, 6, ''),
(24, 1, '5,6'),
(25, 4, ''),
(32, 4, ''),
(27, 0, '2,1,3'),
(28, 2, ''),
(29, 5, ''),
(30, 6, ''),
(31, 1, '5,6'),
(35, 5, ''),
(36, 6, ''),
(37, 1, '5,6'),
(38, 3, ''),
(39, 4, ''),
(40, 0, '2,1,3,4'),
(41, 0, '2,1,3,4,7'),
(42, 0, '2,1,3,4,7,8'),
(43, 0, '2,1,3,4,7,8,9'),
(44, 0, '2,1,3,4,7,8,9,10'),
(45, 0, '2,1,3,4,7,8,9,10,11'),
(46, 7, ''),
(54, 12, ''),
(48, 9, ''),
(49, 10, ''),
(50, 11, ''),
(51, 0, '8,9,10,11'),
(52, 0, '8,9,10,11,12'),
(53, 7, ''),
(55, 9, ''),
(56, 10, ''),
(57, 11, ''),
(58, 0, '7,8,12,9,10,11'),
(59, 0, '7,8,12,9,10,11,13'),
(60, 0, '7,8,12,9,10,11,13,14'),
(61, 0, '7,8,12,9,10,11,13,14,15');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos_imagem`
--

CREATE TABLE `produtos_imagem` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `produtos_imagem`
--

INSERT INTO `produtos_imagem` (`id`, `codigo`, `imagem`) VALUES
(72, '150672555484421', '2-[23-04-18][05-47-43].jpg'),
(71, '150672557185709', '1-[23-04-18][05-47-11].jpg'),
(90, '152476551730274', 'telhasanduiche4-[26-04-18][14-58-48].jpg'),
(91, '152476551730274', 'telhasanduiche5-[26-04-18][14-58-49].jpg'),
(92, '152476551730274', 'telhasanduiche6-[26-04-18][14-58-50].jpg'),
(93, '152476551730274', 'telhasanduiche7-[26-04-18][14-58-52].jpg'),
(94, '152476551730274', 'telhasanduiche8-[26-04-18][14-58-53].jpg'),
(95, '152476551730274', 'telhasanduiche9-[26-04-18][14-58-54].jpg'),
(96, '152476632499796', 'telhameiosanduiche4-[26-04-18][15-12-15].jpg'),
(97, '152476632499796', 'telhameiosanduiche5-[26-04-18][15-12-17].jpg'),
(98, '152476632499796', 'telhameiosanduiche6-[26-04-18][15-12-18].jpg'),
(99, '152476632499796', 'telhameiosanduiche7-[26-04-18][15-12-19].jpg'),
(100, '152476632499796', 'telhameiosanduiche8-[26-04-18][15-12-21].jpg'),
(101, '152476632499796', 'telhameiosanduiche9-[26-04-18][15-12-23].jpg'),
(102, '152476698073306', 'telhafilmebop4-[26-04-18][15-25-57].jpg'),
(103, '152476698073306', 'telhafilmebop5-[26-04-18][15-25-58].jpg'),
(104, '152476698073306', 'telhafilmebop6-[26-04-18][15-25-59].jpg'),
(105, '152476698073306', 'telhafilmebop7-[26-04-18][15-26-00].jpg'),
(106, '152476698073306', 'telhafilmebop8-[26-04-18][15-26-02].jpg'),
(107, '152476698073306', 'telhafilmebop9-[26-04-18][15-26-03].jpg'),
(108, '152476771438958', 'telhaforopvc-[26-04-18][15-35-27].jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos_imagem_legenda`
--

CREATE TABLE `produtos_imagem_legenda` (
  `id` int(11) NOT NULL,
  `id_img` varchar(100) DEFAULT NULL,
  `legenda` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `produtos_imagem_legenda`
--

INSERT INTO `produtos_imagem_legenda` (`id`, `id_img`, `legenda`) VALUES
(1, '90', '40/980'),
(2, '91', '40/1020'),
(3, '92', '25/1020'),
(4, '93', '35/1050'),
(5, '94', '17/980'),
(6, '95', '10/1090'),
(7, '96', '40/980'),
(8, '97', '40/1020'),
(9, '98', '25/1020'),
(10, '99', '35/1050'),
(11, '100', '17/980'),
(12, '101', '10/1090'),
(13, '102', '40/980'),
(14, '103', '40/1020'),
(15, '104', '25/1020'),
(16, '105', '35/1050'),
(17, '106', '17/980'),
(18, '107', '10/1090');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos_imagem_ordem`
--

CREATE TABLE `produtos_imagem_ordem` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `produtos_imagem_ordem`
--

INSERT INTO `produtos_imagem_ordem` (`id`, `codigo`, `data`) VALUES
(1, '150672555484421', '1'),
(2, '150672557185709', '2'),
(3, '150672558354214', '3'),
(4, '150672558354214', '3,4'),
(5, '150672558354214', '4,3'),
(6, '150816564593490', '5'),
(7, '150816564593490', '5,6'),
(8, '150816564593490', '5,6,7'),
(9, '150816564593490', '5,6,7,8'),
(10, '150816564593490', '5,6,7,8,9'),
(11, '150816564593490', '5,6,7,8,9,10'),
(12, '150816564593490', '5,6,7,8,9,10,11'),
(13, '150816564593490', '5,6,7,8,9,10,11,12'),
(14, '150816564593490', '5,6,7,8,9,10,11,12,13'),
(15, '150816564593490', '5,6,7,8,9,10,11,12,13,14'),
(16, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15'),
(17, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16'),
(18, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17'),
(19, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18'),
(20, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19'),
(21, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20'),
(22, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21'),
(23, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22'),
(24, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23'),
(25, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24'),
(26, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25'),
(27, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26'),
(28, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27'),
(29, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28'),
(30, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29'),
(31, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30'),
(32, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31'),
(33, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32'),
(34, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33'),
(35, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34'),
(36, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35'),
(37, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36'),
(38, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37'),
(39, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38'),
(40, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39'),
(41, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40'),
(42, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41'),
(43, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42'),
(44, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43'),
(45, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44'),
(46, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45'),
(47, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46'),
(48, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47'),
(49, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48'),
(50, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49'),
(51, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50'),
(52, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51'),
(53, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52'),
(54, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53'),
(55, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54'),
(56, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55'),
(57, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56'),
(58, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57'),
(59, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58'),
(60, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59'),
(61, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60'),
(62, '150816564593490', '5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61'),
(63, '150832269634546', '62'),
(64, '150832269634546', '62,63'),
(65, '150832269634546', '62,63,64'),
(66, '150832269634546', '62,63,64,65'),
(67, '150832269634546', '62,63,64,65,66'),
(68, '150832269634546', '62,63,64,65,66,67'),
(69, '150832269634546', '62,63,64,65,66,67,68'),
(70, '150832269634546', '62,63,64,65,66,67,68,69'),
(71, '150832269634546', '62,63,64,65,66,67,68,69,70'),
(72, '150672557185709', '2,71'),
(73, '150672555484421', '1,72'),
(74, '152447337495537', '73'),
(75, '152447339777438', '74'),
(76, '152451672826755', '75'),
(77, '152475300322802', '76'),
(78, '152475446096577', '77'),
(79, '152476265647932', '78'),
(80, '152476293855881', '79'),
(81, '152476324494284', '80'),
(82, '152476324494284', '80,81'),
(83, '152476344519071', '82'),
(84, '152476373128908', '83'),
(85, '152476393531031', '84'),
(86, '152476409793616', '85'),
(87, '152476393531031', '84,86'),
(88, '152476393531031', '84,86,87'),
(89, '152476344519071', '82,88'),
(90, '152476393531031', '84,86,87,89'),
(91, '152476551730274', '90'),
(92, '152476551730274', '90,91'),
(93, '152476551730274', '90,91,92'),
(94, '152476551730274', '90,91,92,93'),
(95, '152476551730274', '90,91,92,93,94'),
(96, '152476551730274', '90,91,92,93,94,95'),
(97, '152476632499796', '96'),
(98, '152476632499796', '96,97'),
(99, '152476632499796', '96,97,98'),
(100, '152476632499796', '96,97,98,99'),
(101, '152476632499796', '96,97,98,99,100'),
(102, '152476632499796', '96,97,98,99,100,101'),
(103, '152476632499796', '97,96,98,99,100,101'),
(104, '152476632499796', '96,97,98,99,100,101'),
(105, '152476698073306', '102'),
(106, '152476698073306', '102,103'),
(107, '152476698073306', '102,103,104'),
(108, '152476698073306', '102,103,104,105'),
(109, '152476698073306', '102,103,104,105,106'),
(110, '152476698073306', '102,103,104,105,106,107'),
(111, '152476771438958', '108');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos_ordem`
--

CREATE TABLE `produtos_ordem` (
  `id` int(11) NOT NULL,
  `grupo` varchar(100) DEFAULT NULL,
  `data` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produtos_ordem`
--

INSERT INTO `produtos_ordem` (`id`, `grupo`, `data`) VALUES
(1, '150672480554090', '1'),
(2, '150672480554090', '1,2'),
(3, '150672546516531', '3'),
(4, '150672480554090', '1,2,4'),
(5, '150672480554090', '1,2,4,5'),
(6, '150672480554090', '1,2,5,4'),
(7, '150672480554090', '1,5,2,4'),
(8, '150672480554090', '2,1'),
(9, '150672546516531', '3,6'),
(10, '150837201499516', '7'),
(11, '150672546516531', '3,6,8'),
(12, '150672546516531', '3,6,8,9'),
(13, '150672546516531', '3,6,8,9,10'),
(14, '152475298223974', '11'),
(15, '152475298223974', '11,12'),
(16, '152475298223974', '11,12,13'),
(17, '152475298223974', '11,12,13,14'),
(18, '152475298223974', '11,12,13,14,15'),
(19, '152475298223974', '11,12,13,14,15,16'),
(20, '152475298223974', '11,12,13,14,15,16,17'),
(21, '152475298223974', '11,12,13,14,15,16,17,18'),
(22, '152475298223974', '11,12,13,14,15,16,17,18,19'),
(23, '152476495051709', '20'),
(24, '152476576879952', '21'),
(25, '152476667614812', '22'),
(26, '152476747714705', '23');

-- --------------------------------------------------------

--
-- Estrutura da tabela `programacao`
--

CREATE TABLE `programacao` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `inicio` int(11) DEFAULT NULL,
  `programa` varchar(255) DEFAULT NULL,
  `apresentador` varchar(255) DEFAULT NULL,
  `descricao` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `programacao`
--

INSERT INTO `programacao` (`id`, `codigo`, `dia`, `inicio`, `programa`, `apresentador`, `descricao`) VALUES
(11, '154300938830408', 1, 461995200, 'Só Clássicos Sertanejos', '', ''),
(12, '154300940654106', 2, 461995200, 'Só Clássicos Sertanejos', '', ''),
(13, '154300941913450', 3, 461995200, 'Só Clássicos Sertanejos', '', ''),
(6, '154300915127311', 1, 461991600, 'Violada Sertaneja', '', ''),
(7, '154300917529902', 2, 461991600, 'Violada Sertaneja', '', ''),
(8, '154300934273304', 3, 461991600, 'Violada Sertaneja', '', ''),
(9, '154300935359277', 4, 461991600, 'Violada Sertaneja', '', ''),
(10, '154300936570330', 5, 461991600, 'Violada Sertaneja', '', ''),
(14, '154300943284335', 4, 461995200, 'Só Clássicos Sertanejos', '', ''),
(15, '154300944698595', 5, 461995200, 'Só Clássicos Sertanejos', '', ''),
(16, '154300947382543', 1, 461998800, 'Sertão Caboclo', '', ''),
(17, '154300948336789', 2, 461998800, 'Sertão Caboclo', '', ''),
(18, '154300949441196', 3, 461998800, 'Sertão Caboclo', '', ''),
(19, '154300951216463', 4, 461998800, 'Sertão Caboclo', '', ''),
(20, '154300953051236', 5, 461998800, 'Sertão Caboclo', '', ''),
(21, '154300962522049', 1, 462006000, 'Violada Sertaneja', '', ''),
(22, '154300963764056', 2, 462006000, 'Violada Sertaneja', '', ''),
(23, '154301160753813', 3, 462006000, 'Violada Sertaneja', '', ''),
(24, '154301161925576', 4, 462006000, 'Violada Sertaneja', '', ''),
(25, '154301162844746', 5, 462006000, 'Violada Sertaneja', '', ''),
(26, '154301217941198', 1, 462009600, 'Canta Brasil', 'Jaime Adriano', ''),
(27, '154301219711863', 1, 462016800, 'Bom dia Rainha', 'Antonio Carlos', ''),
(28, '154301221982008', 2, 462009600, 'Canta Brasil', 'Jaime Adriano', ''),
(29, '154301223477113', 3, 462009600, 'Canta Brasil', 'Jaime Adriano', ''),
(30, '154301225337623', 4, 462009600, 'Canta Brasil', 'Jaime Adriano', ''),
(31, '154301226575099', 5, 462009600, 'Canta Brasil', 'Jaime Adriano', ''),
(32, '154301229496164', 2, 462016800, 'Bom dia Rainha', 'Antonio Carlos', ''),
(33, '154301230339586', 3, 462016800, 'Bom dia Rainha', 'Antonio Carlos', ''),
(34, '154301232529044', 5, 462016800, 'Bom dia Rainha', 'Antonio Carlos', ''),
(35, '154301233725144', 4, 462016800, 'Bom dia Rainha', 'Antonio Carlos', ''),
(36, '154301236417059', 1, 462020400, 'De bem com a vida', 'Roberto Silva', ''),
(37, '154301238295741', 2, 462020400, 'De bem com a vida', 'Roberto Silva', ''),
(38, '154301239028717', 3, 462020400, 'De bem com a vida', 'Roberto Silva', ''),
(39, '154301239730742', 4, 462020400, 'De bem com a vida', 'Roberto Silva', ''),
(40, '154301240484489', 5, 462020400, 'De bem com a vida', 'Roberto Silva', ''),
(41, '154301242246964', 1, 462024000, 'Rainha Notícias', 'Junior Bodaneze', ''),
(42, '154301243194204', 2, 462024000, 'Rainha Notícias', 'Junior Bodaneze', ''),
(43, '154301244324848', 3, 462024000, 'Rainha Notícias', 'Junior Bodaneze', ''),
(44, '154301245447991', 4, 462024000, 'Rainha Notícias', 'Junior Bodaneze', ''),
(45, '154301246857311', 5, 462024000, 'Rainha Notícias', 'Junior Bodaneze', ''),
(46, '154301252062579', 1, 462027600, 'Show da Manhã', 'Edilson José', ''),
(47, '154301252993035', 2, 462027600, 'Show da Manhã', 'Edilson José', ''),
(48, '154301253878969', 3, 462027600, 'Show da Manhã', 'Edilson José', ''),
(49, '154301254916463', 4, 462027600, 'Show da Manhã', 'Edilson José', ''),
(50, '154301255661994', 5, 462027600, 'Show da Manhã', 'Edilson José', ''),
(51, '154301258644091', 1, 462034800, 'Conexão Rainha', 'Jaime Adriano', ''),
(52, '154301259457593', 2, 462034800, 'Conexão Rainha', 'Jaime Adriano', ''),
(53, '154301260114209', 3, 462034800, 'Conexão Rainha', 'Jaime Adriano', ''),
(54, '154301260949754', 4, 462034800, 'Conexão Rainha', 'Jaime Adriano', ''),
(55, '154301261740021', 5, 462034800, 'Conexão Rainha', 'Jaime Adriano', ''),
(56, '154301271629748', 1, 462038400, 'Violada Sertaneja', '', ''),
(57, '154301272316053', 2, 462038400, 'Violada Sertaneja', '', ''),
(58, '154301273234791', 3, 462038400, 'Violada Sertaneja', '', ''),
(59, '154301273982582', 4, 462038400, 'Violada Sertaneja', '', ''),
(60, '154301274673133', 5, 462038400, 'Violada Sertaneja', '', ''),
(61, '154301276570243', 1, 462042000, 'Misturadão', '', ''),
(62, '154301277236223', 2, 462042000, 'Misturadão', '', ''),
(63, '154301277976626', 3, 462042000, 'Misturadão', '', ''),
(64, '154301278558520', 4, 462042000, 'Misturadão', '', ''),
(65, '154301279276296', 4, 462045600, 'Revista Rainha', 'Junior Bodaneze', ''),
(66, '154301279932983', 5, 462042000, 'Misturadão', '', ''),
(67, '154301286662427', 5, 462045600, 'Revista Rainha', 'Junior Bodaneze', ''),
(68, '154301287915524', 1, 462045600, 'Revista Rainha', 'Junior Bodaneze', ''),
(69, '154301288683894', 2, 462045600, 'Revista Rainha', 'Junior Bodaneze', ''),
(70, '154301289410351', 3, 462045600, 'Revista Rainha', 'Junior Bodaneze', ''),
(71, '154301294063655', 1, 462049200, 'Rainha Pop', 'Antonio Carlos', ''),
(72, '154301294858075', 2, 462049200, 'Rainha Pop', 'Antonio Carlos', ''),
(73, '154301296356364', 3, 462049200, 'Rainha Pop', 'Antonio Carlos', ''),
(74, '154301297244189', 4, 462049200, 'Rainha Pop', 'Antonio Carlos', ''),
(75, '154301297960501', 5, 462049200, 'Rainha Pop', 'Antonio Carlos', ''),
(76, '154301299962389', 1, 462052800, 'Paradão Sertanejo', 'Roberto Silva', ''),
(77, '154301300613905', 2, 462052800, 'Paradão Sertanejo', 'Roberto Silva', ''),
(78, '154301301558738', 3, 462052800, 'Paradão Sertanejo', 'Roberto Silva', ''),
(79, '154301302263811', 5, 462052800, 'Paradão Sertanejo', 'Roberto Silva', ''),
(80, '154301304415335', 4, 462052800, 'Paradão Sertanejo', 'Roberto Silva', ''),
(81, '154301314248654', 1, 462056400, 'Rainha no Sertão', 'Antonio Carlos', ''),
(82, '154301315039110', 2, 462056400, 'Rainha no Sertão', 'Antonio Carlos', ''),
(83, '154301315748427', 3, 462056400, 'Rainha no Sertão', 'Antonio Carlos', ''),
(84, '154301316421331', 4, 462056400, 'Rainha no Sertão', 'Antonio Carlos', ''),
(85, '154301317198481', 5, 462056400, 'Rainha no Sertão', 'Antonio Carlos', ''),
(86, '154301319433621', 1, 462060000, 'A voz do Brasil', '', ''),
(87, '154301320061681', 2, 462060000, 'A voz do Brasil', '', ''),
(88, '154301320624634', 3, 462060000, 'A voz do Brasil', '', ''),
(89, '154301321365369', 4, 462060000, 'A voz do Brasil', '', ''),
(90, '154301321955207', 4, 462063600, 'Blitz Sertanejo', '', ''),
(91, '154301322556668', 5, 462060000, 'A voz do Brasil', '', ''),
(92, '154301327225677', 1, 462063600, 'Blitz Sertanejo', '', ''),
(93, '154301327813024', 2, 462063600, 'Blitz Sertanejo', '', ''),
(94, '154301328421261', 3, 462063600, 'Blitz Sertanejo', '', ''),
(95, '154301328957178', 5, 462063600, 'Blitz Sertanejo', '', ''),
(96, '154301330961505', 1, 462065400, 'Charme', '', ''),
(97, '154301331674199', 2, 462065400, 'Charme', '', ''),
(98, '154301333790948', 3, 462065400, 'Charme', '', ''),
(99, '154301334352699', 4, 462065400, 'Charme', '', ''),
(100, '154301335059073', 5, 462065400, 'Charme', '', ''),
(101, '154301337637271', 1, 462072600, 'Misturadão', '', ''),
(102, '154301338537489', 2, 462072600, 'Misturadão', '', ''),
(103, '154301339283337', 3, 462072600, 'Misturadão', '', ''),
(104, '154301340987319', 4, 462072600, 'Misturadão', '', ''),
(105, '154301341720514', 5, 462072600, 'Misturadão', '', ''),
(106, '154301344338719', 1, 462076200, 'Só Clássicos Sertanejos', '', ''),
(107, '154301345288077', 2, 462076200, 'Só Clássicos Sertanejos', '', ''),
(108, '154301345978255', 3, 462076200, 'Só Clássicos Sertanejos', '', ''),
(109, '154301346822574', 4, 462076200, 'Só Clássicos Sertanejos', '', ''),
(110, '154301347681622', 5, 462076200, 'Só Clássicos Sertanejos', '', ''),
(111, '154301357946510', 6, 461991600, 'Coração Sertanejo', '', ''),
(112, '154301359452509', 6, 461998800, 'Só Bandas', '', ''),
(113, '154301360576040', 6, 462006000, 'Amigos do Teodoro e Sampaio', '', ''),
(114, '154301361773987', 6, 462011400, 'Viola de Ouro', 'Jaime Adriano', ''),
(115, '154301363062693', 6, 462020400, 'Pastoral da Terra', 'Padre Genuíno Begnini', ''),
(116, '154301364694363', 6, 462022200, 'Sindicato dos Produtores Rurais', '', ''),
(117, '154301371018330', 6, 462022800, 'Sábado Antenado', 'Jaime Adriano', ''),
(118, '154301372251664', 6, 462024000, 'Câmara de Vereadores de Ouro Verde', '', ''),
(119, '154301373424282', 6, 462027600, 'Sábado Antenado', 'Piriquito', ''),
(120, '154301374770138', 6, 462029400, 'Câmara de Vereadores de Abelardo Luz', '', ''),
(121, '154301375771262', 6, 462031200, 'Sindicato Trabalhadores Rurais', '', ''),
(122, '154301377666622', 6, 462031140, 'Sulcredi/Crediluz', '', ''),
(123, '154301379439883', 6, 462033000, 'Paróquia São Sebastião', '', ''),
(124, '154301380523423', 6, 462034800, 'Sábado Antenado', 'Piriquito', ''),
(125, '154301382088305', 6, 462035700, 'Câmara de Vereadores de Bom Jesus', '', ''),
(126, '154301383623086', 6, 462036300, 'Sábado Antenado', 'Piriquito', ''),
(127, '154301384987880', 6, 462038400, 'O Semeador', '', ''),
(128, '154301386969055', 6, 462043800, 'Top 20 Sertanejo', '', ''),
(129, '154301388079064', 6, 462049200, 'Conexão Total', '', ''),
(130, '154301389456834', 6, 462047400, 'Arena Pop', '', ''),
(131, '154301390557020', 6, 462061800, 'Top 30', '', ''),
(132, '154301391854188', 6, 462069000, 'Festival Sertanejo', '', ''),
(133, '154301393730798', 6, 462072600, 'Giro Musical', '', ''),
(134, '154301395134321', 6, 462075300, 'Top 20 Sertanejo', '', ''),
(135, '154301397123032', 0, 461991600, 'Domingão Sertanejo', '', ''),
(136, '154301398232064', 0, 461998800, 'Coração Sertanejo', '', ''),
(137, '154301399124180', 0, 462006000, 'Fandangueando', '', ''),
(138, '154301400086177', 0, 462009600, 'Brasil de Bombacha', '', ''),
(139, '154301400929121', 0, 462016800, 'Vibe Sertaneja', '', ''),
(140, '154301402186541', 0, 462018600, 'Diante do Rei', '', ''),
(141, '154301403358922', 0, 462022200, 'Santa Missa Dominical', '', ''),
(142, '154301404782688', 0, 462025800, 'Espelho da Tradição', 'Piriquito', ''),
(143, '154301405846303', 0, 462040200, 'Taliani Nel Mondo', '', ''),
(144, '154301406884358', 0, 462043800, 'Só Bandas', '', ''),
(145, '154301407729432', 0, 462051000, 'Ritmos', '', ''),
(146, '154301409016879', 0, 462058200, 'Giro Musical', '', ''),
(147, '154301410510878', 0, 462065400, 'Vitrine Musical', '', ''),
(148, '154301412413613', 0, 462072600, 'Mega Mix', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `rede_social`
--

CREATE TABLE `rede_social` (
  `id` int(10) UNSIGNED NOT NULL,
  `codigo` char(100) DEFAULT NULL,
  `titulo` char(200) DEFAULT NULL,
  `endereco` text,
  `imagem` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `rede_social`
--

INSERT INTO `rede_social` (`id`, `codigo`, `titulo`, `endereco`, `imagem`) VALUES
(1, '147037856423688', 'teste222', 'http://www.publiquebem.com.br/2', ''),
(9, '147129118145073', 'Facebook', 'https://www.facebook.com/studiobalaoficial', 'Facebok-Logo-2019-[22-03-20][10-36-51].png'),
(11, '149600798453341', 'WhatsApp', 'https://api.whatsapp.com/send?phone=55xxxx-xxxx', 'whatsap-logo-1-[22-03-20][10-37-01].png'),
(12, '149600799814751', 'Instagram', 'https://www.instagram.com/canal_studio_bala/', '1b2ca367ca7ef8b45c09ec09b4c16-logotipo-do-cone-do-instagram-by-vexels-[22-03-20][10-36-42].png');

-- --------------------------------------------------------

--
-- Estrutura da tabela `rede_social_ordem`
--

CREATE TABLE `rede_social_ordem` (
  `id` int(11) NOT NULL,
  `data` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `rede_social_ordem`
--

INSERT INTO `rede_social_ordem` (`id`, `data`) VALUES
(1, '2'),
(2, '2,3'),
(3, '3,2'),
(4, '2,3'),
(5, '2,3,4'),
(6, '4,3'),
(7, '3,4'),
(8, '3,4,5'),
(9, '3,4,5,6'),
(10, '3,4,5,6,7'),
(11, '3,4,5,6,7,8'),
(12, '3,4,5,6,7,8,9'),
(13, '3,4,5,6,7,8,9,10'),
(14, '3,4,5,6,7,8,9,10,11'),
(15, '3,4,5,6,7,8,9,10,11,12'),
(16, '3,4,5,6,7,8,9,10,11,12,13'),
(17, '3,4,5,6,7,8,9,10,11,12,13,14'),
(18, '9,11,12,14,13'),
(19, '11,12,9,14,13'),
(20, '12,11,9,14,13'),
(21, '11,12,9,14,13'),
(22, '12,11,9,14,13'),
(23, '11,12,9,14,13'),
(24, '11,12,9,14,13,15'),
(25, '11,12,9,14,13,15,16'),
(26, '11,12,9,14,13,15,16,17'),
(27, '11,12,9,14,17,13'),
(28, '11,12,9,13,14'),
(29, '11,12,9,13,14,18'),
(30, '11,12,9,13,14,18,19'),
(31, '11,12,9,13,14,18,19,20'),
(32, '11,12,9,13,14,18,19,20,21');

-- --------------------------------------------------------

--
-- Estrutura da tabela `representante`
--

CREATE TABLE `representante` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `estado` varchar(10) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `contato` varchar(255) DEFAULT NULL,
  `regiao` varchar(255) DEFAULT NULL,
  `fone` varchar(100) DEFAULT NULL,
  `celular` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `representante`
--

INSERT INTO `representante` (`id`, `codigo`, `estado`, `nome`, `contato`, `regiao`, `fone`, `celular`, `email`) VALUES
(125, '150768812390749', 'RR', 'teste', 'sdfasdfas', 'dfasdfasdf', '(12) 31231-2312', '(12) 31231-2312', 'alvanisio@gmail.com'),
(129, '150768839746861', 'BA', 'Nome 2', 'teste', 'asdasfdasdf', '(11) 12222-2222', '(22) 33333-3333', 'atendimento@comprepronto.com.br'),
(128, '150768829980675', 'BA', 'Nome do caboclo', 'contato', 'norte', '(23) 42342-3423', '(24) 23423-4234', 'alvanisio@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos`
--

CREATE TABLE `servicos` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `titulo` varchar(200) DEFAULT NULL,
  `previa` text,
  `conteudo` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `servicos`
--

INSERT INTO `servicos` (`id`, `codigo`, `titulo`, `previa`, `conteudo`) VALUES
(6, '150831166273094', 'Manutenção de Maquinas', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.&nbsp;</p>\r\n'),
(7, '150831214639385', 'Atendimento externo', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.&nbsp;</p>\r\n'),
(8, '150831732470227', 'Concerto de aparelhos', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.&nbsp;</p>\r\n');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos_imagem`
--

CREATE TABLE `servicos_imagem` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `servicos_imagem`
--

INSERT INTO `servicos_imagem` (`id`, `codigo`, `imagem`) VALUES
(73, '150831214639385', 'scotland-1761292-960-720-[18-10-17][07-04-54].jpg'),
(72, '150831732470227', '2727-Papel-de-Parede-Bela-Paisagem-de-Campo-1680x1050-[18-10-17][07-02-29].jpg'),
(71, '150831166273094', '47393-[18-10-17][05-36-08].jpg'),
(70, '150831166273094', '37146b290d061a2675806354d6c923cd-quatro-natalina-[18-10-17][05-36-06].jpg'),
(69, '150831166273094', '13735-bela-paisagem-em-kentucky-[18-10-17][05-36-04].jpg'),
(68, '150831166273094', '02934-[18-10-17][05-36-02].jpg'),
(67, '150831166273094', '6e67aecaf746cf9b6d7840956385b0-[18-10-17][05-36-01].jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos_imagem_legenda`
--

CREATE TABLE `servicos_imagem_legenda` (
  `id` int(11) NOT NULL,
  `id_img` varchar(100) DEFAULT NULL,
  `legenda` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `servicos_imagem_legenda`
--

INSERT INTO `servicos_imagem_legenda` (`id`, `id_img`, `legenda`) VALUES
(1, '1', 'dfsdfsdf');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos_imagem_ordem`
--

CREATE TABLE `servicos_imagem_ordem` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `data` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `servicos_imagem_ordem`
--

INSERT INTO `servicos_imagem_ordem` (`id`, `codigo`, `data`) VALUES
(1, '150816999458988', '1'),
(2, '150816999458988', '1,2'),
(3, '150816999458988', '1,2,3'),
(4, '150816999458988', '1,2,3,4'),
(5, '150816999458988', '1,2,3,4,5'),
(6, '150816999458988', '1,2,3,4,5,6'),
(7, '150816999458988', '1,2,3,4,5,6,7'),
(8, '150816999458988', '1,2,3,4,5,6,7,8'),
(9, '150816999458988', '1,2,3,4,5,6,7,8,9'),
(10, '150816999458988', '2,4,3,5,6,7,8,9'),
(11, '150816999458988', '3,2,4,5,6,7,8,9'),
(12, '150816999458988', '3,2,6,5,7,8,9'),
(13, '150817445892345', '10'),
(14, '150817445892345', '10,11'),
(15, '150817445892345', '10,11,12'),
(16, '150817445892345', '10,11,12,13'),
(17, '150817445892345', '10,11,12,13,14'),
(18, '150817445892345', '10,11,12,13,14,15'),
(19, '150817445892345', '10,11,12,13,14,15,16'),
(20, '150817445892345', '10,11,12,13,14,15,16,17'),
(21, '150817445892345', '10,11,12,13,14,15,16,17,18'),
(22, '150817445892345', '10,11,12,13,14,15,16,17,18,19'),
(23, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20'),
(24, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21'),
(25, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22'),
(26, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23'),
(27, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24'),
(28, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25'),
(29, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26'),
(30, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27'),
(31, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28'),
(32, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29'),
(33, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30'),
(34, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31'),
(35, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32'),
(36, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33'),
(37, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34'),
(38, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35'),
(39, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36'),
(40, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37'),
(41, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38'),
(42, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39'),
(43, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40'),
(44, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41'),
(45, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42'),
(46, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43'),
(47, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44'),
(48, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45'),
(49, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46'),
(50, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47'),
(51, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48'),
(52, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49'),
(53, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50'),
(54, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51'),
(55, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52'),
(56, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53'),
(57, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54'),
(58, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55'),
(59, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56'),
(60, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57'),
(61, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58'),
(62, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59'),
(63, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60'),
(64, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61'),
(65, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62'),
(66, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63'),
(67, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64'),
(68, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65'),
(69, '150817445892345', '10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66'),
(70, '150817445892345', '11,10,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66'),
(71, '150817445892345', '20,11,10,12,13,14,15,16,17,18,19,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66'),
(72, '150831166273094', '67'),
(73, '150831166273094', '67,68'),
(74, '150831166273094', '67,68,69'),
(75, '150831166273094', '67,68,69,70'),
(76, '150831166273094', '67,68,69,70,71'),
(77, '150831732470227', '72'),
(78, '150831214639385', '73');

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos_ordem`
--

CREATE TABLE `servicos_ordem` (
  `id` int(11) NOT NULL,
  `grupo` varchar(100) DEFAULT NULL,
  `data` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `servicos_ordem`
--

INSERT INTO `servicos_ordem` (`id`, `grupo`, `data`) VALUES
(1, NULL, '1'),
(2, NULL, '1,2'),
(3, NULL, '2,1'),
(4, NULL, '1,2'),
(5, NULL, '2,1'),
(6, NULL, '2,1,3'),
(7, NULL, '2,1,3,4'),
(8, NULL, '2,1,3,4,5'),
(9, NULL, '5,4'),
(10, NULL, '4,5'),
(11, NULL, '4,5,6'),
(12, NULL, '4,5,6,7'),
(13, NULL, '4,5,6,7,8');

-- --------------------------------------------------------

--
-- Estrutura da tabela `texto`
--

CREATE TABLE `texto` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `titulo` varchar(240) DEFAULT NULL,
  `conteudo` text,
  `url` varchar(255) DEFAULT NULL,
  `nao_remover` int(2) NOT NULL DEFAULT '0',
  `imagem` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `texto`
--

INSERT INTO `texto` (`id`, `codigo`, `titulo`, `conteudo`, `url`, `nao_remover`, `imagem`) VALUES
(64, '147123896765527', 'Nosso Blog', '<p><span style=\"font-size:20px\"><span style=\"color:#FFFFFF\"><strong><span style=\"background-color:#FF0000\">DESTAQUE</span></strong></span></span></p>\r\n\r\n<p><span style=\"color:#000000\"><span style=\"font-size:20px\"><strong>Cononavirus no Brasil, Cuidados e Precau&ccedil;&otilde;es que devem ser tomadas fique atento as dicas.</strong></span></span><br />\r\n<span style=\"color:#696969\"><span style=\"font-size:20px\"><strong>Fique em casa vamos combater esse virus de forma responsavel.</strong></span></span></p>\r\n', 'comotrabalhamos', 1, NULL),
(66, '147124249830709', 'Mapa', '<p><iframe frameborder=\"0\" height=\"400\" src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d34272.11770592151!2d-49.24177036006465!3d-25.45789414888085!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1spt-BR!2sbr!4v1529527475882\" style=\"border:0\" width=\"100%\"></iframe></p>\r\n', 'mapa', 1, NULL),
(81, '150830756465854', 'Rodape Endereço', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n', 'rodape', 1, NULL),
(91, '152584673747177', 'Publicidade Topo | Sobre a Rádio', '', 'apresentacao', 0, 'baner-publicidade-[22-03-20][12-15-32].gif'),
(95, '153692944769272', 'GALERIA DE FOTOS', '<p style=\"text-align:center\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n', 'galeria', 0, NULL),
(94, '153692427392228', 'Agenda de Eventos', '<p>Fique por dentro de nossa Agenda e n&atilde;o perca os melhores eventos da nossa R&aacute;dio.</p>\r\n', '153692427392228', 0, NULL),
(96, '153692984161677', 'NOSSA EQUIPE', '<p style=\"text-align:center\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>\r\n', '153692984161677', 0, NULL),
(97, '153693597068266', 'ENTRE EM CONTATO', '<p style=\"text-align:center\"><span style=\"color:#000000\"><span style=\"font-size:18px\">Entre em contato com nossa equipe, assim que possivel entraremos em contato com voc&ecirc;.</span></span></p>\r\n', 'faleconosco', 0, NULL),
(99, '158448386470233', 'TEXTO ÁREA DA ENQUENTE', '<p><span style=\"color:#000000\">A Nossa R&aacute;dio esta evoluindo e com isso agora elaboramos um novo Site para voc&ecirc; nosso ouvinte ficar por dentro de tudo que acontece e n&atilde;o perder nossa programa&ccedil;&atilde;o.<strong>PARTICIPE DA NOSSA PESQUISA DE OPNI&Atilde;O!</strong></span></p>\r\n', 'enquete', 0, 'top01-[03-09-20][09-06-48].jpg'),
(100, '158473877158994', 'NOSSA PROGRAMAÇÃO', '<p style=\"text-align: center;\"><span style=\"color:#E6E6FA\"><span style=\"font-size:20px\">Fique por dentro de toda nossa </span></span><span style=\"color:#FFD700\"><span style=\"font-size:20px\"><strong>Programa&ccedil;&atilde;o</strong></span></span><span style=\"font-size:20px\"> <span style=\"color:#E6E6FA\">e se divirta, acompanha nossa grade de programas.</span></span></p>\r\n', 'programacao', 0, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `texto_simples`
--

CREATE TABLE `texto_simples` (
  `id` int(11) NOT NULL,
  `codigo` varchar(100) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `conteudo` varchar(255) DEFAULT NULL,
  `imagem` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `texto_simples`
--

INSERT INTO `texto_simples` (`id`, `codigo`, `titulo`, `conteudo`, `imagem`) VALUES
(10, '152218928730810', 'Rádio Online', 'Você está ouvindo:', NULL),
(33, '153692417088315', 'ANIVERSARIO DA RADIO TOP10', 'DIA: 25/03/2020 nosso aniversario com Atrações Incriveis apartir da 18:00HS', NULL),
(34, '153692705366094', 'HUGO HENRIQUE NO ESTÚDIO', 'Neste Domingo 16/03/2020 em nosso estúdio AO VIVO não perca.', NULL),
(29, '153686334393447', 'PUBLICIDADE ABAIXO DA AGENDA', 'Publicidade | SUA WEBRADIO', 'publicidade-agenda-[23-03-20][14-42-37].gif'),
(31, '153686343939723', 'PUBLICIDADE ENQUENTE', 'Publicidade | SUA WEBRADIO', 'aradio-top10-[23-03-20][16-45-00].jpg'),
(21, '152447456913899', 'Horas Online', '24', '24horas-fw-[23-03-20][15-36-07].png'),
(23, '152450161073363', 'Estamos Presentes em Todo o Brasil', '5770', 'ouvintes-fw-[23-03-20][15-34-30]-[03-09-20][09-02-30].png'),
(24, '152450163057455', '+ Ouvintes por Dia', '40000 ', 'ouvintes-fw-[23-03-20][15-34-30].png'),
(25, '152965044167413', 'Rodapé - Copyright', 'Copyright 2020. Todos os direitos reservados.', NULL),
(26, '153685499223700', 'NO AR AGORA', '', NULL),
(27, '153685506965795', 'E-mail', 'contato@studiobala.com.br', NULL),
(28, '153685514555478', 'Ligue', '(00) 9 0000-0000', NULL),
(35, '153692709067198', 'FESTIVAL DO AÇAI 2020', 'Este ano o Festival do Açai esta imperdivel com atrações Nacionais Fantasticas não Perca EM BREVE mais Informações', ''),
(36, '153692712151770', 'ENTREVISTA', '21/03/2020 Quinta -Feira Entrevista com Prefeito de Feijó-Acre', NULL),
(37, '153693350552184', 'Rodapé - E-mail', 'contato@studiobala.com.br', NULL),
(38, '153693355357720', 'Rodapé - Telefone 1', '(00) 00003-0000', NULL),
(39, '153693359814357', 'Rodapé - Telefone 2', '(00) 9 0000-0000', NULL),
(40, '153693364021998', 'Rodapé - Endereço', 'Rua 7 de Setembro', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `videos`
--

CREATE TABLE `videos` (
  `id` int(10) UNSIGNED NOT NULL,
  `codigo` char(100) DEFAULT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `video` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `videos`
--

INSERT INTO `videos` (`id`, `codigo`, `titulo`, `video`) VALUES
(108, '150833598144980', 'teste 1', '<iframe width=\"100%\" height=\"400\" src=\"https://www.youtube.com/embed/FUz0a2cl_RM\" frameborder=\"0\" allowfullscreen></iframe>'),
(109, '150833598776777', 'teste 2', '<iframe width=\"100%\" height=\"400\" src=\"https://www.youtube.com/embed/FUz0a2cl_RM\" frameborder=\"0\" allowfullscreen></iframe>');

-- --------------------------------------------------------

--
-- Estrutura da tabela `videos_ordem`
--

CREATE TABLE `videos_ordem` (
  `id` int(11) NOT NULL,
  `data` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Extraindo dados da tabela `videos_ordem`
--

INSERT INTO `videos_ordem` (`id`, `data`) VALUES
(17, '98,99'),
(16, '100,101'),
(18, '98,99,102'),
(19, '98,99,102,103'),
(20, '103,102'),
(21, '102,103'),
(22, '102,103,104'),
(23, '102,103,104,105'),
(24, '102,103,104,105,106'),
(25, '102,103,104,105,106,107'),
(26, '105,107,106'),
(27, '107,105,106'),
(28, '107,105,106,108'),
(29, '107,105,106,108,109');

-- --------------------------------------------------------

--
-- Estrutura da tabela `webradio`
--

CREATE TABLE `webradio` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `porta` varchar(100) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `webradio`
--

INSERT INTO `webradio` (`id`, `ip`, `porta`) VALUES
(1, 'http://stream.zeno.fm/87t0h7c51zquv', '123');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `adm_config`
--
ALTER TABLE `adm_config`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `adm_setores`
--
ALTER TABLE `adm_setores`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `adm_setores_ordem`
--
ALTER TABLE `adm_setores_ordem`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `adm_setores_perfil`
--
ALTER TABLE `adm_setores_perfil`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `adm_setores_usuario`
--
ALTER TABLE `adm_setores_usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_1` (`setor`,`usuario`);

--
-- Índices para tabela `adm_usuario`
--
ALTER TABLE `adm_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `areacliente_arquivos`
--
ALTER TABLE `areacliente_arquivos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `banner_grupo`
--
ALTER TABLE `banner_grupo`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `banner_ordem`
--
ALTER TABLE `banner_ordem`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cadastro_email`
--
ALTER TABLE `cadastro_email`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_Cidade_estado` (`estado`);

--
-- Índices para tabela `contato`
--
ALTER TABLE `contato`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cotacoes`
--
ALTER TABLE `cotacoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cotacoes_grupos`
--
ALTER TABLE `cotacoes_grupos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cotacoes_grupos_ordem`
--
ALTER TABLE `cotacoes_grupos_ordem`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `depoimento`
--
ALTER TABLE `depoimento`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `downloads`
--
ALTER TABLE `downloads`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `enquete`
--
ALTER TABLE `enquete`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `enquete_resposta`
--
ALTER TABLE `enquete_resposta`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `enquete_voto`
--
ALTER TABLE `enquete_voto`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `estado`
--
ALTER TABLE `estado`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `filiais`
--
ALTER TABLE `filiais`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `filiais_imagem`
--
ALTER TABLE `filiais_imagem`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `filiais_imagem_legenda`
--
ALTER TABLE `filiais_imagem_legenda`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `filiais_imagem_ordem`
--
ALTER TABLE `filiais_imagem_ordem`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `filiais_ordem`
--
ALTER TABLE `filiais_ordem`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `fotos_grupos`
--
ALTER TABLE `fotos_grupos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `fotos_grupos_ordem`
--
ALTER TABLE `fotos_grupos_ordem`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `fotos_imagem`
--
ALTER TABLE `fotos_imagem`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `fotos_imagem_legenda`
--
ALTER TABLE `fotos_imagem_legenda`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `fotos_imagem_ordem`
--
ALTER TABLE `fotos_imagem_ordem`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `fotos_ordem`
--
ALTER TABLE `fotos_ordem`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `hospedararquivo`
--
ALTER TABLE `hospedararquivo`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `imagem`
--
ALTER TABLE `imagem`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `layout_cor`
--
ALTER TABLE `layout_cor`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `layout_menu`
--
ALTER TABLE `layout_menu`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `layout_menu_ordem`
--
ALTER TABLE `layout_menu_ordem`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `layout_menu_rodape`
--
ALTER TABLE `layout_menu_rodape`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `layout_menu_rodape_ordem`
--
ALTER TABLE `layout_menu_rodape_ordem`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `marcadagua`
--
ALTER TABLE `marcadagua`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `meta`
--
ALTER TABLE `meta`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `noticia_audio`
--
ALTER TABLE `noticia_audio`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `noticia_autores`
--
ALTER TABLE `noticia_autores`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `noticia_destaque`
--
ALTER TABLE `noticia_destaque`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `noticia_grupo`
--
ALTER TABLE `noticia_grupo`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `noticia_imagem`
--
ALTER TABLE `noticia_imagem`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `noticia_imagem_legenda`
--
ALTER TABLE `noticia_imagem_legenda`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `noticia_imagem_ordem`
--
ALTER TABLE `noticia_imagem_ordem`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `noticia_marcadagua`
--
ALTER TABLE `noticia_marcadagua`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `parceiros`
--
ALTER TABLE `parceiros`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `parceiros_ordem`
--
ALTER TABLE `parceiros_ordem`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produtos_grupos`
--
ALTER TABLE `produtos_grupos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produtos_grupos_ordem`
--
ALTER TABLE `produtos_grupos_ordem`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produtos_imagem`
--
ALTER TABLE `produtos_imagem`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produtos_imagem_legenda`
--
ALTER TABLE `produtos_imagem_legenda`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produtos_imagem_ordem`
--
ALTER TABLE `produtos_imagem_ordem`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produtos_ordem`
--
ALTER TABLE `produtos_ordem`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `programacao`
--
ALTER TABLE `programacao`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `rede_social`
--
ALTER TABLE `rede_social`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `rede_social_ordem`
--
ALTER TABLE `rede_social_ordem`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `representante`
--
ALTER TABLE `representante`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `servicos_imagem`
--
ALTER TABLE `servicos_imagem`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `servicos_imagem_legenda`
--
ALTER TABLE `servicos_imagem_legenda`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `servicos_imagem_ordem`
--
ALTER TABLE `servicos_imagem_ordem`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `servicos_ordem`
--
ALTER TABLE `servicos_ordem`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `texto`
--
ALTER TABLE `texto`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `texto_simples`
--
ALTER TABLE `texto_simples`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `videos_ordem`
--
ALTER TABLE `videos_ordem`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `webradio`
--
ALTER TABLE `webradio`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `adm_config`
--
ALTER TABLE `adm_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de tabela `adm_setores`
--
ALTER TABLE `adm_setores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT de tabela `adm_setores_ordem`
--
ALTER TABLE `adm_setores_ordem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT de tabela `adm_setores_perfil`
--
ALTER TABLE `adm_setores_perfil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT de tabela `adm_setores_usuario`
--
ALTER TABLE `adm_setores_usuario`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=399;

--
-- AUTO_INCREMENT de tabela `adm_usuario`
--
ALTER TABLE `adm_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `areacliente_arquivos`
--
ALTER TABLE `areacliente_arquivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `banner`
--
ALTER TABLE `banner`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT de tabela `banner_grupo`
--
ALTER TABLE `banner_grupo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `banner_ordem`
--
ALTER TABLE `banner_ordem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de tabela `cadastro_email`
--
ALTER TABLE `cadastro_email`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de tabela `cidade`
--
ALTER TABLE `cidade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5565;

--
-- AUTO_INCREMENT de tabela `contato`
--
ALTER TABLE `contato`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de tabela `cotacoes`
--
ALTER TABLE `cotacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `cotacoes_grupos`
--
ALTER TABLE `cotacoes_grupos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `cotacoes_grupos_ordem`
--
ALTER TABLE `cotacoes_grupos_ordem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `depoimento`
--
ALTER TABLE `depoimento`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de tabela `downloads`
--
ALTER TABLE `downloads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `enquete`
--
ALTER TABLE `enquete`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `enquete_resposta`
--
ALTER TABLE `enquete_resposta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de tabela `enquete_voto`
--
ALTER TABLE `enquete_voto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT de tabela `estado`
--
ALTER TABLE `estado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `filiais`
--
ALTER TABLE `filiais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `filiais_imagem`
--
ALTER TABLE `filiais_imagem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `filiais_imagem_legenda`
--
ALTER TABLE `filiais_imagem_legenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `filiais_imagem_ordem`
--
ALTER TABLE `filiais_imagem_ordem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `filiais_ordem`
--
ALTER TABLE `filiais_ordem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `fotos_grupos`
--
ALTER TABLE `fotos_grupos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `fotos_grupos_ordem`
--
ALTER TABLE `fotos_grupos_ordem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `fotos_imagem`
--
ALTER TABLE `fotos_imagem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT de tabela `fotos_imagem_legenda`
--
ALTER TABLE `fotos_imagem_legenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `fotos_imagem_ordem`
--
ALTER TABLE `fotos_imagem_ordem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;

--
-- AUTO_INCREMENT de tabela `fotos_ordem`
--
ALTER TABLE `fotos_ordem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `hospedararquivo`
--
ALTER TABLE `hospedararquivo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=148;

--
-- AUTO_INCREMENT de tabela `imagem`
--
ALTER TABLE `imagem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de tabela `layout_cor`
--
ALTER TABLE `layout_cor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT de tabela `layout_menu`
--
ALTER TABLE `layout_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de tabela `layout_menu_ordem`
--
ALTER TABLE `layout_menu_ordem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=269;

--
-- AUTO_INCREMENT de tabela `layout_menu_rodape`
--
ALTER TABLE `layout_menu_rodape`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `layout_menu_rodape_ordem`
--
ALTER TABLE `layout_menu_rodape_ordem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de tabela `marcadagua`
--
ALTER TABLE `marcadagua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de tabela `meta`
--
ALTER TABLE `meta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de tabela `noticia`
--
ALTER TABLE `noticia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de tabela `noticia_audio`
--
ALTER TABLE `noticia_audio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de tabela `noticia_autores`
--
ALTER TABLE `noticia_autores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `noticia_destaque`
--
ALTER TABLE `noticia_destaque`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `noticia_grupo`
--
ALTER TABLE `noticia_grupo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de tabela `noticia_imagem`
--
ALTER TABLE `noticia_imagem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=317;

--
-- AUTO_INCREMENT de tabela `noticia_imagem_legenda`
--
ALTER TABLE `noticia_imagem_legenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `noticia_imagem_ordem`
--
ALTER TABLE `noticia_imagem_ordem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT de tabela `noticia_marcadagua`
--
ALTER TABLE `noticia_marcadagua`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `parceiros`
--
ALTER TABLE `parceiros`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de tabela `parceiros_ordem`
--
ALTER TABLE `parceiros_ordem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de tabela `produtos_grupos`
--
ALTER TABLE `produtos_grupos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `produtos_grupos_ordem`
--
ALTER TABLE `produtos_grupos_ordem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT de tabela `produtos_imagem`
--
ALTER TABLE `produtos_imagem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT de tabela `produtos_imagem_legenda`
--
ALTER TABLE `produtos_imagem_legenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `produtos_imagem_ordem`
--
ALTER TABLE `produtos_imagem_ordem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT de tabela `produtos_ordem`
--
ALTER TABLE `produtos_ordem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `programacao`
--
ALTER TABLE `programacao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT de tabela `rede_social`
--
ALTER TABLE `rede_social`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de tabela `rede_social_ordem`
--
ALTER TABLE `rede_social_ordem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `representante`
--
ALTER TABLE `representante`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT de tabela `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `servicos_imagem`
--
ALTER TABLE `servicos_imagem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT de tabela `servicos_imagem_legenda`
--
ALTER TABLE `servicos_imagem_legenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `servicos_imagem_ordem`
--
ALTER TABLE `servicos_imagem_ordem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT de tabela `servicos_ordem`
--
ALTER TABLE `servicos_ordem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `texto`
--
ALTER TABLE `texto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de tabela `texto_simples`
--
ALTER TABLE `texto_simples`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT de tabela `videos_ordem`
--
ALTER TABLE `videos_ordem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `webradio`
--
ALTER TABLE `webradio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
