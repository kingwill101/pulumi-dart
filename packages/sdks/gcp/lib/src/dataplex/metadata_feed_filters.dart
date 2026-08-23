// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MetadataFeedFilters {
  /// The aspect types that you want to listen to. Depending on how the aspect is attached to the entry, in the format: projects/{project_id_or_number}/locations/{location}/aspectTypes/{aspect_type_id}.
  final pulumi.Input<List<String>>? aspectTypes;
  /// The type of change that you want to listen to. If not specified, all changes are published.
  final pulumi.Input<List<String>>? changeTypes;
  /// The entry types that you want to listen to, specified as relative resource names in the format projects/{project_id_or_number}/locations/{location}/entryTypes/{entry_type_id}. Only entries that belong to the specified entry types are published.
  final pulumi.Input<List<String>>? entryTypes;

  /// Creates a new [MetadataFeedFilters].
  /// [aspectTypes] The aspect types that you want to listen to. Depending on how the aspect is attached to the entry, in the format: projects/{project_id_or_number}/locations/{location}/aspectTypes/{aspect_type_id}.
  /// [changeTypes] The type of change that you want to listen to. If not specified, all changes are published.
  /// [entryTypes] The entry types that you want to listen to, specified as relative resource names in the format projects/{project_id_or_number}/locations/{location}/entryTypes/{entry_type_id}. Only entries that belong to the specified entry types are published.
  const MetadataFeedFilters({
    this.aspectTypes,
    this.changeTypes,
    this.entryTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aspectTypes': ?aspectTypes,
      'changeTypes': ?changeTypes,
      'entryTypes': ?entryTypes,
    };
  }

  factory MetadataFeedFilters.fromMap(Map<String, dynamic> map) {
    return MetadataFeedFilters(
      aspectTypes: (() { final guardedValue = map['aspectTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      changeTypes: (() { final guardedValue = map['changeTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      entryTypes: (() { final guardedValue = map['entryTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
