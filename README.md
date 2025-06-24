![Banner image](https://user-images.githubusercontent.com/10284570/173569848-c624317f-42b1-45a6-ab09-f0ea3c247648.png)

# n8n - Secure Workflow Automation for Technical Teams

n8n is a workflow automation platform that gives technical teams the flexibility of code with the speed of no-code. With 400+ integrations, native AI capabilities, and a fair-code license, n8n lets you build powerful automations while maintaining full control over your data and deployments.

![n8n.io - Screenshot](https://raw.githubusercontent.com/n8n-io/n8n/master/assets/n8n-screenshot-readme.png)

## Key Capabilities

- **Code When You Need It**: Write JavaScript/Python, add npm packages, or use the visual interface
- **AI-Native Platform**: Build AI agent workflows based on LangChain with your own data and models
- **Full Control**: Self-host with our fair-code license or use our [cloud offering](https://app.n8n.cloud/login)
- **Enterprise-Ready**: Advanced permissions, SSO, and air-gapped deployments
- **Active Community**: 400+ integrations and 900+ ready-to-use [templates](https://n8n.io/workflows)

## Quick Start

Try n8n instantly with [npx](https://docs.n8n.io/hosting/installation/npm/) (requires [Node.js](https://nodejs.org/en/)):

```
npx n8n
```

Or deploy with [Docker](https://docs.n8n.io/hosting/installation/docker/):

```
docker volume create n8n_data
docker run -it --rm --name n8n -p 5678:5678 -v n8n_data:/home/node/.n8n docker.n8n.io/n8nio/n8n
```

Access the editor at http://localhost:5678

## Resources

- 📚 [Documentation](https://docs.n8n.io)
- 🔧 [400+ Integrations](https://n8n.io/integrations)
- 💡 [Example Workflows](https://n8n.io/workflows)
- 🤖 [AI & LangChain Guide](https://docs.n8n.io/langchain/)
- 👥 [Community Forum](https://community.n8n.io)
- 📖 [Community Tutorials](https://community.n8n.io/c/tutorials/28)

## Support

Need help? Our community forum is the place to get support and connect with other users:
[community.n8n.io](https://community.n8n.io)

## License

n8n is [fair-code](https://faircode.io) distributed under the [Sustainable Use License](https://github.com/n8n-io/n8n/blob/master/LICENSE.md) and [n8n Enterprise License](https://github.com/n8n-io/n8n/blob/master/LICENSE_EE.md).

- **Source Available**: Always visible source code
- **Self-Hostable**: Deploy anywhere
- **Extensible**: Add your own nodes and functionality

[Enterprise licenses](mailto:license@n8n.io) available for additional features and support.

Additional information about the license model can be found in the [docs](https://docs.n8n.io/reference/license/).

## Contributing

Found a bug 🐛 or have a feature idea ✨? Check our [Contributing Guide](https://github.com/n8n-io/n8n/blob/master/CONTRIBUTING.md) to get started.

## Join the Team

Want to shape the future of automation? Check out our [job posts](https://n8n.io/careers) and join our team!

## What does n8n mean?

**Short answer:** It means "nodemation" and is pronounced as n-eight-n.

**Long answer:** "I get that question quite often (more often than I expected) so I decided it is probably best to answer it here. While looking for a good name for the project with a free domain I realized very quickly that all the good ones I could think of were already taken. So, in the end, I chose nodemation. 'node-' in the sense that it uses a Node-View and that it uses Node.js and '-mation' for 'automation' which is what the project is supposed to help with. However, I did not like how long the name was and I could not imagine writing something that long every time in the CLI. That is when I then ended up on 'n8n'." - **Jan Oberhauser, Founder and CEO, n8n.io**


# **n8n Deployment en Render**

Este repositorio contiene una configuración optimizada para deployar [n8n](https://n8n.io) (herramienta de automatización de workflows) en [Render](https://render.com) usando Docker.

## 🚀 Deploy Rápido

[![Deploy to Render](https://render.com/images/deploy-to-render-button.svg)](https://render.com)

**URL de ejemplo**: [https://n8n-btme.onrender.com](https://n8n-btme.onrender.com)

## 📋 Requisitos

- Cuenta en [GitHub](https://github.com)
- Cuenta en [Render](https://render.com) (plan gratuito disponible)
- Fork de este repositorio

## 🛠️ Instrucciones de Deployment

### 1. Fork del Repositorio

1. Haz clic en **"Fork"** en la esquina superior derecha
2. Selecciona tu cuenta/organización
3. Crear fork

### 2. Verificar Archivos de Configuración

Este repositorio ya incluye los archivos necesarios:

#### `Dockerfile`
```dockerfile
FROM n8nio/n8n:latest

EXPOSE 5678
```

#### `.dockerignore`
```
**/*.md
**/.env
.cache
assets
node_modules
packages/node-dev
packages/**/node_modules
packages/**/dist
packages/**/.turbo
packages/**/*.test.*
.git
.gitignore
.github
.env
.nyc_output
coverage
!.github/scripts
*.tsbuildinfo
packages/cli/dist/**/e2e.*
docker/compose
docker/**/Dockerfile
.vscode
cypress
test-workflows
README.md
```

### 3. Configurar en Render

1. Ve a [render.com](https://render.com) y haz login
2. **New** → **Web Service**
3. **"Connect a repository"** → selecciona tu fork
4. Configuración:
   - **Name**: `tu-nombre-de-app` (ej: `mi-n8n`)
   - **Language**: **Docker**
   - **Branch**: `main`
   - **Dockerfile Path**: `./Dockerfile`
   - **Instance Type**: **Free** (512MB) o **Starter** ($7/mes)

### 4. Variables de Entorno

En Render, agrega estas variables de entorno (**importante**: reemplaza `tu-nombre-de-app` con el nombre real de tu servicio):

| Variable | Valor |
|----------|-------|
| `N8N_HOST` | `0.0.0.0` |
| `N8N_PORT` | `5678` |
| `N8N_PROTOCOL` | `https` |
| `N8N_EDITOR_BASE_URL` | `https://tu-nombre-de-app.onrender.com` |
| `WEBHOOK_URL` | `https://tu-nombre-de-app.onrender.com` |
| `GENERIC_TIMEZONE` | `America/Guayaquil` |
| `DB_TYPE` | `sqlite` |
| `N8N_SECURE_COOKIE` | `false` |
| `N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS` | `false` |
| `N8N_RUNNERS_ENABLED` | `true` |

### 5. Deploy

1. Haz clic en **"Create Web Service"**
2. Espera 3-5 minutos para el build y deployment
3. Accede a tu aplicación en `https://tu-nombre-de-app.onrender.com`

### 6. Configuración Inicial de n8n

1. Abre tu aplicación en el navegador
2. Completa el formulario de configuración inicial:
   - **Email**: tu correo electrónico
   - **First Name**: tu nombre
   - **Last Name**: tu apellido
   - **Password**: contraseña segura (8+ caracteres, 1 número, 1 mayúscula)
3. ¡Listo para crear workflows!

## 💡 Características

- ✅ **Docker optimizado** para Render
- ✅ **Base de datos SQLite** persistente
- ✅ **HTTPS** habilitado automáticamente
- ✅ **Plan gratuito** disponible (512MB RAM)
- ✅ **Fácil escalabilidad** a planes pagos
- ✅ **Variables de entorno** pre-configuradas

## 🔧 Planes Recomendados

| Plan | RAM | CPU | Precio | Recomendado para |
|------|-----|-----|--------|------------------|
| **Free** | 512MB | 0.1 | $0/mes | Testing, proyectos personales |
| **Starter** | 512MB | 0.5 | $7/mes | Proyectos pequeños |
| **Standard** | 2GB | 1 | $25/mes | Uso profesional |

## 🐛 Solución de Problemas

### Error de memoria durante build
Si ves errores como `ERR_WORKER_OUT_OF_MEMORY`:
- Upgrade a plan **Starter** o superior
- El plan gratuito (512MB) puede ser insuficiente para builds complejos

### n8n no carga
- Verifica que las variables de entorno estén correctamente configuradas
- Asegúrate de que `N8N_EDITOR_BASE_URL` use tu URL real de Render

### Problemas de webhooks
- Confirma que `WEBHOOK_URL` apunte a tu dominio de Render
- Verifica que `N8N_PROTOCOL` esté en `https`

## 📖 Documentación Adicional

- [Documentación oficial de n8n](https://docs.n8n.io/)
- [Guía de deployment en Render](https://render.com/docs)
- [Variables de entorno de n8n](https://docs.n8n.io/hosting/configuration/)

## 🤝 Contribuciones

¡Las contribuciones son bienvenidas! Por favor:

1. Haz fork del proyecto
2. Crea una rama para tu feature (`git checkout -b feature/nueva-caracteristica`)
3. Commit tus cambios (`git commit -am 'Agrega nueva característica'`)
4. Push a la rama (`git push origin feature/nueva-caracteristica`)
5. Abre un Pull Request

## 📄 Licencia

Este proyecto está basado en [n8n](https://github.com/n8n-io/n8n) que usa la licencia [Sustainable Use License](https://github.com/n8n-io/n8n/blob/master/LICENSE.md).

## ⭐ Soporte

Si este repositorio te fue útil, ¡considera darle una estrella! ⭐

Para problemas o preguntas:
- Abre un [Issue](../../issues)
- Consulta la [documentación oficial](https://docs.n8n.io/)

---

**¡Automatiza tus workflows con n8n en Render!** 🚀

