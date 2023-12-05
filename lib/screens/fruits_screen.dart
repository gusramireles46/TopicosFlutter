import 'package:flutter/material.dart';
import 'package:topicos2023/screens/carrusel.dart';
import 'package:topicos2023/screens/counter_design.dart';

void main() => runApp(const FruitsScreen());

class FruitsScreen extends StatefulWidget {
  const FruitsScreen({super.key});

  @override
  State<FruitsScreen> createState() => _FruitsScreenState();
}

class _FruitsScreenState extends State<FruitsScreen> {
  bool _isFavorited = true;

  Color colorFondo = const Color(0xFFDCF7EE);
  Color buttonColor = const Color(0xFF006A5C);
  Color buttonTextColor = const Color(0xFFD8F3F4);
  Color containerColor = const Color(0xFF1B1A1F);
  //Color containerColor = Theme.of(context).colorScheme.secondary;
  Color textColor = Colors.white;

  void _toggleFavorite() {
    setState(() {
      _isFavorited = !_isFavorited;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFF1B1A1F)),
        backgroundColor: colorFondo,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
              color: Color(0xFF1B1A1F),
            ),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: colorFondo,
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Carrusel(),
              const SizedBox(
                height: 50,
              ),
              Container(
                decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x55000000),
                      spreadRadius: 2,
                      blurRadius: 20,
                      offset: Offset(0, 7),
                    ),
                  ],
                  //color: containerColor,
                  color: Theme.of(context).colorScheme.background,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                height: 568,
                width: 500,
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          'Mango',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: textColor,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text('Cada uno', style: TextStyle(color: textColor)),
                        const SizedBox(
                          height: 20,
                        ),
                        const CounterDesign(),
                        const SizedBox(
                          height: 30,
                        ),
                        Text(
                          'Descripción del producto',
                          style: TextStyle(
                              fontSize: 24.0, fontWeight: FontWeight.bold, color: textColor),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Un mango es un tipo de fruta. '
                              'El árbol de mango es originario del sur de Asia, desde donde se ha llevado a ser una de las frutas más cultivadas en los trópicos. '
                              'Se cosecha en el mes de marzo (temporada de verano) hasta finales de mayo.',
                          style: TextStyle(
                            letterSpacing: 1.0,
                            fontSize: 16.0,
                            color: textColor,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            ButtonTheme(
                              minWidth: 200,
                              child: Material(
                                color: containerColor,
                                elevation: 10,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: const BorderSide(
                                    color: Color(0xFFFF3355),
                                  ),
                                ),
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: containerColor,
                                    elevation: 0,
                                  ),
                                  onPressed: () {
                                    _toggleFavorite();
                                  },
                                  child: IconButton(
                                    onPressed: () {
                                      _toggleFavorite();
                                    },
                                    icon: _isFavorited
                                        ? const Icon(
                                      Icons.favorite_border,
                                      color: Color(0xFFFF3355),
                                    )
                                        : const Icon(
                                      Icons.favorite,
                                      color: Color(0xFFFF3355),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 30,
                            ),
                            Material(
                              elevation: 10,
                              //color: Color(0xFF33DF5F),
                              color: buttonColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  minimumSize: const Size(260, 70),
                                  //backgroundColor: colorFondo,
                                  elevation: 0,
                                  backgroundColor: Colors.transparent,
                                  //shadowColor: const Color(0xFFFF0000),
                                ),
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.add_shopping_cart,
                                      color: buttonTextColor,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'Agregar al carrito',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: buttonTextColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
