// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dlp_data_class_sensitivity_level.dart';

/// Input properties used for looking up and filtering ZeroTrustDlpDataClass resources.
class ZeroTrustDlpDataClassState {
  final pulumi.Input<String?>? accountId;
  final pulumi.Input<String?>? createdAt;
  final pulumi.Input<List<String>?>? dataTags;
  final pulumi.Input<String?>? description;
  final pulumi.Input<String?>? expression;
  final pulumi.Input<String?>? name;
  final pulumi.Input<List<ZeroTrustDlpDataClassSensitivityLevel>?>? sensitivityLevels;
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [ZeroTrustDlpDataClassState].
  /// [accountId] Optional.
  /// [createdAt] Optional.
  /// [dataTags] Optional.
  /// [description] Optional.
  /// [expression] Optional.
  /// [name] Optional.
  /// [sensitivityLevels] Optional.
  /// [updatedAt] Optional.
  const ZeroTrustDlpDataClassState({
    this.accountId,
    this.createdAt,
    this.dataTags,
    this.description,
    this.expression,
    this.name,
    this.sensitivityLevels,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAt': ?createdAt,
      'dataTags': ?dataTags,
      'description': ?description,
      'expression': ?expression,
      'name': ?name,
      'sensitivityLevels': ?pulumi.Input.mapOptionalInputValue<List<ZeroTrustDlpDataClassSensitivityLevel>, List<Map<String, dynamic>>>(sensitivityLevels, (value) => pulumi.Input.encodeList<ZeroTrustDlpDataClassSensitivityLevel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updatedAt': ?updatedAt,
    };
  }

  factory ZeroTrustDlpDataClassState.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpDataClassState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataTags: (() { final guardedValue = map['dataTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sensitivityLevels: (() { final guardedValue = map['sensitivityLevels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDlpDataClassSensitivityLevel>(guardedValue, (value) => ZeroTrustDlpDataClassSensitivityLevel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
