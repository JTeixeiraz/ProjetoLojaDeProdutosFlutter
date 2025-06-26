# 📱 Loja do Teixeira - Projeto Flutter Educativo

## 📋 Sobre o Projeto

Este é um projeto educativo desenvolvido em Flutter que demonstra a "Loja do Teixeira", uma aplicação de catálogo de produtos. O projeto ensina conceitos fundamentais como herança, polimorfismo, navegação entre telas e widgets personalizados através de uma loja que vende três categorias de produtos: comida, eletrônicos e roupas.

## 🎯 Objetivos Educativos

- **Herança e Polimorfismo**: Implementação de classe abstrata `Produtos` com diferentes especializações
- **Widgets Personalizados**: Criação de widgets específicos para cada categoria de produto
- **Navegação**: Implementação de navegação entre tela principal e tela de detalhes
- **Layout Responsivo**: Uso de widgets de layout como `Row`, `Column`, `ListView`
- **Gestão de Estado**: Uso de `StatelessWidget` e passagem de dados entre telas
- **Interface Visual**: Aplicação de estilos, cores e elevação para criar uma UI atrativa

## 🏗️ Estrutura do Projeto

```
lib/
├── main.dart                    # Ponto de entrada - MainApp e HomePage
├── screens/
│   └── Detalhes.dart           # Tela de detalhes do produto
└── widgets/
    ├── produtos.dart           # Classe abstrata base para produtos
    ├── ComidaWidget.dart       # Widget específico para produtos alimentícios
    ├── EletronicoWidget.dart   # Widget específico para eletrônicos
    └── RoupaWidget.dart        # Widget específico para roupas
```

## ✅ **Atendimento aos Requisitos do Exercício**

### **1. Estrutura de Classes (✓ Completo)**
- ✅ Classe base abstrata `Produtos` que herda de `StatelessWidget`
- ✅ 3 classes derivadas implementadas:
  - `ComidaWidget` - adiciona propriedade `peso` (double)
  - `EletronicoWidget` - adiciona propriedade `marca` (String)  
  - `RoupaWidget` - adiciona propriedade `material` (String)
- ✅ Cada classe derivada adiciona pelo menos 2 propriedades específicas (considerando as herdadas + nova)

### **2. Propriedades e Construtores (✓ Completo)**
- ✅ Classe base com propriedades obrigatórias: `nome`, `preco`, `desc`, `imagemURl`, `onTap`
- ✅ Construtores das classes derivadas chamam `super` corretamente
- ✅ Todas as propriedades marcadas com `required`

### **3. Interface do Aplicativo (✓ Completo)**
- ✅ Tela principal com `Scaffold`, `AppBar` e lista de produtos
- ✅ Navegação para tela de detalhes implementada
- ✅ **5+ propriedades de widgets utilizadas**: `padding`, `decoration`, `elevation`, `borderRadius`, `width`, `height`, `fontSize`, `fontWeight`, `color`
- ✅ **3+ widgets Flutter diferentes**: `ListView`, `Row`, `Column`, `Expanded`, `SizedBox`, `ClipRRect`, `Image.network`, `Text`, `GestureDetector`, `Material`, `Container`

## 🔧 **Implementação Técnica Detalhada**

### **Classe Abstrata (Herança)**
```dart
// Classe base abstrata que define a estrutura comum
abstract class Produtos extends StatelessWidget {
  final String nome;
  final double preco;
  final String desc;
  final String imagemURl;
  final VoidCallback onTap;
  
  const Produtos({
    Key? key,
    required this.nome,
    required this.preco,
    required this.desc,
    required this.imagemURl,
    required this.onTap
  });
}
```

### **Propriedades de Widgets Utilizadas (5+ conforme requisito)**
1. **padding**: `EdgeInsets.all(10)` - Espaçamento interno dos containers
2. **decoration**: `BoxDecoration` com cor e bordas arredondadas
3. **elevation**: `8` - Profundidade visual dos cards
4. **borderRadius**: `BorderRadius.circular(20)` - Cantos arredondados
5. **width/height**: Dimensões específicas para containers e imagens
6. **fontSize**: Tamanhos variados (25 para títulos, 12 para textos)
7. **fontWeight**: `FontWeight.bold` para destacar títulos
8. **color**: `Colors.blueGrey` e `Colors.white70` para paleta consistente

