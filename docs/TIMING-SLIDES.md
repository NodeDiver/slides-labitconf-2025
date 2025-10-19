# ⏱️ Guía de Timing - Slides NWC LABITCONF

**Objetivo total**: 15 minutos (900 segundos)
**Buffer de seguridad**: -1 minuto (para quedar en 14 min y tener margen)
**Timing real objetivo**: 14 minutos (840 segundos)

---

## 📊 Distribución de Tiempo por Slide

| # | Slide | Tiempo Objetivo | Tiempo Acumulado | Beats Clave |
|---|-------|----------------|------------------|-------------|
| 1 | Portada | 30s | 0:30 | Intro rápida, nombre, contexto |
| 2 | El problema | 1m 30s | 2:00 | Dolor actual, 2 datos concretos |
| 3 | Por qué ahora | 1m 00s | 3:00 | Tendencias breves, timing perfecto |
| 4 | Qué es NWC | 1m 30s | 4:30 | Definición, comparación OAuth |
| 5 | Suscripciones y subcuentas | 1m 20s | 5:50 | Dos flujos en paralelo |
| 6 | Adopción local | 1m 10s | 7:00 | 4 proyectos Argentina/LatAm |
| 7 | Adopción internacional | 1m 10s | 8:10 | 4 proyectos internacionales |
| 8 | Integraciones | 1m 00s | 9:10 | Ecosistema rápido |
| 9 | BTCPayServer + Hackatón | 1m 30s | 10:40 | Tu proyecto, transparencia |
| 10 | NIPs + Seguridad | 1m 20s | 12:00 | Técnico pero accesible |
| 11 | IA + MCP | 1m 20s | 13:20 | Futuro, casos de uso |
| 12 | CTA | 40s | 14:00 | QR, recursos, cómo empezar |
| **TOTAL** | | **14m 00s** | | |

**Margen de seguridad**: 1 minuto (para quedar bajo 15 min)

---

## 📝 Desglose Detallado por Slide

### Slide 1: Portada (30 segundos)

**TIMING TARGET: 30s**

**BEAT 1: Introducción (15s)**
- "Hola, soy [nombre]"
- "Voy a hablar sobre Nostr Wallet Connect para desarrolladores"
- [Mostrar slide]

**BEAT 2: Contexto personal (15s)**
- "Trabajo en Alby, pero esta charla es neutral y técnica"
- "Vamos a ver qué es NWC, quién lo usa, y cómo empezar"

**NOTAS:**
- Hablar con confianza y claridad
- No extenderse, ir directo al grano
- Establecer tono profesional pero accesible

**FALLBACK (si empiezas tarde):**
- Saltar contexto personal, ir directo al contenido

---

### Slide 2: El Problema (1 minuto 30 segundos)

**TIMING TARGET: 1m 30s (90s)**

**BEAT 1: Intro del problema (20s)**
- "Antes de hablar de soluciones, veamos el problema"
- "Las wallets Lightning tienen un dilema fundamental"
- [Pausa 2s]

**BEAT 2: Punto 1 - Custodia total (25s)**
- "Primera opción: custodia total - le das tus claves a terceros"
- "Conveniente pero peligroso: 'not your keys, not your coins'"
- [Ejemplo: exchanges, custodial wallets]

**BEAT 3: Punto 2 - Auto-custodia compleja (25s)**
- "Segunda opción: auto-custodia - corres tu propio nodo"
- "Seguro pero complejo: no todos pueden/quieren hacerlo"
- [Dato: % de usuarios que no quieren self-host]

**BEAT 4: Punto 3 - Sin granularidad (15s)**
- "Tercer problema: no hay término medio"
- "Es todo o nada: no puedes dar acceso limitado a apps"

**BEAT 5: Transición (5s)**
- "Aquí es donde entra NWC"
- [Click para avanzar]

**NOTAS:**
- Hablar de forma clara, sin jerga innecesaria
- Los 3 puntos deben ser concisos
- Usar analogía si hay tiempo: "Es como dar tu tarjeta bancaria completa vs dar permiso de pago limitado"

**PREGUNTAS ANTICIPADAS:**
- ¿Por qué es un problema? → Frena adopción de Lightning

**FALLBACK (si te pasas de tiempo):**
- Saltar ejemplo y analogía, mantener solo los 3 puntos

---

### Slide 3: Por Qué NWC Ahora (1 minuto)

**TIMING TARGET: 1m (60s)**

**BEAT 1: Intro (10s)**
- "¿Por qué esto es relevante ahora?"

