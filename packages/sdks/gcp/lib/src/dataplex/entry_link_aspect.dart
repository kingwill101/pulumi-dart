// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entry_link_aspect_aspect.dart';

class EntryLinkAspect {
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<EntryLinkAspectAspect> aspect;
  /// The map keys of the Aspects which the service should modify.
  /// It should be the aspect type reference in the format `{project_number}.{location_id}.{aspect_type_id}`.
  final pulumi.Input<String> aspectKey;

  /// Creates a new [EntryLinkAspect].
  /// [aspect] A nested object resource.
  /// [aspectKey] The map keys of the Aspects which the service should modify.
  const EntryLinkAspect({
    required this.aspect,
    required this.aspectKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aspect': pulumi.Input.mapInputValue<EntryLinkAspectAspect, Map<String, dynamic>>(aspect, (value) => value.toMap()),
      'aspectKey': aspectKey,
    };
  }

  factory EntryLinkAspect.fromMap(Map<String, dynamic> map) {
    return EntryLinkAspect(
      aspect: pulumi.Input.fromValue(EntryLinkAspectAspect.fromMap((map['aspect']! as Map).cast<String, dynamic>())),
      aspectKey: pulumi.Input.fromValue(map['aspectKey'] as String),
    );
  }
}
