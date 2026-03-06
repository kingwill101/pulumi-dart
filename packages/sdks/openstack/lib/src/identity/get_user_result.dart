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
  const GetUserResult({
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
      idpId: (() { final guardedValue = map['idpId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      passwordExpiresAt: (() { final guardedValue = map['passwordExpiresAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      protocolId: (() { final guardedValue = map['protocolId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: map['region'] as String,
      uniqueId: (() { final guardedValue = map['uniqueId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

