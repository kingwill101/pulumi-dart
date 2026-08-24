// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZeroTrustDlpDataTag resources.
class ZeroTrustDlpDataTagState {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? categoryId;
  final pulumi.Input<String?>? createdAt;
  final pulumi.Input<String?>? description;
  final pulumi.Input<String?>? name;
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [ZeroTrustDlpDataTagState].
  /// [accountId] Optional.
  /// [categoryId] Optional.
  /// [createdAt] Optional.
  /// [description] Optional.
  /// [name] Optional.
  /// [updatedAt] Optional.
  const ZeroTrustDlpDataTagState({
    this.accountId,
    this.categoryId,
    this.createdAt,
    this.description,
    this.name,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'categoryId': ?categoryId,
      'createdAt': ?createdAt,
      'description': ?description,
      'name': ?name,
      'updatedAt': ?updatedAt,
    };
  }

  factory ZeroTrustDlpDataTagState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpDataTagState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      categoryId: (() { final guardedValue = map['categoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
