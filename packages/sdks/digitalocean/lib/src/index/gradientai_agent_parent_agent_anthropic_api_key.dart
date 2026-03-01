// ignore_for_file: unused_element, unnecessary_cast


class GradientaiAgentParentAgentAnthropicApiKey {
  /// Timestamp when the API Key was created
  final String? createdAt;
  /// Created By user ID for the API Key
  final String? createdBy;
  /// Deleted At timestamp for the API Key
  final String? deletedAt;
  /// Name of the API Key
  final String? name;
  /// Updated At timestamp for the API Key
  final String? updatedAt;
  /// API Key value
  final String? uuid;

  /// Creates a new [GradientaiAgentParentAgentAnthropicApiKey].
  /// [createdAt] Timestamp when the API Key was created
  /// [createdBy] Created By user ID for the API Key
  /// [deletedAt] Deleted At timestamp for the API Key
  /// [name] Name of the API Key
  /// [updatedAt] Updated At timestamp for the API Key
  /// [uuid] API Key value
  GradientaiAgentParentAgentAnthropicApiKey({
    this.createdAt,
    this.createdBy,
    this.deletedAt,
    this.name,
    this.updatedAt,
    this.uuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'createdBy': ?createdBy,
      'deletedAt': ?deletedAt,
      'name': ?name,
      'updatedAt': ?updatedAt,
      'uuid': ?uuid,
    };
  }

  factory GradientaiAgentParentAgentAnthropicApiKey.fromMap(Map<String, dynamic> map) {
    return GradientaiAgentParentAgentAnthropicApiKey(
      createdAt: map['createdAt'] == null ? null : map['createdAt'] as String,
      createdBy: map['createdBy'] == null ? null : map['createdBy'] as String,
      deletedAt: map['deletedAt'] == null ? null : map['deletedAt'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      updatedAt: map['updatedAt'] == null ? null : map['updatedAt'] as String,
      uuid: map['uuid'] == null ? null : map['uuid'] as String,
    );
  }
}

