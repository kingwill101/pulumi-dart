// ignore_for_file: unused_element, unnecessary_cast


class GetGenaiAgentsByOpenaiApiKeyAgentApiKeyInfo {
  /// API Key value
  final String createdAt;
  /// Created By user ID for the API Key
  final String? createdBy;
  /// Deleted At timestamp for the API Key
  final String deletedAt;
  /// Name of the API Key
  final String? name;
  /// Updated At timestamp for the API Key
  final String? secretKey;
  /// API Key value
  final String? uuid;

  /// Creates a new [GetGenaiAgentsByOpenaiApiKeyAgentApiKeyInfo].
  /// [createdAt] API Key value
  /// [createdBy] Created By user ID for the API Key
  /// [deletedAt] Deleted At timestamp for the API Key
  /// [name] Name of the API Key
  /// [secretKey] Updated At timestamp for the API Key
  /// [uuid] API Key value
  GetGenaiAgentsByOpenaiApiKeyAgentApiKeyInfo({
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

  factory GetGenaiAgentsByOpenaiApiKeyAgentApiKeyInfo.fromMap(Map<String, dynamic> map) {
    return GetGenaiAgentsByOpenaiApiKeyAgentApiKeyInfo(
      createdAt: map['createdAt'] as String,
      createdBy: map['createdBy'] == null ? null : map['createdBy'] as String,
      deletedAt: map['deletedAt'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      secretKey: map['secretKey'] == null ? null : map['secretKey'] as String,
      uuid: map['uuid'] == null ? null : map['uuid'] as String,
    );
  }
}

