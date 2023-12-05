import 'dart:io';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(const IntencionesScreen());

class IntencionesScreen extends StatefulWidget {
  const IntencionesScreen({super.key});

  @override
  State<IntencionesScreen> createState() => _IntencionesScreenState();
}

class _IntencionesScreenState extends State<IntencionesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Intenciones'),
      ),
      body: ListView(
        children: [
          cardIntention(
            color: const Color(0xCC00FF77),
            icono: Icons.phone,
            nombre: 'Llamada telefónica',
            subtitle: '4131064072',
            evento: () {
              _callPhone(context);
            },
          ),
          cardIntention(
            color: const Color(0xCC00AAFF),
            icono: Icons.sms,
            nombre: 'Enviar SMS',
            subtitle: '4131064072',
            evento: () {
              _sendSMS(context);
            },
          ),
          cardIntention(
            color: const Color(0xCC9A7FF9),
            icono: Icons.vpn_lock,
            nombre: 'Abrir página web',
            subtitle: 'https://celaya.tecnm.mx',
            evento: () {
              _openWeb(context);
            },
          ),
          cardIntention(
            color: const Color(0xCCED5649),
            icono: Icons.email,
            nombre: 'Enviar email',
            subtitle: '21030017@itcelaya.edu.mx',
            evento: () {
              _sendMail(context);
            },
          ),
          cardIntention(
            color: const Color(0xCCFFCC00),
            nombre: "Tomar foto",
            subtitle: "Foto",
            icono: Icons.camera_alt,
            evento: () {
              _takePhoto();
              setState(() {});
            },
          ),
          FractionallySizedBox(
            widthFactor: 0.5,
            child: pathImage != null ? _buildPhotoCard() : Container(),
          ),
        ],
      ),
    );
  }

  Widget _buildPhotoCard() {
    return Card(
      elevation: 15,
      margin: const EdgeInsets.all(8),
      child: Image.file(File(pathImage!),
          width: 300, height: 300, fit: BoxFit.cover),
    );
  }

  Future<void> _callPhone(context) async {
    Uri url = Uri.parse("tel:4131064072");
    if (!await launchUrl(url)) {
      const snackBar = SnackBar(
        content: Text('El número de teléfono no es válido'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  Future<void> _sendSMS(context) async {
    Uri url = Uri.parse("sms:4131064072?body=Hola");
    if (!await launchUrl(url)) {
      const snackBar = SnackBar(
        content: Text('El número de teléfono no es válido'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  Future<void> _openWeb(context) async {
    Uri url = Uri.parse("https://celaya.tecnm.mx");
    if (!await launchUrl(url, mode: LaunchMode.inAppBrowserView)) {
      const snackBar = SnackBar(
        content: Text('El sitio web no es válido'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  Future<void> _sendMail(context) async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: '21030017@itcelaya.edu.mx',
      query: 'subject=Saludos&body=Buen día',
    );

    if (!await launchUrl(params)) {
      const snackBar = SnackBar(
        content: Text('El correo electrónico no es válido'),
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }

  final image = ImagePicker();

  String? pathImage;

  @override
  void initState() {
    super.initState();
  }

  Future<void> _takePhoto() async {
    final archivo = await image.pickImage(source: ImageSource.camera);
    if (archivo != null) {
      setState(() {
        pathImage = archivo.path;
      });
    }
  }

  Widget cardIntention({
    required Color color,
    required String nombre,
    required String subtitle,
    required IconData icono,
    required Function() evento,
  }) {
    return Card(
      margin: const EdgeInsets.all(8),
      color: color,
      elevation: 5,
      child: ListTile(
        onTap: () async {
          bool confirm = await showConfirmationDialog(context);
          if (confirm) {
            evento();
          }
        },
        title: Text(nombre),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.chevron_right),
        leading: Icon(
          icono,
          size: 40,
        ),
      ),
    );
  }

  Future<bool> showConfirmationDialog(BuildContext context) async {
    return await showCupertinoDialog<bool>(
          context: context,
          builder: (BuildContext context) {
            return BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15.0, sigmaY: 15.0),
              child: CupertinoAlertDialog(
                title: const Text('Confirmación'),
                content: const Text(
                  'Este evento se abrirá en una aplicación externa, ¿desea continuar?',
                ),
                actions: [
                  CupertinoDialogAction(
                    onPressed: () {
                      Navigator.of(context).pop(false);
                    },
                    child: const Text(
                      'Cancelar',
                      style: TextStyle(
                        color: Colors.redAccent,
                      ),
                    ),
                  ),
                  CupertinoDialogAction(
                    onPressed: () {
                      Navigator.of(context).pop(true);
                    },
                    child: const Text(
                      'Continuar',
                      style: TextStyle(
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ) ??
        false;
  }
}