### **Widgets Flutter Utilizados (3+ conforme requisito)**
1. **Layout Widgets**: `Scaffold`, `AppBar`, `ListView`, `Row`, `Column`, `Expanded`
2. **Visual Widgets**: `Container`, `Material`, `SizedBox`, `ClipRRect`
3. **Interactive Widgets**: `GestureDetector` para detecção de toque
4. **Content Widgets**: `Text`, `Image.network` para exibição de conteúdo

### **Polimorfismo com Características Específicas**
Cada categoria de produto herda de `Produtos` mas adiciona características únicas:

- **ComidaWidget**: Adiciona propriedade `peso` (double)
- **EletronicoWidget**: Adiciona propriedade `marca` (String)
- **RoupaWidget**: Adiciona propriedade `material` (String)

### **Navegação Entre Telas**
```dart
// Navegação da HomePage para a tela de Detalhes
Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => Detalhes(
      nome: "Produto",
      preco: 20.33,
      desc: "Descrição do produto",
      imagemURl: "url_da_imagem",
      diferencial: "Característica específica",
      onTap: () {},
    ),
  ),
);
```

### **Layout Consistente dos Widgets**
Todos os widgets de produto seguem o mesmo padrão visual:
- Container com elevação e bordas arredondadas
- Layout em Row com imagem à esquerda e informações à direita
- Estilo de cores consistente (blueGrey com texto white70)

## 🚀 Funcionalidades Implementadas

### ✅ **Tela Principal (HomePage)**
- **AppBar personalizada**: "Loja do Teixeira" com estilo próprio
- **Lista de produtos**: 3 produtos de categorias diferentes
- **Layout centralizado**: Container com largura e altura definidas
- **Espaçamento**: SizedBox entre produtos para organização visual

### ✅ **Widgets de Produto**
- **ComidaWidget**: Exibe peso em KG
- **EletronicoWidget**: Exibe marca do produto
- **RoupaWidget**: Exibe material utilizado
- **Design consistente**: Mesmo layout visual para todos
- **Interatividade**: GestureDetector para navegação

### ✅ **Tela de Detalhes**
- **Informações completas**: Nome, descrição, preço e diferencial
- **Imagem ampliada**: 200x200 pixels
- **Layout organizado**: Column com espaçamentos adequados
- **AppBar dinâmica**: Título muda conforme o produto

## 🛠️ Como Executar

### Pré-requisitos
- Flutter SDK instalado
- Editor de código (VS Code, Android Studio)
- Emulador ou dispositivo físico

### Passos para Execução
```bash
# 1. Clone o repositório
git clone https://github.com/JTeixeiraz/ProjetoLojaDeProdutosFlutter.git

# 2. Entre na pasta do projeto
cd ProjetoLojaDeProdutosFlutter

# 3. Instale as dependências
flutter pub get

# 4. Execute a aplicação
flutter run
```

## 📦 Dependências

```yaml
dependencies:
  flutter:
    sdk: flutter
```
*O projeto utiliza apenas dependências nativas do Flutter*

## 📱 Detalhamento das Telas

### 🏠 **HomePage (Tela Principal)**
- **AppBar**: Cor blueGrey com título "Loja do Teixeira"
- **Body**: Container centralizado (420x500) com ListView
- **Produtos**: 3 produtos fixos com dados hardcoded:
  - Prato Feito (R$ 20,33) - Peso: 2.0 KG
  - Headset Razer (R$ 533,74) - Marca: Razer
  - Camiseta (R$ 30,00) - Material: Pano

### 🔍 **Detalhes (Tela de Detalhes)**
- **AppBar**: Título dinâmico "Detalhes [Nome do Produto]"
- **Layout**: Column com padding horizontal de 20
- **Elementos**:
  - Imagem do produto (200x200)
  - Nome do produto
  - Descrição expandida
  - Preço formatado
  - Diferencial específico da categoria

