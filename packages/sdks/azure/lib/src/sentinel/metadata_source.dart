// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MetadataSource {
  /// The id of the content source, the solution ID, Log Analytics Workspace name etc.
  final pulumi.Input<String>? id;
  /// The kind of the content source. Possible values are `Community`, `LocalWorkspace`, `Solution` and `SourceRepository`.
  final pulumi.Input<String> kind;
  /// The name of the content source, repo name, solution name, Log Analytics Workspace name, etc.
  final pulumi.Input<String>? name;

  /// Creates a new [MetadataSource].
  /// [id] The id of the content source, the solution ID, Log Analytics Workspace name etc.
  /// [kind] The kind of the content source. Possible values are `Community`, `LocalWorkspace`, `Solution` and `SourceRepository`.
  /// [name] The name of the content source, repo name, solution name, Log Analytics Workspace name, etc.
  const MetadataSource({
    this.id,
    required this.kind,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'kind': kind,
      'name': ?name,
    };
  }

  factory MetadataSource.fromMap(Map<String, dynamic> map) {
    return MetadataSource(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

