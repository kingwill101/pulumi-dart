// lib/builder.dart

import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:analyzer/dart/element/element.dart';

import 'src/resource/resource_annotations.dart';

class ResourceGenerator extends GeneratorForAnnotation<PulumiResource> {
  @override
  String generateForAnnotatedElement(
    Element element,
    ConstantReader annotation,
    BuildStep buildStep,
  ) {
    if (element is! ClassElement) {
      throw InvalidGenerationSourceError(
        'PulumiResource annotation can only be applied to classes.',
      );
    }

    final className = element.name;

    return '''
      // Generated code - do not modify by hand

      // This is mainly for documentation and type checking purposes
      $className create$className(String name, Map<String, Input<dynamic>> props, ResourceOptions options) {
        return $className(name, props, options);
      }
    ''';
  }
}

Builder resourceGenerator(BuilderOptions options) =>
    SharedPartBuilder([ResourceGenerator()], 'resource');
