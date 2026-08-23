// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The original source of the content item, where it comes from.
class MetadataSourceResponse {
  /// Source type of the content
  final pulumi.Input<String> kind;
  /// Name of the content source.  The repo name, solution name, LA workspace name etc.
  final pulumi.Input<String>? name;
  /// ID of the content source.  The solution ID, workspace ID, etc
  final pulumi.Input<String>? sourceId;

  /// Creates a new [MetadataSourceResponse].
  /// [kind] Source type of the content
  /// [name] Name of the content source.  The repo name, solution name, LA workspace name etc.
  /// [sourceId] ID of the content source.  The solution ID, workspace ID, etc
  const MetadataSourceResponse({
    required this.kind,
    this.name,
    this.sourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'name': ?name,
      'sourceId': ?sourceId,
    };
  }

  factory MetadataSourceResponse.fromMap(Map<String, dynamic> map) {
    return MetadataSourceResponse(
      kind: pulumi.Input.fromValue(map['kind'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceId: (() { final guardedValue = map['sourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
