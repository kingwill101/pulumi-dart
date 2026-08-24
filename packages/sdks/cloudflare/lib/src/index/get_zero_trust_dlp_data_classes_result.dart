// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dlp_data_classes_result_sensitivity_level.dart';

class GetZeroTrustDlpDataClassesResult {
  final pulumi.Input<String> createdAt;
  final pulumi.Input<List<String>> dataTags;
  final pulumi.Input<String> description;
  final pulumi.Input<String> expression;
  final pulumi.Input<String> id;
  final pulumi.Input<String> name;
  final pulumi.Input<List<GetZeroTrustDlpDataClassesResultSensitivityLevel>> sensitivityLevels;
  final pulumi.Input<String> updatedAt;

  /// Creates a new [GetZeroTrustDlpDataClassesResult].
  /// [createdAt] Required.
  /// [dataTags] Required.
  /// [description] Required.
  /// [expression] Required.
  /// [id] Required.
  /// [name] Required.
  /// [sensitivityLevels] Required.
  /// [updatedAt] Required.
  const GetZeroTrustDlpDataClassesResult({
    required this.createdAt,
    required this.dataTags,
    required this.description,
    required this.expression,
    required this.id,
    required this.name,
    required this.sensitivityLevels,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'dataTags': dataTags,
      'description': description,
      'expression': expression,
      'id': id,
      'name': name,
      'sensitivityLevels': pulumi.Input.mapInputValue<List<GetZeroTrustDlpDataClassesResultSensitivityLevel>, List<Map<String, dynamic>>>(sensitivityLevels, (value) => pulumi.Input.encodeList<GetZeroTrustDlpDataClassesResultSensitivityLevel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'updatedAt': updatedAt,
    };
  }

  factory GetZeroTrustDlpDataClassesResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpDataClassesResult(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      dataTags: pulumi.Input.fromValue((map['dataTags'] as List).cast<String>()),
      description: pulumi.Input.fromValue(map['description'] as String),
      expression: pulumi.Input.fromValue(map['expression'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      sensitivityLevels: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustDlpDataClassesResultSensitivityLevel>(map['sensitivityLevels']!, (value) => GetZeroTrustDlpDataClassesResultSensitivityLevel.fromMap((value as Map).cast<String, dynamic>()))),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}
