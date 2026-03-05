// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_servergroup_v2_rule.dart';

/// Result data returned by getServergroupV2.
class GetServergroupV2Result {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The instances that are part of this server group.
  final List<String> members;
  /// Metadata of the server group.
  final Map<String, String> metadata;
  /// See Argument Reference above.
  final String name;
  /// Policy name associated with the server group.
  final List<String> policies;
  /// Project ID of the server group.
  final String projectId;
  final String region;
  /// Rules which are applied to specified policy.
  final List<GetServergroupV2Rule> rules;
  /// User ID of the server group.
  final String userId;

  /// Creates a new [GetServergroupV2Result].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [members] The instances that are part of this server group.
  /// [metadata] Metadata of the server group.
  /// [name] See Argument Reference above.
  /// [policies] Policy name associated with the server group.
  /// [projectId] Project ID of the server group.
  /// [region] Required.
  /// [rules] Rules which are applied to specified policy.
  /// [userId] User ID of the server group.
  GetServergroupV2Result({
    required this.id,
    required this.members,
    required this.metadata,
    required this.name,
    required this.policies,
    required this.projectId,
    required this.region,
    required this.rules,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'members': members,
      'metadata': metadata,
      'name': name,
      'policies': policies,
      'projectId': projectId,
      'region': region,
      'rules': pulumi.Input.encodeList<GetServergroupV2Rule, Map<String, dynamic>>(rules, (value) => value.toMap()),
      'userId': userId,
    };
  }

  factory GetServergroupV2Result.fromMap(Map<String, dynamic> map) {
    return GetServergroupV2Result(
      id: map['id'] as String,
      members: (map['members'] as List).cast<String>(),
      metadata: (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] as String,
      policies: (map['policies'] as List).cast<String>(),
      projectId: map['projectId'] as String,
      region: map['region'] as String,
      rules: pulumi.Input.decodeList<GetServergroupV2Rule>(map['rules']!, (value) => GetServergroupV2Rule.fromMap((value as Map).cast<String, dynamic>())),
      userId: map['userId'] as String,
    );
  }
}

