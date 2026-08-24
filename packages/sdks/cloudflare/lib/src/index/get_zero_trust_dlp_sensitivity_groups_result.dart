// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_dlp_sensitivity_groups_result_level.dart';

class GetZeroTrustDlpSensitivityGroupsResult {
  final pulumi.Input<String> createdAt;
  final pulumi.Input<String> description;
  final pulumi.Input<String> id;
  final pulumi.Input<List<GetZeroTrustDlpSensitivityGroupsResultLevel>> levels;
  final pulumi.Input<String> name;
  final pulumi.Input<String> templateId;
  final pulumi.Input<String> updatedAt;

  /// Creates a new [GetZeroTrustDlpSensitivityGroupsResult].
  /// [createdAt] Required.
  /// [description] Required.
  /// [id] Required.
  /// [levels] Required.
  /// [name] Required.
  /// [templateId] Required.
  /// [updatedAt] Required.
  const GetZeroTrustDlpSensitivityGroupsResult({
    required this.createdAt,
    required this.description,
    required this.id,
    required this.levels,
    required this.name,
    required this.templateId,
    required this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'description': description,
      'id': id,
      'levels': pulumi.Input.mapInputValue<List<GetZeroTrustDlpSensitivityGroupsResultLevel>, List<Map<String, dynamic>>>(levels, (value) => pulumi.Input.encodeList<GetZeroTrustDlpSensitivityGroupsResultLevel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'templateId': templateId,
      'updatedAt': updatedAt,
    };
  }

  factory GetZeroTrustDlpSensitivityGroupsResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustDlpSensitivityGroupsResult(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      levels: pulumi.Input.fromValue(pulumi.Input.decodeList<GetZeroTrustDlpSensitivityGroupsResultLevel>(map['levels']!, (value) => GetZeroTrustDlpSensitivityGroupsResultLevel.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      templateId: pulumi.Input.fromValue(map['templateId'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
    );
  }
}