**BEAT 2: Lightning maduro (20s)**
- "Lightning alcanzó madurez técnica - funciona"
- "Pero la UX sigue siendo el cuello de botella"

**BEAT 3: Casos de uso emergentes (20s)**
- "Explosión de casos de uso: suscripciones, micropagos, bots, IA"
- "Necesitan acceso programático pero seguro a wallets"

**BEAT 4: Nostr como infraestructura (10s)**
- "Nostr ofrece infraestructura descentralizada lista"
- "NIPs permiten iterar rápido"

**BEAT 5: Transición (5s)**
- "Perfecto, entonces ¿qué es NWC?"

**FALLBACK:**
- Fusionar beats 2-3 en uno solo (30s total)

---

### Slide 4: Qué es NWC (1 minuto 30 segundos)

**TIMING TARGET: 1m 30s (90s)**

**BEAT 1: Definición simple (20s)**
- "NWC es OAuth para Lightning, pero descentralizado"
- "Permite delegar acceso a tu wallet con permisos granulares"

**BEAT 2: Protocolo Nostr (25s)**
- "Basado en Nostr, específicamente NIP-47"
- "Eventos firmados, relays descentralizados"
- "Sin single point of failure"

**BEAT 3: Permisos granulares (30s)**
- "Lo clave: puedo dar acceso limitado"
- [Ejemplo concreto]: "App de suscripciones puede cobrar max $10/mes"
- "Si la app se compromete, solo pierdo $10"
- "No necesita mis claves privadas"

**BEAT 4: Interoperabilidad (10s)**
- "Funciona con cualquier wallet y app que implemente NIP-47"
- "Eso es el poder de los estándares abiertos"

**BEAT 5: Transición (5s)**
- "Ahora veamos casos de uso concretos"

**ANÉCDOTA (si hay tiempo, +15s):**
- "Cuando implementé esto para BTCPayServer en el hackathon de Geyser..."

**FALLBACK:**
- Saltar beat 4, ir directo a transición

---

### Slide 5: Suscripciones y Subcuentas (1 minuto 20 segundos)

**TIMING TARGET: 1m 20s (80s)**

**BEAT 1: Intro (10s)**
- "Dos casos de uso fundamentales"

**BEAT 2: Suscripciones (35s)**
- "Primero: suscripciones - pagos recurrentes automatizados"
- "Configuro límite mensual, la app cobra automáticamente"
- "Puedo cancelar instantáneamente, sin intermediarios"
- [Ejemplo]: "Spotify Lightning: max 1000 sats/mes"

**BEAT 3: Subcuentas (35s)**
- "Segundo: subcuentas o wallets secundarias"
- "Presupuestos por categoría: gaming, zaps, donaciones"
- "Control parental o de equipo"
- [Ejemplo]: "Le doy a mi hijo 5000 sats/semana para juegos"

**BEAT 4: Transición (5s)**
- "¿Quién está usando esto en producción?"

**FALLBACK:**
- Acortar ejemplos a 1 frase cada uno

---

### Slide 6: Adopción Local (1 minuto 10 segundos)

**TIMING TARGET: 1m 10s (70s)**

**BEAT 1: Intro (10s)**
- "Varios proyectos en Argentina y LatAm ya están usando NWC"

**BEAT 2: LaWallet (25s)**
- "LaWallet, el caso más destacado"
- "Wallet Lightning con tarjeta de débito y POS"
- "Desarrollado por Bitcoin Argentina, presentado en bitcoin++ BA"
- "Open source, soporte BoltCard"

**BEAT 3: Francisco Calderon (15s)**
- "Francisco Calderon: bot Telegram + exchange Nostr"
- "Instructor en cursos de Lightning de Bitcoin Argentina NGO"

**BEAT 4: Swapido (10s)**
- "Swapido en México: Lightning a pesos con un clic"

**BEAT 5: Comunidad (10s)**
- "Bitcoin Argentina NGO: cursos de Lightning para la comunidad"
- "Ecosistema local en crecimiento"

**NOTAS:**
- Enfatizar comunidad local para conectar con audiencia
- Mencionar que son proyectos reales, en producción

**FALLBACK:**
- Mencionar solo LaWallet y Swapido (40s total)

---

### Slide 7: Adopción Internacional (1 minuto 10 segundos)

**TIMING TARGET: 1m 10s (70s)**

**BEAT 1: Intro (10s)**
- "Internacionalmente, el ecosistema está explotando"

**BEAT 2: Alby (15s)**
- "Alby: extensión de navegador, hub auto-hospedado"
- "Sponsor de hackathons NWC, referencia en implementación"

