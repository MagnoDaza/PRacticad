import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prueba_2/data/json.dart';

class SliverPage extends StatelessWidget {
  const SliverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          _AppBarPrincipal(),
          SliverList(
              delegate: SliverChildListDelegate([
            _BodySliver(),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 500,
              color: Colors.red,
            )
          ])),
        ],
      ),
    );
  }
}

class _AppBarPrincipal extends StatelessWidget {
  const _AppBarPrincipal();

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      // backgroundColor: AppTheme.primary,
      floating: false,
      pinned: true,
      expandedHeight: 1000,

      flexibleSpace: FlexibleSpaceBar(
        background: Image(
          image: NetworkImage(
              'https://images.unsplash.com/photo-1613239860132-5cfcbe4c4a27?q=80&w=1744&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class _BodySliver extends StatelessWidget {
  const _BodySliver({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      // color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 17, vertical: 15),
            decoration: BoxDecoration(
              color: const Color(0xFFF1F1F1),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              'View',
              style: GoogleFonts.notoSans(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            width: 6,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 17, vertical: 15),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Text(
              'Save',
              style: GoogleFonts.notoSans(
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
