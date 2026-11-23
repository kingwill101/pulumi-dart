// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getActionGatewayProviderCredential.
class GetActionGatewayProviderCredentialResult {
  /// The HTTPS origin of the tool provider's API, when one is configured.
  final String? baseUrl;
  /// When the credential was created.
  final String? createdAt;
  /// The label of the credential.
  final String? displayName;
  /// The ID of the provider credential.
  final String? id;
  /// The kind of credential, such as `oauthClient` or `apiKey`.
  final String? kind;
  /// The DigitalOcean user ID of the credential's creator. Empty for a credential shared with the team.
  final String? owningUserId;
  /// The redirect URI registered with an OAuth client. Empty when DigitalOcean's callback is used.
  final String? redirectUrl;
  /// Whether everyone on the team can see and use the credential.
  final bool? reusableByTeam;
  /// Who can use the credential: `user` for only its creator, or `team`.
  final String? scope;
  /// The status of the credential: `active` or `disabled`.
  final String? status;
  /// The slug of the tool provider.
  final String? toolProvider;
  /// When the credential was last modified.
  final String? updatedAt;

  /// Creates a new [GetActionGatewayProviderCredentialResult].
  /// [baseUrl] The HTTPS origin of the tool provider's API, when one is configured.
  /// [createdAt] When the credential was created.
  /// [displayName] The label of the credential.
  /// [id] The ID of the provider credential.
  /// [kind] The kind of credential, such as `oauthClient` or `apiKey`.
  /// [owningUserId] The DigitalOcean user ID of the credential's creator. Empty for a credential shared with the team.
  /// [redirectUrl] The redirect URI registered with an OAuth client. Empty when DigitalOcean's callback is used.
  /// [reusableByTeam] Whether everyone on the team can see and use the credential.
  /// [scope] Who can use the credential: `user` for only its creator, or `team`.
  /// [status] The status of the credential: `active` or `disabled`.
  /// [toolProvider] The slug of the tool provider.
  /// [updatedAt] When the credential was last modified.
  const GetActionGatewayProviderCredentialResult({
    this.baseUrl,
    this.createdAt,
    this.displayName,
    this.id,
    this.kind,
    this.owningUserId,
    this.redirectUrl,
    this.reusableByTeam,
    this.scope,
    this.status,
    this.toolProvider,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseUrl': ?baseUrl,
      'createdAt': ?createdAt,
      'displayName': ?displayName,
      'id': ?id,
      'kind': ?kind,
      'owningUserId': ?owningUserId,
      'redirectUrl': ?redirectUrl,
      'reusableByTeam': ?reusableByTeam,
      'scope': ?scope,
      'status': ?status,
      'toolProvider': ?toolProvider,
      'updatedAt': ?updatedAt,
    };
  }

  factory GetActionGatewayProviderCredentialResult.fromMap(Map<String, dynamic> map) {
    return GetActionGatewayProviderCredentialResult(
      baseUrl: (() { final guardedValue = map['baseUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      owningUserId: (() { final guardedValue = map['owningUserId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      redirectUrl: (() { final guardedValue = map['redirectUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reusableByTeam: (() { final guardedValue = map['reusableByTeam']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      toolProvider: (() { final guardedValue = map['toolProvider']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
