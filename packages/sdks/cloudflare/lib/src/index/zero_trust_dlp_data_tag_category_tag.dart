// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustDlpDataTagCategoryTag {
  final pulumi.Input<String?>? createdAt;
  final pulumi.Input<String?>? description;
  final pulumi.Input<String?>? id;
  final pulumi.Input<String?>? name;
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [ZeroTrustDlpDataTagCategoryTag].
  /// [createdAt] Optional.
  /// [description] Optional.
  /// [id] Optional.
  /// [name] Optional.
  /// [updatedAt] Optional.
  const ZeroTrustDlpDataTagCategoryTag({
    this.createdAt,
    this.description,
    this.id,
    this.name,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'description': ?description,
      'id': ?id,
      'name': ?name,
      'updatedAt': ?updatedAt,
    };
  }

  factory ZeroTrustDlpDataTagCategoryTag.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpDataTagCategoryTag(
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
