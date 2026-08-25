// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_parameter_policy_member.dart';

/// Result data returned by getParameter.
class GetParameterResult {
  final String? createTime;
  final String? deletionPolicy;
  final Map<String, String>? effectiveLabels;
  final String? format;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? kmsKey;
  final Map<String, String>? labels;
  final String? name;
  final String? parameterId;
  final List<GetParameterPolicyMember>? policyMembers;
  final String? project;
  final Map<String, String>? pulumiLabels;
  final String? updateTime;

  /// Creates a new [GetParameterResult].
  /// [createTime] Optional.
  /// [deletionPolicy] Optional.
  /// [effectiveLabels] Optional.
  /// [format] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKey] Optional.
  /// [labels] Optional.
  /// [name] Optional.
  /// [parameterId] Optional.
  /// [policyMembers] Optional.
  /// [project] Optional.
  /// [pulumiLabels] Optional.
  /// [updateTime] Optional.
  const GetParameterResult({
    this.createTime,
    this.deletionPolicy,
    this.effectiveLabels,
    this.format,
    this.id,
    this.kmsKey,
    this.labels,
    this.name,
    this.parameterId,
    this.policyMembers,
    this.project,
    this.pulumiLabels,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'effectiveLabels': ?effectiveLabels,
      'format': ?format,
      'id': ?id,
      'kmsKey': ?kmsKey,
      'labels': ?labels,
      'name': ?name,
      'parameterId': ?parameterId,
      'policyMembers': ?(() { final guardedValue = policyMembers; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetParameterPolicyMember, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'updateTime': ?updateTime,
    };
  }

  factory GetParameterResult.fromMap(Map<String, dynamic> map) {
    return GetParameterResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameterId: (() { final guardedValue = map['parameterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyMembers: (() { final guardedValue = map['policyMembers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetParameterPolicyMember>(guardedValue, (value) => GetParameterPolicyMember.fromMap((value as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
