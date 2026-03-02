// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getUser.
class GetUserResult {
  /// See Argument Reference above.
  final String defaultProjectId;
  /// A description of the user.
  final String description;
  /// See Argument Reference above.
  final String domainId;
  /// See Argument Reference above.
  final bool enabled;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// See Argument Reference above.
  final String? idpId;
  /// See Argument Reference above.
  final String? name;
  /// See Argument Reference above.
  final String? passwordExpiresAt;
  /// See Argument Reference above.
  final String? protocolId;
  /// See Argument Reference above.
  final String region;
  /// See Argument Reference above.
  final String? uniqueId;

  /// Creates a new [GetUserResult].
  /// [defaultProjectId] See Argument Reference above.
  /// [description] A description of the user.
  /// [domainId] See Argument Reference above.
  /// [enabled] See Argument Reference above.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [idpId] See Argument Reference above.
  /// [name] See Argument Reference above.
  /// [passwordExpiresAt] See Argument Reference above.
  /// [protocolId] See Argument Reference above.
  /// [region] See Argument Reference above.
  /// [uniqueId] See Argument Reference above.
  GetUserResult({
    required this.defaultProjectId,
    required this.description,
    required this.domainId,
    required this.enabled,
    required this.id,
    this.idpId,
    this.name,
    this.passwordExpiresAt,
    this.protocolId,
    required this.region,
    this.uniqueId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultProjectId': defaultProjectId,
      'description': description,
      'domainId': domainId,
      'enabled': enabled,
      'id': id,
      'idpId': ?idpId,
      'name': ?name,
      'passwordExpiresAt': ?passwordExpiresAt,
      'protocolId': ?protocolId,
      'region': region,
      'uniqueId': ?uniqueId,
    };
  }

  factory GetUserResult.fromMap(Map<String, dynamic> map) {
    return GetUserResult(
      defaultProjectId: map['defaultProjectId'] as String,
      description: map['description'] as String,
      domainId: map['domainId'] as String,
      enabled: map['enabled'] as bool,
      id: map['id'] as String,
      idpId: map['idpId'] == null ? null : map['idpId']! as String,
      name: map['name'] == null ? null : map['name']! as String,
      passwordExpiresAt: map['passwordExpiresAt'] == null ? null : map['passwordExpiresAt']! as String,
      protocolId: map['protocolId'] == null ? null : map['protocolId']! as String,
      region: map['region'] as String,
      uniqueId: map['uniqueId'] == null ? null : map['uniqueId']! as String,
    );
  }
}

