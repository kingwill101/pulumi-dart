// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ZeroTrustDlpSensitivityLevelOrder resources.
class ZeroTrustDlpSensitivityLevelOrderState {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<List<String>?>? levelIds;
  final pulumi.Input<String?>? sensitivityGroupId;

  /// Creates a new [ZeroTrustDlpSensitivityLevelOrderState].
  /// [accountId] Optional.
  /// [levelIds] Optional.
  /// [sensitivityGroupId] Optional.
  const ZeroTrustDlpSensitivityLevelOrderState({
    this.accountId,
    this.levelIds,
    this.sensitivityGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'levelIds': ?levelIds,
      'sensitivityGroupId': ?sensitivityGroupId,
    };
  }

  factory ZeroTrustDlpSensitivityLevelOrderState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpSensitivityLevelOrderState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      levelIds: (() { final guardedValue = map['levelIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      sensitivityGroupId: (() { final guardedValue = map['sensitivityGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
