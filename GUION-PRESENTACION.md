# 🎤 Guión de Presentación - NWC para Desarrolladores
## LABITCONF 2025

**Duración objetivo**: 14 minutos (con 1 min de buffer para quedar bajo 15 min)
**Última actualización**: 2025-10-22

---

## 📋 Instrucciones de Uso

1. **Lee el guión completo** al menos 3 veces antes del primer ensayo
2. **Practica cronometrando** cada slide individualmente
3. **Marca con color** las partes que puedes saltar si te pasas de tiempo
4. **Aprende las transiciones** de memoria para que fluyan naturalmente
5. **NO memorices palabra por palabra** - usa el guión como guía, habla natural

---

## 🎬 SLIDE 1: Portada (30 segundos)

### 🎯 OBJETIVO
Presentarte rápidamente y establecer el tono de la charla. No te extiendas.

### 📝 GUIÓN

> **[BEAT 1 - Introducción: 15s]**
>
> Hola, buenos días/tardes. Mi nombre es [TU NOMBRE].
>
> Durante los próximos 15 minutos voy a hablar sobre **Nostr Wallet Connect para desarrolladores**.
>
> **[Mostrar la slide 1]**
>
> **[BEAT 2 - Contexto personal: 15s]**
>
> Antes de empezar, una aclaración: trabajo en Alby, una wallet que implementa NWC. Pero esta charla es completamente neutral y técnica. No es un pitch comercial.
>
> Vamos a ver qué es NWC, quién lo está usando en producción, y cómo pueden empezar a implementarlo ustedes mismos.
>
> **[Pausa de 2 segundos, respirar]**

### ⏱️ CHECKPOINT
**Deberías estar en**: 0:30
**Si te pasas**: Saltar el BEAT 2, ir directo al contenido.

---

## 🎬 SLIDE 2: El Problema (1 minuto 30 segundos)

### 🎯 OBJETIVO
Establecer el dolor actual del ecosistema Lightning. Hacer que la audiencia sienta el problema.

### 📝 GUIÓN

> **[BEAT 1 - Intro del problema: 20s]**
>
> Antes de hablar de soluciones, necesitamos entender el problema.
>
> Las wallets Lightning tienen un dilema fundamental.
>
> **[Pausa 2s - dejar que la audiencia procese]**
>
> **[Avanzar a slide 2]**
>
> **[BEAT 2 - Custodia total: 25s]**
>
> Primera opción: **custodia total**. Le das tus claves privadas a un tercero - un exchange, una wallet custodial.
>
> Es conveniente, es fácil. Pero es peligroso. "Not your keys, not your coins" - todos conocemos la frase.
>
> Hemos visto exchanges caer. Hemos visto fondos perderse.
>
> **[BEAT 3 - Auto-custodia compleja: 25s]**
>
> Segunda opción: **auto-custodia completa**. Corres tu propio nodo Lightning, gestionas tus canales, tu liquidez.
>
> Es seguro, es soberano. Pero es complejo.
>
> No todos pueden hacerlo. No todos *quieren* hacerlo. Y está bien - no deberíamos forzar a usuarios a ser administradores de sistema para usar Bitcoin.
>
> **[BEAT 4 - Sin granularidad: 15s]**
>
> Y aquí está el tercer problema: **no hay término medio**.
>
> Es todo o nada. No puedes dar acceso *limitado* a una aplicación. No puedes decir "esta app puede gastar máximo 10 dólares al mes".
>
> Es binario: o le das todo, o no le das nada.
>
> **[BEAT 5 - Transición: 5s]**
>
> Y aquí es donde entra Nostr Wallet Connect.
>
> **[Click para avanzar]**

### 💡 ANALOGÍA (opcional, +15s)
Si tienes tiempo, usa esta analogía:

> Es como con tu tarjeta bancaria. No le darías tu tarjeta física a cada app, ¿verdad? Pero sí puedes autorizar cargos limitados con límites de monto y tiempo.
>
> Lightning necesita lo mismo. Y eso es NWC.

### ⏱️ CHECKPOINT
**Deberías estar en**: 2:00
**Si te pasas**: Saltar analogía y ejemplos específicos.

