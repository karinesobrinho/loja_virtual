import 'package:flutter/material.dart';

class HomeTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Widget _buildBodyBack()=> Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 211, 118, 130),
            Color.fromARGB(255, 253, 181, 168)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
        )
      ),
    );
    return Stack(
      children: <Widget>[
        _buildBodyBack(),
        CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              elevation: 0,
              floating: true, //flutuante
              snap: true, //barra que some quando se rola a tela
              backgroundColor: Colors.transparent, 
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: const Text('Novidades'),
              ),
            )
          ],
        )
      ],
    );
  }
}