**BEAT 3: Prism Discord (15s)**
- "Prism: bot de zaps para Discord"
- "Enviar cientos de pagos con un clic"
- "Ideal para comunidades y tips"

**BEAT 4: ThunderTip Telegram (15s)**
- "ThunderTip: bot Telegram no-custodial"
- "Pagos directos wallet-a-wallet"
- "Nunca custodia tus fondos"

**BEAT 5: BTCPayServer (15s)**
- "BTCPayServer: integración oficial NWC"
- "Comerciantes aceptan pagos en múltiples wallets"
- "Flexibilidad total"

**NOTAS:**
- Mostrar diversidad: wallets, bots, plataformas de comercio
- NWC permite interoperabilidad real

**FALLBACK:**
- Mencionar solo Alby y BTCPayServer (30s)

---

### Slide 8: Integraciones y Ecosistema (1 minuto)

**TIMING TARGET: 1m (60s)**

**BEAT 1: Intro (10s)**
- "El ecosistema va más allá de wallets finales"

**BEAT 2: Bots (20s)**
- "Bots de mensajería: Prism en Discord, ThunderTip en Telegram"
- "Tips, pagos en grupos, gestión de comunidad"

**BEAT 3: Backends (20s)**
- "Backends: LNbits con extensión NWC"
- "BTCPayServer con plugin Nostr/NIP-47"
- "Permiten a cualquier comerciante adoptar NWC"

**BEAT 4: Recursos dev (10s)**
- "awesome-nwc en GitHub: lista curada de proyectos"
- "Herramientas, librerías, ejemplos"

**BEAT 5: Transición (5s)**
- "Hablando de proyectos..."

**FALLBACK:**
- Mencionar solo bots y backends (40s)

---

### Slide 9: BTCPayServer + Mi Proyecto (1 minuto 30 segundos)

**TIMING TARGET: 1m 30s (90s)**

**BEAT 1: Contexto hackathon (25s)**
- "Gané el Geyser NWC Hackathon, $10,000 USD"
- "Sponsors: Alby, Flash, Primal, BTC Curacão"
- "Múltiples aplicantes: ZapGoals, Swapido, Flotilla"

**BEAT 2: Mi proyecto (35s)**
- "Proyecto: Suscripciones NWC en BTCPayServer"
- "Permite a comerciantes ofrecer suscripciones Lightning"
- "Sin custodia, sin intermediarios, full sovereignty"
- "Backend neutral, open source desde el día 1"

**BEAT 3: Transparencia (20s)**
- "Transparencia total: trabajo en Alby"
- "Pero esta charla es neutral, técnica, comunitaria"
- "No es un pitch, es educación sobre el protocolo"

**BEAT 4: Transición (10s)**
- "Ahora, hablemos un poco de lo técnico"

**NOTAS:**
- No convertir esto en pitch de Alby
- Enfatizar neutralidad y open source
- Mencionar hackathon para dar credibilidad

**FALLBACK:**
- Saltar beat 3 si te pasas de tiempo (salvar 20s)

---

### Slide 10: NIPs + Seguridad (1 minuto 20 segundos)

**TIMING TARGET: 1m 20s (80s)**

**BEAT 1: Intro NIPs (15s)**
- "Técnicamente, NWC se basa en NIPs - Nostr Implementation Possibilities"
- "Son como los BIPs para Bitcoin"

**BEAT 2: NIPs clave (25s)**
- "NIP-47 es el core: Nostr Wallet Connect"
- "Define comandos, permisos, flow de autorización"
- "NIP-01: eventos básicos de Nostr para firma y verificación"

**BEAT 3: Seguridad (30s)**
- "Seguridad: permisos mínimos necesarios"
- "Rotación de conexiones recomendada"
- "Monitoreo de actividad en tiempo real"
- "Revocación inmediata si algo sale mal"

**BEAT 4: Buenas prácticas (10s)**
- "No dar acceso ilimitado por defecto"
- "Revisar permisos regularmente"

**BEAT 5: Transición (5s)**
- "Y ahora, el futuro..."

**NOTAS:**
- Mantener técnico pero accesible
- No entrar en detalles de implementación (no es una charla de dev puro)

**FALLBACK:**
- Fusionar beats 2-3 (salvar 20s)

---

### Slide 11: IA + MCP (1 minuto 20 segundos)

**TIMING TARGET: 1m 20s (80s)**

**BEAT 1: Intro MCP (20s)**
- "MCP - Model Context Protocol: orquestación de AI agents"
- "Permite a agents usar herramientas de forma segura"

