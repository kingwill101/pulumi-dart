import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';
import 'package:analyzer/dart/element/element.dart';

class PulumiResourceGenerator extends Generator {
  @override
  String generate(LibraryReader library, BuildStep buildStep) {
    final values = <String>[];

    for (var element in library.allElements) {
      if (element is ClassElement &&
          element.allSupertypes.any(
            (type) => type.getDisplayString() == 'Resource',
          )) {
        final resourceType = element
            .getField('_resourceType')
            ?.computeConstantValue()
            ?.toStringValue();
        if (resourceType != null) {
          values.add(_generateForResource(element, resourceType));
        }
      }
    }

    return values.join('\n\n');
  }

  String _generateForResource(ClassElement element, String resourceType) {
    final className = element.name;
    return '''
      // Generated code - do not modify by hand
      extension ${className}Registration on $className {
        static void _register() {
          ResourceRegistry().registerResourceFactory(
            '$resourceType',
            (name, props, options) => $className(name, props, options),
          );
        }
      }
    ''';
  }
}
