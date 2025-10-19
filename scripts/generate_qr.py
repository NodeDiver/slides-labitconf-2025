#!/usr/bin/env python3
"""
Genera QR codes para los recursos de la presentación NWC.
Los QR codes se guardan en assets/ para incluir en las slides.
"""

import qrcode
from pathlib import Path

# Directorio de salida
ASSETS_DIR = Path(__file__).parent.parent / 'assets'
ASSETS_DIR.mkdir(exist_ok=True)

# URLs para generar QR codes
RESOURCES = {
    'nip47': {
        'url': 'https://github.com/nostr-protocol/nips/blob/master/47.md',
        'filename': 'qr-nip47.png',
        'description': 'NIP-47 (Nostr Wallet Connect)'
    },
    'alby': {
        'url': 'https://getalby.com',
        'filename': 'qr-alby.png',
        'description': 'Alby - NWC Wallet'
    },
    'nostr': {
        'url': 'https://nostr.com',
        'filename': 'qr-nostr.png',
        'description': 'Nostr Protocol'
    },
    # Agregar más URLs según necesites
    # 'repo': {
    #     'url': 'https://github.com/tuusuario/turepo',
    #     'filename': 'qr-repo.png',
    #     'description': 'Repositorio de ejemplos'
    # },
}


def generate_qr(url, output_path, box_size=10, border=2):
    """Genera un QR code para una URL"""
    qr = qrcode.QRCode(
        version=1,
        error_correction=qrcode.constants.ERROR_CORRECT_L,
        box_size=box_size,
        border=border,
    )
    qr.add_data(url)
    qr.make(fit=True)

    img = qr.make_image(fill_color="black", back_color="white")
    img.save(output_path)
    print(f"✅ QR generado: {output_path.name} → {url}")


def main():
    """Genera todos los QR codes"""
    print("🎨 Generando QR codes para recursos de la presentación...\n")

    for key, resource in RESOURCES.items():
        url = resource['url']
        filename = resource['filename']
        output_path = ASSETS_DIR / filename

        print(f"📱 {resource['description']}")
        generate_qr(url, output_path)
        print()

    print(f"✅ {len(RESOURCES)} QR codes generados en {ASSETS_DIR}/")
    print("\nPara agregar a las slides:")
    print("1. Abre el PPTX generado")
    print("2. Inserta las imágenes QR desde assets/")
    print("3. Ajusta tamaño y posición según el layout")


if __name__ == '__main__':
    main()
