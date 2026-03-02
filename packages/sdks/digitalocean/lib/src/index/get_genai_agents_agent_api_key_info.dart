// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGenaiAgentsAgentApiKeyInfo {
  /// API Key value
  final pulumi.Input<String> createdAt;
  /// Created By user ID for the API Key
  final pulumi.Input<String>? createdBy;
  /// Deleted At timestamp for the API Key
  final pulumi.Input<String> deletedAt;
  /// Name of the API Key
  final pulumi.Input<String>? name;
  /// Updated At timestamp for the API Key
  final pulumi.Input<String>? secretKey;
  /// API Key value
  final pulumi.Input<String>? uuid;

  /// Creates a new [GetGenaiAgentsAgentApiKeyInfo].
  /// [createdAt] API Key value
  /// [createdBy] Created By user ID for the API Key
  /// [deletedAt] Deleted At timestamp for the API Key
  /// [name] Name of the API Key
  /// [secretKey] Updated At timestamp for the API Key
  /// [uuid] API Key value
  GetGenaiAgentsAgentApiKeyInfo({
    required this.createdAt,
    this.createdBy,
    required this.deletedAt,
    this.name,
    this.secretKey,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'createdBy': ?createdBy,
      'deletedAt': deletedAt,
      'name': ?name,
      'secretKey': ?secretKey,
      'uuid': ?uuid,
    };
  }

  factory GetGenaiAgentsAgentApiKeyInfo.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentsAgentApiKeyInfo(
      createdAt: (map['createdAt'] as String).input(),
      createdBy: map['createdBy'] == null ? null : (map['createdBy']! as String).input(),
      deletedAt: (map['deletedAt'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      secretKey: map['secretKey'] == null ? null : (map['secretKey']! as String).input(),
      uuid: map['uuid'] == null ? null : (map['uuid']! as String).input(),
    );
  }
}

