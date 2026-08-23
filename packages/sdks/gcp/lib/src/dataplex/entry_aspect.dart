// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry_aspect_aspect.dart';

class EntryAspect {
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<EntryAspectAspect> aspect;
  /// Depending on how the aspect is attached to the entry, the format of the aspect key can be one of the following:
  /// If the aspect is attached directly to the entry: {project_number}.{locationId}.{aspectTypeId}
  /// If the aspect is attached to an entry's path: {project_number}.{locationId}.{aspectTypeId}@{path}
  final pulumi.Input<String> aspectKey;

  /// Creates a new [EntryAspect].
  /// [aspect] A nested object resource.
  /// [aspectKey] Depending on how the aspect is attached to the entry, the format of the aspect key can be one of the following:
  const EntryAspect({
    required this.aspect,
    required this.aspectKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aspect': pulumi.Input.mapInputValue<EntryAspectAspect, Map<String, dynamic>>(aspect, (value) => value.toMap()),
      'aspectKey': aspectKey,
    };
  }

  factory EntryAspect.fromMap(Map<String, dynamic> map) {
    return EntryAspect(
      aspect: pulumi.Input.fromValue(EntryAspectAspect.fromMap((map['aspect']! as Map).cast<String, dynamic>())),
      aspectKey: pulumi.Input.fromValue(map['aspectKey'] as String),
    );
  }
}