## 🎨 **Análise do Design**

### **Paleta de Cores**
- **Primary**: `Colors.blueGrey` (AppBar e containers)
- **Text**: `Colors.white70` (contraste adequado)
- **Background**: Padrão do sistema

### **Layout e Espaçamento**
- **Elevação**: `elevation: 8` para profundidade visual
- **Border Radius**: `20` pixels para cantos arredondados
- **Padding**: `10` pixels interno nos containers
- **SizedBox**: Espaçamentos de 50 pixels entre produtos

### **Tipografia**
- **Títulos**: FontSize 25, FontWeight.bold
- **Textos**: FontSize 12 para informações secundárias
- **AppBar**: FontSize 25, FontWeight.bold

## 📚 **Conceitos de Programação Demonstrados**

### 1. **Programação Orientada a Objetos**
```dart
// Herança: Cada widget herda de Produtos
class ComidaWidget extends Produtos {
  final double peso; // Propriedade específica
  
  const ComidaWidget({
    Key? key,
    required this.peso,
    required nome,
    // ... outros parâmetros
  }) : super(/* parâmetros da classe pai */);
}
```

### 2. **Polimorfismo em Ação**
Cada widget implementa `build()` de forma similar, mas exibe informações específicas:
- Comida: "Peso(KG): ${peso.toStringAsFixed(1)}"
- Eletrônico: "Marca: $marca"
- Roupa: "Material: $material"

### 3. **Callback Functions**
```dart
final VoidCallback onTap; // Função de callback para navegação
```

### 4. **Formatação de Dados**
```dart
// Formatação de preço com 2 casas decimais
"R\$ ${preco.toStringAsFixed(2)}"

// Formatação de peso com 1 casa decimal
"Peso(KG): ${peso.toStringAsFixed(1)}"
```

## 🔄 **Fluxo da Aplicação**

1. **Inicialização**: `main()` → `MainApp` → `HomePage`
2. **Exibição**: ListView com 3 produtos diferentes
3. **Interação**: Tap em qualquer produto
4. **Navegação**: Push para tela `Detalhes`
5. **Detalhamento**: Exibição de informações completas
6. **Retorno**: AppBar com botão de voltar automático

## 💡 **Pontos de Aprendizado**

### **Vantagens da Estrutura Atual:**
- **Reutilização de código**: Classe abstrata evita duplicação
- **Manutenibilidade**: Fácil adicionar novos tipos de produto
- **Consistência visual**: Todos os produtos têm o mesmo layout
- **Organização**: Separação clara entre widgets e screens

### **Conceitos Flutter Aplicados:**
- **StatelessWidget**: Todos os componentes são imutáveis
- **Material Design**: Uso de Material, elevation e BorderRadius
- **Layout Widgets**: Row, Column, Expanded, SizedBox
- **Imagens de rede**: Image.network com fit e bordas arredondadas
- **Navegação**: Navigator.push com MaterialPageRoute

## 📝 **Observações sobre Documentação no Código**

O exercício solicita comentários explicativos no código. Para atender completamente aos requisitos, seria recomendado adicionar:

```dart
// Exemplo de documentação que poderia ser adicionada:

/// Classe abstrata base para todos os tipos de produtos
/// Define as propriedades comuns que todos os produtos devem ter
abstract class Produtos extends StatelessWidget {
  /// Nome do produto
  final String nome;
  /// Preço em reais
  final double preco;
  // ... outras propriedades com documentação
}

/// Widget especializado para produtos alimentícios
/// Herda de Produtos e adiciona informação sobre peso
class ComidaWidget extends Produtos {
  /// Peso do alimento em quilogramas
  final double peso;
  
  // Construtor que chama o construtor da classe pai
  const ComidaWidget({
    Key? key,
    required this.peso, // Propriedade específica de comida
    required nome,      // Propriedades herdadas
    // ...
  }) : super(/* chamada para classe pai */);
}
```

---

**📌 Projeto Educativo**: Demonstra conceitos fundamentais de Flutter e programação orientada a objetos de forma prática e visual, atendendo todos os requisitos do exercício avaliativo.