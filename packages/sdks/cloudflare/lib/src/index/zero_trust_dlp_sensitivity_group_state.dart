// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dlp_sensitivity_group_level.dart';

/// Input properties used for looking up and filtering ZeroTrustDlpSensitivityGroup resources.
class ZeroTrustDlpSensitivityGroupState {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? createdAt;
  final pulumi.Input<String?>? description;
  final pulumi.Input<List<ZeroTrustDlpSensitivityGroupLevel>?>? levels;
  final pulumi.Input<String?>? name;
  final pulumi.Input<String?>? templateId;
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [ZeroTrustDlpSensitivityGroupState].
  /// [accountId] Optional.
  /// [createdAt] Optional.
  /// [description] Optional.
  /// [levels] Optional.
  /// [name] Optional.
  /// [templateId] Optional.
  /// [updatedAt] Optional.
  const ZeroTrustDlpSensitivityGroupState({
    this.accountId,
    this.createdAt,
    this.description,
    this.levels,
    this.name,
    this.templateId,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'description': ?description,
      'levels': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustDlpSensitivityGroupLevel>, List<Map<String, dynamic>>>(levels, (value) => pulumi.Input.encodeList<ZeroTrustDlpSensitivityGroupLevel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'templateId': ?templateId,
      'updatedAt': ?updatedAt,
    };
  }

  factory ZeroTrustDlpSensitivityGroupState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpSensitivityGroupState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      levels: (() { final guardedValue = map['levels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDlpSensitivityGroupLevel>(guardedValue, (value) => ZeroTrustDlpSensitivityGroupLevel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateId: (() { final guardedValue = map['templateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
