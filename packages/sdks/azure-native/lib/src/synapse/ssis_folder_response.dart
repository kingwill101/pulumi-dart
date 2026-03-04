// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Ssis folder.
class SsisFolderResponse {
  /// Metadata description.
  final pulumi.Input<String>? description;

  /// Metadata id.
  final pulumi.Input<double>? id;

  /// Metadata name.
  final pulumi.Input<String>? name;

  /// The type of SSIS object metadata.
  /// Expected value is 'Folder'.
  final pulumi.Input<String> type;

  /// Creates a new [SsisFolderResponse].
  /// [description] Metadata description.
  /// [id] Metadata id.
  /// [name] Metadata name.
  /// [type] The type of SSIS object metadata.
  SsisFolderResponse({
    this.description,
    this.id,
    this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'type': type,
    };
  }

  factory SsisFolderResponse.fromMap(Map<String, dynamic> map) {
    return SsisFolderResponse(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
