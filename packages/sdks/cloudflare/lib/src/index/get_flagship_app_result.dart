// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFlagshipApp.
class GetFlagshipAppResult {
  /// Cloudflare account ID.
  final String? accountId;
  /// App identifier.
  final String? appId;
  final String? createdAt;
  /// App identifier.
  final String? id;
  final String? name;
  final String? updatedAt;
  /// Email of the actor who last modified the app, or `edge-gateway` for gateway-authenticated changes.
  final String? updatedBy;

  /// Creates a new [GetFlagshipAppResult].
  /// [accountId] Cloudflare account ID.
  /// [appId] App identifier.
  /// [createdAt] Optional.
  /// [id] App identifier.
  /// [name] Optional.
  /// [updatedAt] Optional.
  /// [updatedBy] Email of the actor who last modified the app, or `edge-gateway` for gateway-authenticated changes.
  const GetFlagshipAppResult({
    this.accountId,
    this.appId,
    this.createdAt,
    this.id,
    this.name,
    this.updatedAt,
    this.updatedBy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'appId': ?appId,
      'createdAt': ?createdAt,
      'id': ?id,
      'name': ?name,
      'updatedAt': ?updatedAt,
      'updatedBy': ?updatedBy,
    };
  }

  factory GetFlagshipAppResult.fromMap(Map<String, dynamic> map) {
    return GetFlagshipAppResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedBy: (() { final guardedValue = map['updatedBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