---

## 🎬 SLIDE 3: Por Qué NWC Ahora (1 minuto)

### 🎯 OBJETIVO
Establecer el momentum actual. Por qué *ahora* es el momento perfecto para NWC.

### 📝 GUIÓN

> **[BEAT 1 - Intro: 10s]**
>
> Entonces, ¿por qué esto es relevante *ahora*? ¿Por qué NWC está ganando tracción en 2024-2025?
>
> **[Avanzar a slide 3]**
>
> **[BEAT 2 - Lightning maduro: 20s]**
>
> Primero: Lightning alcanzó madurez técnica. **Funciona**. Los canales son estables, el routing mejora constantemente.
>
> Pero la UX sigue siendo el cuello de botella. La experiencia de usuario es lo que frena la adopción masiva.
>
> **[BEAT 3 - Casos de uso emergentes: 20s]**
>
> Segundo: explosión de casos de uso.
>
> Suscripciones Lightning. Micropagos automáticos. Bots de Telegram y Discord. IA agents que necesitan pagar por APIs.
>
> Todos necesitan acceso programático a wallets, pero acceso **seguro**. No pueden pedir las claves privadas del usuario.
>
> **[BEAT 4 - Nostr como infraestructura: 10s]**
>
> Y tercero: Nostr ofrece la infraestructura descentralizada perfecta.
>
> Ya tenemos relays, ya tenemos eventos firmados, ya tenemos NIPs que permiten iterar rápido.
>
> **[BEAT 5 - Transición: 5s]**
>
> Perfecto. Entonces, ¿qué es exactamente NWC?

### ⏱️ CHECKPOINT
**Deberías estar en**: 3:00
**Si te pasas**: Fusionar BEAT 2 y 3 en uno solo (30s total).

---

## 🎬 SLIDE 4: Qué es NWC (1 minuto 30 segundos)

### 🎯 OBJETIVO
Definir NWC claramente. Comparación con OAuth es clave. Mostrar el diagrama.

### 📝 GUIÓN

> **[BEAT 1 - Definición simple: 20s]**
>
> NWC - Nostr Wallet Connect - es esencialmente **OAuth para Lightning, pero descentralizado**.
>
> **[Avanzar a slide 4 - mostrar diagrama]**
>
> Permite delegar acceso a tu wallet Lightning con permisos granulares.
>
> **[BEAT 2 - Protocolo Nostr: 25s]**
>
> Técnicamente, está basado en Nostr. Específicamente, en NIP-47.
>
> Funciona con eventos firmados enviados a través de relays descentralizados.
>
> Esto significa: sin single point of failure. Si un relay cae, usas otro. Si Alby desaparece mañana, tu conexión NWC sigue funcionando.
>
> **[BEAT 3 - Permisos granulares: 30s]**
>
> Pero lo realmente clave son los **permisos granulares**.
>
> **[Ejemplo concreto - hablar despacio aquí]:**
>
> Imaginen que tienen una app de suscripciones - digamos, un Spotify descentralizado.
>
> Con NWC, pueden darle permiso a esa app para cobrar **máximo 1000 sats al mes**.
>
> Si la app se compromete, si hay un hack, si algo sale mal... ustedes solo pierden 1000 sats. No pierden toda su wallet.
>
> Y la app **nunca** tiene acceso a sus claves privadas.
>
> **[BEAT 4 - Interoperabilidad: 10s]**
>
> Y como es un protocolo abierto, funciona con *cualquier* wallet y *cualquier* app que implemente NIP-47.
>
> Ese es el poder de los estándares abiertos.
>
> **[BEAT 5 - Transición: 5s]**
>
> Ahora veamos casos de uso concretos.

### 📸 NOTA VISUAL
**Señalar el diagrama** cuando hables de permisos granulares. Mostrar el flujo visualmente.

### ⏱️ CHECKPOINT
**Deberías estar en**: 4:30
**Si te pasas**: Saltar BEAT 4, ir directo a transición.

---

## 🎬 SLIDE 5: Suscripciones y Subcuentas (1 minuto 20 segundos)

