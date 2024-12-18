
import 'package:flutter/material.dart';
import 'package:greelow/configs/config.dart';
import 'package:greelow/modules/home/bloc/home_bloc.dart';
import 'package:greelow/modules/home/presenter/widgets/contact_list.dart';
import 'package:greelow/shared/widgets/icon_from_svg.dart';

import 'widgets/tiles_container.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView ({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (BuildContext context) =>
      HomeBloc()
        ..add(const InitialHomeEvent()),
      child: const _View(),
    );
  }
}

class _View extends StatelessWidget {
  const _View();

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      listener: (context, state) {
      },
      child: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if(state is HomeInitial){
            return Scaffold(
              appBar: AppBar(
                  actions: [
                    const Padding(
                      padding: EdgeInsets.only(right: 20.0),
                      child: IconFromSVG(
                        icon: 'bell',
                        size: 30,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: IconFromSVG(
                        icon: 'dialog',
                        size: 30,
                        color: MyColors.myOrange,
                      ),
                    ),
                  ]
              ),
              body: Stack(
                children: [
                  SizedBox(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height / 2.5,
                    child: const TilesContainer(title: 'Mover dinero',),
                  ),
                  DraggableScrollableSheet(
                    initialChildSize: 0.55,
                    minChildSize: 0.55,
                    maxChildSize: 1,
                    builder: (context, scrollController) {
                      return Container(
                        decoration: const BoxDecoration(
                          color: Color(0xff2A2D32),
                          borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20)),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              offset: Offset(0, -5),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.0, vertical: 10.0),
                              child: Text('Contactos', textAlign: TextAlign.start,
                                style: TextStyle(fontSize: 24,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0),
                              child: Row(
                                  children: [
                                    Icon(Icons.add, color: MyColors.myOrange,
                                      size: 24,),
                                    const SizedBox(width: 10,),
                                    Text('Nuevo', textAlign: TextAlign.start,
                                      style: TextStyle(fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                          color: MyColors.myOrange),),
                                  ]
                              ),
                            ),
                            const SizedBox(height: 15,),
                            const Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text(
                                'Favoritos',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                            ContactList(contacts: state.favList, scrollController: scrollController,),
                            const SizedBox(height: 25,),
                            const Padding(
                              padding: EdgeInsets.all(15.0),
                              child: Text(
                                'Guardados',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                            ContactList(contacts: state.savedList, scrollController: scrollController,),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            );
          }
         else {
           return Container();
         }
        }
    );
  }
}




