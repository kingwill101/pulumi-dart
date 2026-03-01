// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_target_response.dart';

/// Result data returned by getJobTargetGroup.
class GetJobTargetGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource ID.
  final String id;
  /// Members of the target group.
  final List<JobTargetResponse> members;
  /// Resource name.
  final String name;
  /// Resource type.
  final String type;

  /// Creates a new [GetJobTargetGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [members] Members of the target group.
  /// [name] Resource name.
  /// [type] Resource type.
  GetJobTargetGroupResult({
    required this.azureApiVersion,
    required this.id,
    required this.members,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'members': pulumi.Input.encodeList<JobTargetResponse, Map<String, dynamic>>(members, (value) => value.toMap()),
      'name': name,
      'type': type,
    };
  }

  factory GetJobTargetGroupResult.fromMap(Map<String, dynamic> map) {
    return GetJobTargetGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      members: pulumi.Input.decodeList<JobTargetResponse>(map['members'], (value) => JobTargetResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