**BEAT 2: NWC como herramienta (25s)**
- "NWC es perfecto como 'herramienta' para agents"
- "Agent puede hacer pagos automáticamente"
- "Pero con límites configurados por el usuario"

**BEAT 3: Casos de uso (25s)**
- "Asistente con presupuesto: paga por APIs, servicios, datos"
- "Bots autónomos en workflows complejos"
- "Rewards automáticos, micropagos en tiempo real"

**BEAT 4: Beneficio clave (10s)**
- "IA que puede pagar sin intervención humana constante"
- "Pero con control total del usuario"

**BEAT 5: Transición (5s)**
- "Para terminar..."

**ANÉCDOTA (si hay tiempo, +15s):**
- "Imaginen un agent que busca ofertas de vuelos y compra automáticamente si cumple criterios"

**FALLBACK:**
- Saltar anécdota, mencionar solo 1 caso de uso (60s total)

---

### Slide 12: CTA y Recursos (40 segundos)

**TIMING TARGET: 40s**

**BEAT 1: Llamado a la acción (15s)**
- "Si quieren probar NWC hoy mismo:"
- "Alby Hub es el camino más fácil - auto-hospedado y gratis"

**BEAT 2: Recursos (15s)**
- "Documentación: NIP-47 en GitHub"
- "awesome-nwc: lista de proyectos y herramientas"
- [Mostrar QR code grande]

**BEAT 3: Repo y ejemplos (10s)**
- "Repo con ejemplos: [URL o QR]"
- "Todo el código de mi proyecto de suscripciones está ahí"

**BEAT 4: Cierre (5s)**
- "¿Preguntas?"
- [O si no hay Q&A: "Gracias!"]

**NOTAS:**
- Hacer QR grande y visible
- Dar tiempo para que la gente tome fotos del QR

**FALLBACK:**
- Saltar beat 3 si el tiempo apremia

---

## 🎯 Plantilla de Ensayo

Usa esta tabla para registrar tus ensayos:

### Ensayo #1 - Fecha: [____]

| Slide | Tiempo Real | Objetivo | Diferencia | Notas de Ajuste |
|-------|-------------|----------|------------|----------------|
| 1 | | 0:30 | | |
| 2 | | 1:30 | | |
| 3 | | 1:00 | | |
| 4 | | 1:30 | | |
| 5 | | 1:20 | | |
| 6 | | 1:10 | | |
| 7 | | 1:10 | | |
| 8 | | 1:00 | | |
| 9 | | 1:30 | | |
| 10 | | 1:20 | | |
| 11 | | 1:20 | | |
| 12 | | 0:40 | | |
| **TOTAL** | | **14:00** | | |

**Conclusión Ensayo #1:**
- ¿Dónde me pasé de tiempo?
- ¿Qué beats puedo acortar?
- ¿Qué transiciones necesito practicar?

---

## 💡 Tips para Timing Perfecto

1. **Usa un timer visible**: Smartphone o laptop con cronómetro
2. **Practica las transiciones**: Entre slides es donde se pierde tiempo
3. **Identifica tus "mullet words"**: Palabras que repites ("entonces", "básicamente", "o sea")
4. **Graba un ensayo**: Para identificar pausas innecesarias
5. **Timing en silencio**: Cuenta mentalmente los segundos para desarrollar sentido del tiempo
6. **Plan de contingencia**: Si vas atrasado, salta anécdotas y ejemplos adicionales
7. **Respira**: Pausas de 2-3s no son tiempo perdido, dan impacto

---

## ⚠️ Señales de Que Te Estás Pasando

- **Minuto 5**: Deberías estar en slide 5-6
- **Minuto 8**: Deberías estar en slide 7-8
- **Minuto 10**: Deberías estar en slide 9
- **Minuto 12**: Deberías estar en slide 10
- **Minuto 13:30**: Deberías estar en slide 11-12

Si detectas retraso:
1. Acortar bullets de próximas slides
2. Saltar anécdotas adicionales
3. Ir más directo en transiciones

---

## 🚨 Protocolo de Emergencia

**Si el organizador te dice "5 minutos más"**:
→ Usar versión condensada (si la preparaste en Paso 11)

**Si el organizador te dice "termina ya"**:
→ Saltar directamente a slide 12 (CTA), mostrar QR, agradecer

**Si tienes problemas técnicos** (PPTX no abre, etc.):
→ Tener PDF backup en USB
→ Tener lista de bullets por slide impresa

---

**¡Practica, cronometra, ajusta, repite!** ⏱️

**Última actualización**: 2025-10-18
