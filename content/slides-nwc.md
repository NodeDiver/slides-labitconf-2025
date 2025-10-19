# NWC para Desarrolladores - LABITCONF 2025

---
**Slide 1: Portada**
- Layout: 1 (Cover - Color 01)
- Type: cover

## NWC para Desarrolladores 🚀

**LABITCONF 2025**

[Tu Nombre]

---
**Slide 2: El Problema**
- Layout: 5 (TITLE_AND_BODY 2)
- Type: content

## El problema 😬

- Las billeteras Lightning requieren custodia total o gestión compleja de nodos
- Los usuarios no pueden delegar permisos granulares para pagos automáticos
- Las aplicaciones necesitan acceso completo a fondos o implementaciones custom
- Resultado: fricción en adopción, riesgos de seguridad, experiencia fragmentada

**Notas**: Enfatizar el dolor actual: todo-o-nada en custodia. Sin NWC, o confías todo o nada.

---
**Slide 3: Por qué ahora ⏱️**
- Layout: 5 (TITLE_AND_BODY 2)
- Type: content

## ¿Por qué NWC ahora? ⏱️

- Lightning alcanzó madurez técnica pero falta UX accesible
- Proliferación de casos de uso: suscripciones, micropagos, bots, IA agents
- Necesidad de interoperabilidad entre wallets y aplicaciones
- Nostr ofrece infraestructura descentralizada lista para usar

**Notas**: NWC aprovecha momento: Lightning estable + Nostr en crecimiento + demanda real.

---
**Slide 4: Qué es NWC**
- Layout: 5 (TITLE_AND_BODY 2)
- Type: content

## Qué es NWC 🧩

- **Nostr Wallet Connect**: protocolo para delegar acceso a wallets Lightning
- Basado en Nostr (NIP-47): eventos firmados, relays descentralizados
- Permisos granulares: límites de monto, tipo de operación, tiempo
- Interoperable: cualquier wallet + cualquier app que implemente el protocolo

**Notas**: NWC = OAuth para Lightning, pero descentralizado y con control real del usuario.

---
**Slide 5: Casos de Uso**
- Layout: 6 (TITLE_AND_TWO_COLUMNS)
- Type: two-column

## Suscripciones y Subcuentas 💳

### Suscripciones
- Pagos recurrentes automatizados
- Límites mensuales configurables
- Cancelación inmediata por el usuario
- Sin intermediarios ni custodia

### Subcuentas / Wallets secundarias
- Presupuestos por categoría (ej: gaming, zaps, donaciones)
- Control parental o de equipo
- Delegación temporal de fondos
- Separación de riesgos

**Notas**: Suscripciones funcionan sin dar claves privadas. Subcuentas ideales para gestión de equipos.

---
**Slide 6: Adopción Local**
- Layout: 8 (ONE_COLUMN_TEXT)
- Type: content

## Adopción en Argentina / LatAm 🌎

- **LaWallet** (Argentina): Wallet Lightning con tarjeta de débito, POS y BoltCard - presentado en bitcoin++ BA 2024
- **Francisco Calderon** (Argentina): Bot Telegram con Lightning y plataforma exchange en Nostr
- **Swapido** (México): Conversión Lightning → Pesos mexicanos con un clic
- **Bitcoin Argentina NGO**: Cursos de Lightning Network para la comunidad

**Notas**: Destacar comunidad local para conectar con audiencia. LaWallet es caso destacado presentado en bitcoin++ Buenos Aires.

---
**Slide 7: Adopción Internacional**
- Layout: 8 (ONE_COLUMN_TEXT)
- Type: content

## Adopción Internacional 🌍

- **Alby**: Extensión de navegador, hub auto-hospedado, sponsor de hackathons NWC
- **Prism** (Discord): Bot de zaps para Discord - envía cientos de pagos con un clic
- **ThunderTip** (Telegram): Bot no-custodial - pagos directos wallet-a-wallet
- **BTCPayServer**: Integración NWC para comerciantes - aceptar pagos en múltiples wallets