### 🎯 OBJETIVO
Dos casos de uso fundamentales. Slides en dos columnas - hablar de izquierda a derecha.

### 📝 GUIÓN

> **[BEAT 1 - Intro: 10s]**
>
> Dos casos de uso fundamentales donde NWC brilla.
>
> **[Avanzar a slide 5 - dos columnas]**
>
> **[BEAT 2 - Suscripciones (columna izquierda): 35s]**
>
> **[Señalar columna izquierda]**
>
> Primero: **suscripciones**. Pagos recurrentes automatizados.
>
> Configuran un límite mensual - digamos, 5000 sats al mes. La app cobra automáticamente cada vez que usan el servicio.
>
> Si quieren cancelar, lo hacen instantáneamente. Sin enviar emails al soporte. Sin "cancela tu suscripción 30 días antes".
>
> **[Ejemplo]:** Imaginen un Spotify Lightning. 1000 sats por mes. Si dejan de pagar, el servicio se corta. Si quieren volver, reconectan.
>
> Sin intermediarios. Sin Stripe tomando 3% de comisión.
>
> **[BEAT 3 - Subcuentas (columna derecha): 35s]**
>
> **[Señalar columna derecha]**
>
> Segundo: **subcuentas** o wallets secundarias.
>
> Presupuestos por categoría. Pueden tener una "wallet de gaming" con 10,000 sats. Una "wallet de zaps" con 5,000 sats. Una "wallet de donaciones" con lo que quieran arriesgar.
>
> Control parental: le dan a su hijo una wallet con 5,000 sats a la semana para juegos. Cuando se acaban, se acabaron. Aprende a gestionar sats.
>
> Control de equipo: una empresa puede dar wallets limitadas a empleados para gastos específicos.
>
> **[BEAT 4 - Transición: 5s]**
>
> Bien. ¿Y quién está usando esto en producción? ¿Es solo teoría?

### ⏱️ CHECKPOINT
**Deberías estar en**: 5:50
**Si te pasas**: Acortar ejemplos a 1 frase cada uno.

---

## 🎬 SLIDE 6: Adopción Local (1 minuto 10 segundos)

### 🎯 OBJETIVO
Conectar con la audiencia local. Mostrar que hay proyectos argentinos/LatAm reales.

### 📝 GUIÓN

> **[BEAT 1 - Intro: 10s]**
>
> No solo es teoría. Ya hay varios proyectos en Argentina y LatAm usando NWC en producción.
>
> **[Avanzar a slide 6]**
>
> **[BEAT 2 - LaWallet: 25s]**
>
> El caso más destacado es **LaWallet**.
>
> Es una wallet Lightning completa desarrollada por Bitcoin Argentina. Tiene tarjeta de débito física, tiene POS, soporta BoltCard.
>
> Fue presentada en bitcoin++ Buenos Aires el año pasado. Es open source.
>
> Y usa NWC para permitir que apps externas interactúen con tu wallet de forma segura.
>
> **[BEAT 3 - Francisco Calderon: 15s]**
>
> **Francisco Calderon**, también de Argentina, tiene un bot de Telegram integrado con Lightning y una plataforma de exchange en Nostr.
>
> Es instructor en los cursos de Lightning Network de Bitcoin Argentina NGO.
>
> **[BEAT 4 - Swapido: 10s]**
>
> **Swapido**, desde México, permite convertir Lightning a pesos mexicanos con un clic.
>
> Usa NWC para gestionar las transacciones de forma no-custodial.
>
> **[BEAT 5 - Comunidad: 10s]**
>
> Y Bitcoin Argentina NGO está dando cursos de Lightning Network a la comunidad.
>
> El ecosistema local está creciendo.

### 💡 ÉNFASIS
**"Es open source"** - enfatizar esto para la audiencia técnica de LABITCONF.

### ⏱️ CHECKPOINT
**Deberías estar en**: 7:00
**Si te pasas**: Mencionar solo LaWallet y Swapido (40s total).

---

## 🎬 SLIDE 7: Adopción Internacional (1 minuto 10 segundos)

