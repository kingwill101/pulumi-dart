// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regional_parameter_policy_member.dart';

/// Result data returned by getRegionalParameter.
class GetRegionalParameterResult {
  final String createTime;
  final Map<String, String> effectiveLabels;
  final String format;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String kmsKey;
  final Map<String, String> labels;
  final String location;
  final String name;
  final String parameterId;
  final List<GetRegionalParameterPolicyMember> policyMembers;
  final String? project;
  final Map<String, String> pulumiLabels;
  final String updateTime;

  /// Creates a new [GetRegionalParameterResult].
  /// [createTime] Required.
  /// [effectiveLabels] Required.
  /// [format] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKey] Required.
  /// [labels] Required.
  /// [location] Required.
  /// [name] Required.
  /// [parameterId] Required.
  /// [policyMembers] Required.
  /// [project] Optional.
  /// [pulumiLabels] Required.
  /// [updateTime] Required.
  GetRegionalParameterResult({
    required this.createTime,
    required this.effectiveLabels,
    required this.format,
    required this.id,
    required this.kmsKey,
    required this.labels,
    required this.location,
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
      'location': location,
      'name': name,
      'parameterId': parameterId,
      'policyMembers':
          pulumi.Input.encodeList<
            GetRegionalParameterPolicyMember,
            Map<String, dynamic>
          >(policyMembers, (value) => value.toMap()),
      'project': ?project,
      'pulumiLabels': pulumiLabels,
      'updateTime': updateTime,
    };
  }

  factory GetRegionalParameterResult.fromMap(Map<String, dynamic> map) {
    return GetRegionalParameterResult(
      createTime: map['createTime'] as String,
      effectiveLabels: (map['effectiveLabels'] as Map).cast<String, String>(),
      format: map['format'] as String,
      id: map['id'] as String,
      kmsKey: map['kmsKey'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] as String,
      parameterId: map['parameterId'] as String,
      policyMembers: pulumi.Input.decodeList<GetRegionalParameterPolicyMember>(
        map['policyMembers']!,
        (value) => GetRegionalParameterPolicyMember.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      pulumiLabels: (map['pulumiLabels'] as Map).cast<String, String>(),
      updateTime: map['updateTime'] as String,
    );
  }
}
