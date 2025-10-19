# Referencias y Fuentes - NWC para Desarrolladores

## NIPs (Nostr Implementation Possibilities)

- **NIP-47 (Wallet Connect)**: https://github.com/nostr-protocol/nips/blob/master/47.md
  - Especificación oficial de Nostr Wallet Connect
  - Comandos, permisos, seguridad

- **NIP-01 (Basic Events)**: https://github.com/nostr-protocol/nips/blob/master/01.md
  - Fundamentos de eventos Nostr
  - Firma y verificación

## Proyectos y Adopción

### Internacional

#### Wallets y Hubs
- **Alby**: https://getalby.com
  - Extensión de navegador, hub auto-hospedado
  - Implementación referencia de NWC
  - Sponsor del Geyser NWC Hackathon

#### Bots y Herramientas
- **Prism (Discord Zap Bot)**:
  - Bot de Discord para micropagos Lightning vía NWC
  - Permite enviar cientos de pagos con un clic
  - No requiere clave privada Nostr para conectar wallet

- **ThunderTip (Telegram)**: https://thundertip.vercel.app/
  - Bot de Telegram no-custodial
  - Pagos directos wallet-a-wallet vía NWC
  - Fondos nunca en custodia del bot

#### Integraciones de Plataformas
- **BTCPayServer + NWC**: https://blog.getalby.com/manage-btcpay-server-with-any-node-or-wallet-with-nwc/
  - Plugin Nostr con soporte NIP-47
  - Permite a comerciantes aceptar pagos en wallets NWC (Alby, Mutiny, Umbrel, Start9)
  - Presupuestos y permisos granulares

- **LNbits**: Soporte para extensión NWC Wallet Service

#### Recursos para Desarrolladores
- **awesome-nwc**: https://github.com/getAlby/awesome-nwc
  - Lista curada de proyectos NWC
  - Herramientas, librerías, ejemplos de integración

### Argentina / LatAm

- **LaWallet** (Argentina): https://lawallet.io/
  - Wallet Lightning con tarjeta de débito y POS
  - Desarrollado por comunidad Bitcoin Argentina
  - Soporte Lightning Address, NIP-05, LUD16
  - Infraestructura basada en Lightning + Nostr
  - Presentado en bitcoin++ Buenos Aires 2024
  - Open source, transparente, con soporte BoltCard

- **Francisco Calderon** (Argentina):
  - Bot de transacciones Telegram con Lightning
  - Plataforma de exchange en Nostr
  - Instructor en "Introducción a Lightning Network" (Bitcoin Argentina NGO)

- **Swapido** (México):
  - Conversión Lightning → Pesos mexicanos con un clic
  - Aplicante al Geyser NWC Hackathon

- **Bitcoin Argentina NGO**:
  - Curso virtual "Introduction to Lightning Network"
  - Instructores: Nicolás Bourbon, Francisco Calderon, Federico Andragnes
  - Miembros de Librería de Satoshi

## Hackatones y Competencias

- **Geyser NWC Hackathon** ($10,000 USD):
  - Fuente: https://bitcoinmagazine.com/industry-events/geyser-launches-10k-nostr-wallet-connect-grant-to-spark-open-source-innovation
  - DoraHacks: https://dorahacks.io/hackathon/nwc/detail
  - Sponsors: Alby, Flash, Primal, BTC Curacão
  - Dos tracks: New NWC Apps y Mature NWC Apps
  - Aplicantes: ZapGoals, Swapido, Flotilla, Medical Binder
  - Enfoque: Apps Bitcoin-powered open source
  - Proyecto personal ganador: Suscripciones NWC en BTCPayServer

- **bitcoin++ Buenos Aires 2024**:
  - Fuente: https://btcplusplus.dev/conf/ba24/talks
  - Presentación de LaWallet
  - Hackathon con proyectos NWC

## Estadísticas y Contexto

- **NWC Ecosystem 2024**: Descrito como "breakthrough year" para el ecosistema NWC
  - Nuevas wallets, apps, websites, herramientas dev
  - Adopción de interoperabilidad y programabilidad

- **Lightning Network**: Alcanzó madurez técnica, con necesidad de mejor UX

- **Nostr**: Infraestructura descentralizada en crecimiento para casos de uso como pagos

- **Casos de uso emergentes**: Suscripciones, micropagos, bots, IA agents

## MCP (Model Context Protocol)

- **Documentación oficial**: [enlace cuando esté disponible]
- **Casos de uso con IA**: [referencias]

## Otros Recursos

- **Nostr Protocol**: https://nostr.com
- **Lightning Network**: https://lightning.network
- **BTCPayServer**: https://btcpayserver.org

---

**Nota**: Las referencias marcadas como [PENDIENTE] deben completarse antes de la charla.
Priorizar fuentes verificables y públicas.