### 🎯 OBJETIVO
Mostrar que el ecosistema global está explotando. Diversidad de casos de uso.

### 📝 GUIÓN

> **[BEAT 1 - Intro: 10s]**
>
> Internacionalmente, el ecosistema está explotando.
>
> **[Avanzar a slide 7]**
>
> **[BEAT 2 - Alby: 15s]**
>
> **Alby** - donde trabajo - tiene una extensión de navegador y un hub auto-hospedado.
>
> Son sponsors de hackathons NWC. Son referencia en implementación del protocolo.
>
> **[BEAT 3 - Prism Discord: 15s]**
>
> **Prism** es un bot de zaps para Discord.
>
> Permite enviar cientos de pagos Lightning con un solo clic. Ideal para comunidades que quieren hacer tips o recompensar contribuciones.
>
> **[BEAT 4 - ThunderTip Telegram: 15s]**
>
> **ThunderTip** es un bot para Telegram, pero completamente no-custodial.
>
> Los pagos van directo de wallet a wallet. El bot nunca custodia tus fondos.
>
> Esto es clave: NWC permite bots no-custodiales.
>
> **[BEAT 5 - BTCPayServer: 15s]**
>
> Y **BTCPayServer** tiene integración oficial con NWC.
>
> Los comerciantes pueden aceptar pagos en múltiples wallets Lightning sin gestionar nodos ellos mismos.
>
> Flexibilidad total.

### 💡 DIVERSIDAD
Enfatizar la **diversidad**: wallets, bots de mensajería, plataformas de comercio. NWC es horizontal.

### ⏱️ CHECKPOINT
**Deberías estar en**: 8:10
**Si te pasas**: Mencionar solo Alby y BTCPayServer (30s).

---

## 🎬 SLIDE 8: Integraciones y Ecosistema (1 minuto)

### 🎯 OBJETIVO
Mostrar que NWC va más allá de wallets finales. Es infraestructura.

### 📝 GUIÓN

> **[BEAT 1 - Intro: 10s]**
>
> El ecosistema va mucho más allá de wallets finales.
>
> **[Avanzar a slide 8]**
>
> **[BEAT 2 - Bots: 20s]**
>
> Ya mencioné bots de mensajería: Prism en Discord, ThunderTip en Telegram.
>
> Pero también hay bots para Twitter, para GitHub, para gestión de comunidades.
>
> Tips, pagos en grupos, bounties automáticos.
>
> **[BEAT 3 - Backends: 20s]**
>
> En backends: **LNbits** tiene una extensión NWC.
>
> **BTCPayServer** tiene un plugin oficial de Nostr/NIP-47.
>
> Esto permite a cualquier comerciante, cualquier proyecto, adoptar NWC sin ser experto en Lightning.
>
> **[BEAT 4 - Recursos dev: 10s]**
>
> Para desarrolladores: **awesome-nwc** en GitHub.
>
> Es una lista curada de proyectos, herramientas, librerías, ejemplos de código.
>
> **[BEAT 5 - Transición: 5s]**
>
> Hablando de proyectos...

### ⏱️ CHECKPOINT
**Deberías estar en**: 9:10
**Si te pasas**: Mencionar solo bots y backends (40s).

---

## 🎬 SLIDE 9: BTCPayServer + Mi Proyecto (1 minuto 30 segundos)

### 🎯 OBJETIVO
Mencionar tu hackathon win, pero sin convertirlo en pitch. Transparencia total.

### 📝 GUIÓN

