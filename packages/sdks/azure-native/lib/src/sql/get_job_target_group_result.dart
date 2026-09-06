// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_target_response.dart';

/// Result data returned by getJobTargetGroup.
class GetJobTargetGroupResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource ID.
  final String? id;
  /// Members of the target group.
  final List<JobTargetResponse>? members;
  /// Resource name.
  final String? name;
  /// Resource type.
  final String? type;

  /// Creates a new [GetJobTargetGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [members] Members of the target group.
  /// [name] Resource name.
  /// [type] Resource type.
  const GetJobTargetGroupResult({
    this.azureApiVersion,
    this.id,
    this.members,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'members': ?(() { final guardedValue = members; if (guardedValue == null) return null; return pulumi.Input.encodeList<JobTargetResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'type': ?type,
    };
  }

  factory GetJobTargetGroupResult.fromMap(Map<String, dynamic> map) {
    return GetJobTargetGroupResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      members: (() { final guardedValue = map['members']; if (guardedValue == null) return null; return pulumi.Input.decodeList<JobTargetResponse>(guardedValue, (value) => JobTargetResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
