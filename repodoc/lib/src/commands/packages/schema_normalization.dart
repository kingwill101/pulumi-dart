import 'dart:convert';
import 'dart:io';

/// Writes a generation-only schema with explicitly configured properties
/// removed from their object type's `required` list.
///
/// The source schema is never modified, so drift checks continue to compare the
/// exact upstream artifact. Every relaxation must name an existing type,
/// property, and required-list entry; stale configuration therefore fails
/// loudly when an upstream schema changes.
void writeNormalizedSchema({
  required File source,
  required File destination,
  required Map<String, List<String>> requiredPropertyRelaxations,
}) {
  final schema = jsonDecode(source.readAsStringSync());
  if (schema is! Map<String, dynamic>) {
    throw const FormatException('Provider schema root must be an object.');
  }
  final types = schema['types'];
  if (types is! Map<String, dynamic>) {
    throw const FormatException(
      'Provider schema must contain an object-valued types field.',
    );
  }

  for (final entry in requiredPropertyRelaxations.entries) {
    final type = types[entry.key];
    if (type is! Map<String, dynamic>) {
      throw FormatException(
        'Schema normalization type does not exist: ${entry.key}',
      );
    }
    final properties = type['properties'];
    final required = type['required'];
    if (properties is! Map<String, dynamic> || required is! List) {
      throw FormatException(
        'Schema normalization type must contain properties and required: ${entry.key}',
      );
    }

    final requiredNames = required.cast<String>().toSet();
    for (final property in entry.value) {
      if (!properties.containsKey(property)) {
        throw FormatException(
          'Schema normalization property does not exist: ${entry.key}.$property',
        );
      }
      if (!requiredNames.remove(property)) {
        throw FormatException(
          'Schema normalization property is no longer required: ${entry.key}.$property',
        );
      }
    }
    type['required'] = [
      for (final property in required.cast<String>())
        if (requiredNames.contains(property)) property,
    ];
  }

  destination.parent.createSync(recursive: true);
  destination.writeAsStringSync(jsonEncode(schema));
}
