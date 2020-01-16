


import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {


  final estiloTitulo = TextStyle (
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold
                  );

  final estiloSubTitulo = TextStyle (
                    fontSize: 18.0,
                    color: Colors.grey
                  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

        child: Column(
          children: <Widget>[

          
          _crearImagen(),

          _crearTitulo(),

          _crearAcciones(),
          _crearTexto(),

          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),

          
                  ],
        ),
                ),
                
              );
            }
          
            Widget _crearImagen (){
          
              return Container(
                width: double.infinity,

                child: Image(
                   image: NetworkImage('https://images.unsplash.com/photo-1419064642531-e575728395f2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80'),

                   height: 170.0,
                   fit: BoxFit.cover,
          
                ),
              );
            }
          
          
          
            Widget _crearTitulo(){
              return  SafeArea(
                child: Container(
                          padding: EdgeInsets.symmetric(
                          horizontal: 20.0,
                          vertical: 15.0,     
                          
                        ),
                        child: Row(
                          children: <Widget>[ 
          
          
                            Expanded(
                              child: Column(
                   
                                       crossAxisAlignment: CrossAxisAlignment.start,                
                                children: <Widget>[
                                  Text('Sihri lanka', 
                                        style: estiloTitulo,
                                        ),
          
                              SizedBox( height: 7.0),
          
                                  Text(' the best un lago un lago ',
                                        style: estiloSubTitulo,
          
                                        ),
          
                                ],
                              ),
                            ),
          
          
                            Icon(Icons.star,
                            color: Colors.yellow,
                            
                            size: 30.0,
          
                            ),
          
                            Text('41',
                             style: TextStyle(
                               fontSize: 20.0
                             ),
                             )
          
                          ],
                        ),
                      ),
              );
            }
          
    Widget _crearAcciones() {
      return  Row(

         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[

          _accion(Icons.call,'Call'),
          _accion(Icons.near_me, 'Route'),
          _accion( Icons.share, 'Share'),
          // _accion(),


        ],
      );
    }

    Widget _accion (IconData icon , String texto){
      return  Column(

            children: <Widget>[
              Icon(icon,
                color: Colors.blue,
                size: 40.0,
              ),

              SizedBox(height: 2.0),
              Text( texto,
               style: TextStyle(
                 fontSize: 15.0,
                 color: Colors.blue
               ),
              ),
            ],
          );
    }

  _crearTexto() { 

    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 40.0,
          vertical:5.0,

        ),
        child: Text(
          
          'Aliquip laborum dolor exercitation do sunt proident eu ullamco excepteur. Id nostrud duis esse aliqua cillum anim occaecat duis aliqua excepteur laboris incididunt minim est. Ad nisi anim fugiat aliqua consequat deserunt cillum consequat tempor eu et dolor labore eu. Voluptate commodo laboris ea fugiat irure enim sunt. Occaecat magna non fugiat consequat reprehenderit ut velit. Excepteur aute cillum esse magna irure id aliqua sit aliqua sunt amet non aute.',
          textAlign: TextAlign.justify,
          style: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}