> **[BEAT 1 - Contexto hackathon: 25s]**
>
> Hace unos meses, gané el **Geyser NWC Hackathon**. Diez mil dólares en premio.
>
> **[Avanzar a slide 9]**
>
> Los sponsors fueron Alby, Flash, Primal, y BTC Curacão.
>
> Hubo múltiples aplicantes: ZapGoals, Swapido, Flotilla - todos proyectos innovadores.
>
> **[BEAT 2 - Mi proyecto: 35s]**
>
> Mi proyecto fue: **Suscripciones NWC en BTCPayServer**.
>
> El objetivo era permitir a comerciantes ofrecer suscripciones Lightning sin custodia.
>
> Sin Stripe. Sin intermediarios. Full sovereignty.
>
> Backend neutral. Open source desde el día 1. El código está en GitHub.
>
> No es un producto cerrado - es infraestructura que cualquiera puede usar, modificar, desplegar.
>
> **[BEAT 3 - Transparencia: 20s]**
>
> Transparencia total: trabajo en Alby.
>
> Pero esta charla no es un pitch de Alby. Es educación sobre el protocolo.
>
> NWC es un estándar abierto. Hay múltiples implementaciones. La competencia es sana.
>
> Mi objetivo es que ustedes entiendan cómo funciona y cómo pueden implementarlo.
>
> **[BEAT 4 - Transición: 10s]**
>
> Ahora hablemos un poco de lo técnico - pero accesible.

### 💡 TONO
**Humilde pero confiado**. Ganaste el hackathon - está bien mencionarlo. Pero no lo conviertas en el centro de la charla.

### ⏱️ CHECKPOINT
**Deberías estar en**: 10:40
**Si te pasas**: Saltar BEAT 3 (salvar 20s).

---

## 🎬 SLIDE 10: NIPs + Seguridad (1 minuto 20 segundos)

### 🎯 OBJETIVO
Técnico pero accesible. No abrumar con detalles, pero dar confianza técnica.

### 📝 GUIÓN

> **[BEAT 1 - Intro NIPs: 15s]**
>
> Técnicamente, NWC se basa en NIPs - Nostr Implementation Possibilities.
>
> **[Avanzar a slide 10 - dos columnas]**
>
> Son como los BIPs para Bitcoin. Propuestas de mejora del protocolo.
>
> **[BEAT 2 - NIPs clave (columna izquierda): 25s]**
>
> **[Señalar columna izquierda]**
>
> **NIP-47** es el core de NWC.
>
> Define los comandos: pay invoice, get balance, make invoice.
>
> Define permisos: qué operaciones puede hacer cada conexión.
>
> Define el flow de autorización: cómo un usuario aprueba una conexión.
>
> **NIP-01** es la base: eventos básicos de Nostr, firma y verificación.
>
> **[BEAT 3 - Seguridad (columna derecha): 30s]**
>
> **[Señalar columna derecha]**
>
> En cuanto a seguridad:
>
> **Permisos mínimos necesarios**. Si una app solo necesita leer tu balance, no le des permiso de pago.
>
> **Rotación de conexiones**. Cada 3-6 meses, revoca conexiones viejas y crea nuevas.
>
> **Monitoreo en tiempo real**. Las wallets buenas te muestran cada pago que se hace con NWC.
>
> **Revocación inmediata**. Si algo sale mal, revocas la conexión en segundos.
>
> **[BEAT 4 - Buenas prácticas: 10s]**
>
> La regla de oro: **no dar acceso ilimitado por defecto**.
>
> Siempre empezar con el menor permiso posible. Siempre poner límites de monto.
>
> **[BEAT 5 - Transición: 5s]**
>
> Y ahora... el futuro.

### ⏱️ CHECKPOINT
**Deberías estar en**: 12:00
**Si te pasas**: Fusionar BEAT 2 y 3 (salvar 20s).

---

## 🎬 SLIDE 11: IA + MCP (1 minuto 20 segundos)

### 🎯 OBJETIVO
Mostrar el futuro. AI agents con acceso a pagos - controlado pero autónomo.

### 📝 GUIÓN

