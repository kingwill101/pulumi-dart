// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZeroTrustDlpSensitivityLevel resources.
class ZeroTrustDlpSensitivityLevelState {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? createdAt;
  final pulumi.Input<String?>? description;
  final pulumi.Input<String?>? name;
  final pulumi.Input<String?>? sensitivityGroupId;
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [ZeroTrustDlpSensitivityLevelState].
  /// [accountId] Optional.
  /// [createdAt] Optional.
  /// [description] Optional.
  /// [name] Optional.
  /// [sensitivityGroupId] Optional.
  /// [updatedAt] Optional.
  const ZeroTrustDlpSensitivityLevelState({
    this.accountId,
    this.createdAt,
    this.description,
    this.name,
    this.sensitivityGroupId,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'description': ?description,
      'name': ?name,
      'sensitivityGroupId': ?sensitivityGroupId,
      'updatedAt': ?updatedAt,
    };
  }

  factory ZeroTrustDlpSensitivityLevelState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpSensitivityLevelState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sensitivityGroupId: (() { final guardedValue = map['sensitivityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
