// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zero_trust_dlp_data_class_sensitivity_level.dart';

/// {@template pulumi_index_zero_trust_dlp_data_class_zero_trust_dlp_data_class_args_doc}
/// The set of arguments for ZeroTrustDlpDataClass.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_dlp_data_class_zero_trust_dlp_data_class_args_doc}
class ZeroTrustDlpDataClassArgs {
  final pulumi.Input<String> accountId;
  final pulumi.Input<List<String>> dataTags;
  final pulumi.Input<String?>? description;
  final pulumi.Input<String> expression;
  final pulumi.Input<String> name;
  final pulumi.Input<List<ZeroTrustDlpDataClassSensitivityLevel>> sensitivityLevels;

  /// Creates a new [ZeroTrustDlpDataClassArgs].
  /// [accountId] Required.
  /// [dataTags] Required.
  /// [description] Optional.
  /// [expression] Required.
  /// [name] Required.
  /// [sensitivityLevels] Required.
  const ZeroTrustDlpDataClassArgs({
    required this.accountId,
    required this.dataTags,
    this.description,
    required this.expression,
    required this.name,
    required this.sensitivityLevels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'dataTags': dataTags,
      'description': ?description,
      'expression': expression,
      'name': name,
      'sensitivityLevels': pulumi.Input.mapInputValue<List<ZeroTrustDlpDataClassSensitivityLevel>, List<Map<String, dynamic>>>(sensitivityLevels, (value) => pulumi.Input.encodeList<ZeroTrustDlpDataClassSensitivityLevel, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ZeroTrustDlpDataClassArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustDlpDataClassArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      dataTags: pulumi.Input.fromValue((map['dataTags'] as List).cast<String>()),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expression: pulumi.Input.fromValue(map['expression'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      sensitivityLevels: pulumi.Input.fromValue(pulumi.Input.decodeList<ZeroTrustDlpDataClassSensitivityLevel>(map['sensitivityLevels']!, (value) => ZeroTrustDlpDataClassSensitivityLevel.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
