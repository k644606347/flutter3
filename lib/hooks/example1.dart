// ignore_for_file: omit_local_variable_types
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// An App that demonstrates how to use hooks. It includes examples that cover
/// the hooks provided by this library as well as examples that demonstrate
/// how to write custom hooks.
class Example1 extends HookWidget {
  @override
  Widget build(BuildContext context) {
    useAnimationController(duration: const Duration(seconds: 20));
    return ListView(
      shrinkWrap: true,
      children: [
      _GalleryItem(
        title: 'useState',
        builder: (context) => const Text('s'),
      ),
      _GalleryItem(
        title: 'useMemoize + useStream',
        builder: (context) => const Text('s1'),
      ),
      
      _GalleryItem(
        title: 'Custom Hook Function',
        builder: (context) => const Text('s2'),
      ),
      _GalleryItem(
        title: 'Star Wars Planets',
        builder: (context) => const Text('s3'),
      )
    ]);
  }
}

class _GalleryItem extends StatelessWidget {
  const _GalleryItem({this.title = '', this.builder});

  final String title;
  final WidgetBuilder? builder;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        if (builder != null) {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: builder!,
            ),
          );
        }
      },
    );
  }
}