**Notas**: Mostrar diversidad de casos: wallets, bots de mensajería, plataformas de comercio. NWC permite interoperabilidad real.

---
**Slide 8: Integraciones Populares**
- Layout: 5 (TITLE_AND_BODY 2)
- Type: content

## Integraciones y Ecosistema 🔗

- **Discord/Telegram bots**: Prism (Discord), ThunderTip (Telegram) - tips y pagos en grupos
- **Web apps**: Dashboards, analytics, servicios SaaS con micropagos automáticos
- **Backends**: LNbits con extensión NWC, BTCPayServer con plugin Nostr/NIP-47
- **Recursos dev**: awesome-nwc en GitHub - lista curada de proyectos e integraciones

**Notas**: NWC no es solo para wallets finales, también para backends y herramientas. Ecosistema en crecimiento constante.

---
**Slide 9: BTCPayServer + Hackatón**
- Layout: 5 (TITLE_AND_BODY 2)
- Type: content

## BTCPayServer + Mi Proyecto 🏆

- Gané Geyser NWC Hackathon ($10k, sponsors: Alby, Flash, Primal, BTC Curacão)
- Proyecto: **Suscripciones NWC en BTCPayServer**
- Permite a comerciantes ofrecer suscripciones Lightning sin custodia
- Backend neutral, open source, enfoque en soberanía del usuario

**Transparencia**: trabajo en Alby, pero la charla es neutral y comunitaria

**Notas**: Mencionar logro sin convertirlo en pitch. Geyser hackathon tuvo múltiples aplicantes (ZapGoals, Swapido, etc). Enfatizar neutralidad.

---
**Slide 10: NIPs y Seguridad**
- Layout: 6 (TITLE_AND_TWO_COLUMNS)
- Type: two-column

## NIPs Relevantes + Seguridad 🔒

### NIPs Clave
- **NIP-47**: Nostr Wallet Connect
- **NIP-01**: Eventos básicos de Nostr
- **[NIP-X]**: [otro NIP relevante si aplica]

### Seguridad y Buenas Prácticas
- Permisos mínimos necesarios
- Rotación de conexiones
- Monitoreo de actividad
- Revocación inmediata

[Pendiente: revisar NIPs actualizados relacionados con NWC]

**Notas**: NWC es seguro si se configura bien. No dar acceso ilimitado por defecto.

---
**Slide 11: IA + MCP**
- Layout: 5 (TITLE_AND_BODY 2)
- Type: content

## IA + MCP: Agentic Engineering 🧠

- **MCP (Model Context Protocol)**: orquestación de AI agents con herramientas
- NWC como "herramienta" para agents: pagos automáticos, rewards, micropagos
- Casos de uso: asistentes con presupuesto, bots autónomos, workflows complejos
- Ejemplo: agent que paga por APIs, servicios, datos en tiempo real

**Beneficio**: IA que puede pagar sin intervención humana constante, con límites seguros

**Notas**: MCP + NWC = agents autónomos pero controlados. Futuro de automatización con Bitcoin.

---
**Slide 12: CTA y Recursos**
- Layout: 5 (TITLE_AND_BODY 2)
- Type: content

## Cómo Empezar Hoy 📫

- **Documentación NIP-47**: [enlace o QR]
- **Alby Hub**: Prueba NWC gratis (auto-hospedado)
- **Repo de ejemplos**: [enlace a GitHub con integraciones]
- **Comunidad**: [Nostr, Telegram, Discord]

**¿Preguntas?** → [tu contacto Nostr / email]

[Pendiente: generar QR code para recursos principales]

**Notas**: Call to action claro. Ofrecer un punto de entrada simple (Alby Hub) y recursos.

---

## Metadata General

- **Duración objetivo**: 15 minutos
- **Total de slides**: 12
- **Formato final**: PPTX, 1920x1080, <15MB
- **Paleta de emojis**: 🚀 😬 ⏱️ 🧩 💳 🌎 🌍 🔗 🏆 🔒 🧠 📫
- **Fuentes a citar**: Mínimo 2-3 referencias verificables en slides de problema/adopción