> **[BEAT 1 - Intro MCP: 20s]**
>
> **MCP** - Model Context Protocol.
>
> **[Avanzar a slide 11 - mostrar diagrama de arquitectura]**
>
> Es un protocolo de Anthropic para orquestar AI agents con herramientas.
>
> Un agent puede usar herramientas de forma segura: acceso a bases de datos, APIs, ejecutar código.
>
> **[BEAT 2 - NWC como herramienta: 25s]**
>
> NWC es perfecto como una de esas herramientas.
>
> **[Señalar diagrama]**
>
> Imaginen: un AI agent que puede hacer pagos automáticamente.
>
> Pero con límites configurados por ustedes: máximo 1000 sats por transacción, máximo 10,000 sats por día.
>
> El agent puede actuar autónomamente dentro de esos límites. Pero no puede vaciarte la wallet.
>
> **[BEAT 3 - Casos de uso: 25s]**
>
> Casos de uso:
>
> Un **asistente con presupuesto** que paga por APIs, por servicios cloud, por datos en tiempo real.
>
> **Bots autónomos** en workflows complejos: monitorea precios, compra cuando detecta oportunidad.
>
> **Rewards automáticos**: un agent que recompensa contribuciones a un proyecto open source.
>
> **[BEAT 4 - Beneficio clave: 10s]**
>
> El beneficio clave: IA que puede pagar sin intervención humana constante.
>
> Pero con control total del usuario. Sin riesgo de que el agent se vuelva loco y gaste todo.
>
> **[BEAT 5 - Transición: 5s]**
>
> Para terminar...

### 📸 NOTA VISUAL
**Señalar el diagrama de arquitectura NWC+MCP** cuando hables de la integración.

### 💡 ANÉCDOTA (opcional, +15s)
Si tienes tiempo:

> Imaginen un agent que busca ofertas de vuelos constantemente. Ustedes le dicen: "quiero ir a Miami, máximo 500 dólares, cualquier fecha en diciembre". El agent monitorea precios 24/7, y cuando encuentra la oferta, compra automáticamente. Sin que ustedes tengan que estar pendientes.

### ⏱️ CHECKPOINT
**Deberías estar en**: 13:20
**Si te pasas**: Saltar anécdota, mencionar solo 1 caso de uso (60s total).

---

## 🎬 SLIDE 12: CTA y Recursos (40 segundos)

### 🎯 OBJETIVO
Llamado a la acción claro. Mostrar QR codes. Dar recursos para que empiecen YA.

### 📝 GUIÓN

> **[BEAT 1 - Llamado a la acción: 15s]**
>
> Para terminar: si quieren probar NWC hoy mismo...
>
> **[Avanzar a slide 12 - mostrar QR codes grandes]**
>
> **Alby Hub** es el camino más fácil. Es auto-hospedado, es gratis, es open source.
>
> **[BEAT 2 - Recursos: 15s]**
>
> **[Señalar QR codes]**
>
> Documentación completa: **NIP-47** en GitHub.
>
> **awesome-nwc**: lista de todos los proyectos y herramientas disponibles.
>
> **[Pausa 3s - dar tiempo para que tomen fotos del QR]**
>
> **[BEAT 3 - Repo y ejemplos: 10s]**
>
> Todo el código de mi proyecto de suscripciones está en GitHub, open source.
>
> Ejemplos, tests, documentación completa.
>
> **[BEAT 4 - Cierre: 5s]**
>
> **[Sonreír]**
>
> ¿Preguntas?

### 📸 NOTA VISUAL
**Dar tiempo para que la audiencia tome fotos del QR**. No avances de inmediato. Cuenta mentalmente hasta 5.

### 💡 ALTERNATIVA DE CIERRE
Si no hay sesión de Q&A:

> Gracias por su atención. Los invito a probar NWC y me buscan en el evento si tienen preguntas.

### ⏱️ CHECKPOINT
**Deberías estar en**: 14:00
**Perfecto!** Tienes 1 minuto de buffer.

---

## 🎯 Plantilla de Ensayo

Usa esta tabla para tus ensayos. Imprime o ten abierta en otra pantalla.

### Ensayo #1 - Fecha: ____________

| Slide | Tiempo Real | Objetivo | ✅/❌ | Notas |
|-------|-------------|----------|------|-------|
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

**Conclusiones del ensayo #1:**
- ¿Dónde me pasé?
- ¿Qué puedo acortar?
- ¿Qué transiciones necesito pulir?

---

### Ensayo #2 - Fecha: ____________

*(Misma tabla)*

**Mejoras respecto al ensayo #1:**

---

### Ensayo #3 - Fecha: ____________

*(Misma tabla)*

**Confianza 1-10:**

