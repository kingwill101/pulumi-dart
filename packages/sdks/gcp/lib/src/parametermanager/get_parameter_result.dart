// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_parameter_policy_member.dart';

/// Result data returned by getParameter.
class GetParameterResult {
  final String createTime;
  final Map<String, String> effectiveLabels;
  final String format;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String kmsKey;
  final Map<String, String> labels;
  final String name;
  final String parameterId;
  final List<GetParameterPolicyMember> policyMembers;
  final String? project;
  final Map<String, String> pulumiLabels;
  final String updateTime;

  /// Creates a new [GetParameterResult].
  /// [createTime] Required.
  /// [effectiveLabels] Required.
  /// [format] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKey] Required.
  /// [labels] Required.
  /// [name] Required.
  /// [parameterId] Required.
  /// [policyMembers] Required.
  /// [project] Optional.
  /// [pulumiLabels] Required.
  /// [updateTime] Required.
  GetParameterResult({
    required this.createTime,
    required this.effectiveLabels,
    required this.format,
    required this.id,
    required this.kmsKey,
    required this.labels,
    required this.name,
    required this.parameterId,
    required this.policyMembers,
    this.project,
    required this.pulumiLabels,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'effectiveLabels': effectiveLabels,
      'format': format,
      'id': id,
      'kmsKey': kmsKey,
      'labels': labels,
      'name': name,
      'parameterId': parameterId,
      'policyMembers': pulumi.Input.encodeList<GetParameterPolicyMember, Map<String, dynamic>>(policyMembers, (value) => value.toMap()),
      'project': ?project,
      'pulumiLabels': pulumiLabels,
      'updateTime': updateTime,
    };
  }

  factory GetParameterResult.fromMap(Map<String, dynamic> map) {
    return GetParameterResult(
      createTime: map['createTime'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      format: map['format'] as String,
      id: map['id'] as String,
      kmsKey: map['kmsKey'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      parameterId: map['parameterId'] as String,
      policyMembers: pulumi.Input.decodeList<GetParameterPolicyMember>(map['policyMembers'], (value) => GetParameterPolicyMember.fromMap((value as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : map['project'] as String,
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      updateTime: map['updateTime'] as String,
    );
  }
}