---

## 💡 Tips de Práctica

### Antes del Ensayo
1. **Hidrátate** - voz clara necesita hidratación
2. **Calienta la voz** - di trabalenguas 2 minutos
3. **Prepara el timer** - smartphone visible con cronómetro

### Durante el Ensayo
1. **Habla en voz alta** - no practiques en tu cabeza
2. **Usa las pausas** - respirar no es perder tiempo
3. **Grábate** - audio o video, para identificar muletillas

### Después del Ensayo
1. **Anota inmediatamente** - qué funcionó, qué no
2. **Identifica muletillas** - "entonces", "básicamente", "o sea"
3. **Revisa transiciones** - entre slides es donde se pierde tiempo

---

## ⚠️ Protocolo de Emergencia

### Si te dicen "5 minutos más"
1. Saltar BEATS opcionales
2. Saltar anécdotas
3. Ir directo a lo esencial de cada slide

**Orden de prioridad para recortar:**
- ❌ Slide 8 (Integraciones) - 30s
- ❌ BEAT 3 de Slide 9 (Transparencia) - 20s
- ❌ Anécdotas y ejemplos adicionales - 20s
- ❌ BEAT 4 de Slide 4 (Interoperabilidad) - 10s

**Total recortado:** 1m 20s → Presentación de 12m 40s

### Si te dicen "termina YA"
1. Saltar a Slide 12 inmediatamente
2. Decir: "Para no extenderme, voy directo a los recursos"
3. Mostrar QR code
4. Agradecer

### Si hay problemas técnicos (PPTX no abre)
1. **Backup PDF** en USB
2. **Lista de bullets impresa** para hablar sin slides
3. **Mantener la calma** - la audiencia te respeta más si manejas bien la crisis

---

## 🎤 Consejos Finales

### Lenguaje Corporal
- **Manos visibles** - gestos naturales ayudan
- **No cruces brazos** - postura abierta
- **Contacto visual** - barrido de la audiencia, no claves la mirada
- **Sonríe** - especialmente en slide 1 y 12

### Energía
- **Varía el tono** - no hables monótono
- **Baja la velocidad** en conceptos técnicos (NIPs, MCP)
- **Sube la energía** en llamados a la acción (slide 12)
- **Pausas estratégicas** - después de preguntas retóricas

### Contenido
- **No leas las slides** - la audiencia sabe leer
- **Cuenta historias** - ejemplos concretos > conceptos abstractos
- **Usa números** - "10,000 dólares", "1000 sats/mes" - concreto
- **Repite conceptos clave** - "permisos granulares", "sin custodia"

### Manejo de Preguntas
Si alguien interrumpe:
- **"Excelente pregunta, voy a abordar eso en slide X"**
- O: **"Déjame terminar este punto y vuelvo a tu pregunta"**
- Si no sabes: **"No tengo la respuesta ahora, pero conectemos después"**

### El Día de la Presentación
- ✅ Llega 15 minutos antes
- ✅ Prueba el PPTX en la laptop del evento
- ✅ Prueba el control remoto (si hay)
- ✅ Identifica salidas de emergencia (para tu nerviosismo)
- ✅ Ve al baño antes
- ✅ Respira hondo 3 veces antes de subir
- ✅ Recuerda: la audiencia QUIERE que tengas éxito

---

## 🏆 Checklist Final (Día -1)

- [ ] He practicado el guión completo 3+ veces
- [ ] Mi timing promedio está en 13:30 - 14:30
- [ ] Conozco las transiciones de memoria
- [ ] Sé qué puedo saltar si me paso de tiempo
- [ ] Tengo PDF backup en USB
- [ ] Tengo QR codes descargados por separado (backup)
- [ ] Conozco los 3 conceptos clave que NO puedo olvidar:
  - ✅ NWC = OAuth descentralizado para Lightning
  - ✅ Permisos granulares = control total del usuario
  - ✅ Ecosistema real en producción (LaWallet, Alby, BTCPayServer)

---

**¡Éxito en LABITCONF 2025!** 🚀⚡

Creado: 2025-10-22
Versión: 1.0
