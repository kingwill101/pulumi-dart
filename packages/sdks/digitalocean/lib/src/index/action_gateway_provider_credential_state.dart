// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ActionGatewayProviderCredential resources.
class ActionGatewayProviderCredentialState {
  /// The key or token sent to the tool provider. Required for `kind = "apiKey"` and not accepted otherwise. Changing it rotates the key in place: the credential keeps its ID, and its connections use the new key on their next call.
  final pulumi.Input<String?>? apiKey;
  /// The HTTPS origin of the tool provider's API, such as `https://api.example.com`. Accepted only by tool providers that allow one. Conflicts with `credentialParameters`. Removing it from the configuration leaves the stored origin in place.
  final pulumi.Input<String?>? baseUrl;
  /// The client ID of your OAuth client. Required for `kind = "oauthClient"` and not accepted otherwise. A credential is bound to the client ID it was registered with, so changing this replaces the credential.
  final pulumi.Input<String?>? clientId;
  /// The client secret of your OAuth client. Required for `kind = "oauthClient"` and not accepted otherwise. Changing it rotates the secret in place.
  final pulumi.Input<String?>? clientSecret;
  /// When the credential was created.
  final pulumi.Input<String?>? createdAt;
  /// A map of values for the credential parameters the tool provider declares, which the [providers API](https://docs.digitalocean.com/reference/api/) lists as `credentialParameters`. The API validates them and derives `baseUrl` from them. Accepted only for `kind = "apiKey"`. Conflicts with `baseUrl`.
  final pulumi.Input<Map<String, String>?>? credentialParameters;
  /// A label of 1 to 255 characters, unique among your team's credentials for the tool provider, ignoring case.
  final pulumi.Input<String?>? displayName;
  /// The kind of credential: `oauthClient` for an OAuth client you created at the tool provider, or `apiKey` for a key or token. Changing this replaces the credential.
  final pulumi.Input<String?>? kind;
  /// The DigitalOcean user ID of the credential's creator. Empty for a credential shared with the team.
  final pulumi.Input<String?>? owningUserId;
  /// The HTTPS redirect URI registered with your OAuth client, for `kind = "oauthClient"` only. Custom OAuth redirects must be enabled for your account. Omit it to use DigitalOcean's callback. Changing this replaces the credential.
  final pulumi.Input<String?>? redirectUrl;
  /// Whether everyone on your team can see and use the credential instead of only the DigitalOcean user who owns Terraform's API token. Defaults to `false`. Sharing a credential may require the team owner role. Sharing cannot be undone, so changing this from `true` to `false` replaces the credential.
  final pulumi.Input<bool?>? reusableByTeam;
  /// Who can use the credential: `user` for only its creator, or `team`.
  final pulumi.Input<String?>? scope;
  /// The status of the credential: `active` or `disabled`. Connections cannot use a disabled credential.
  final pulumi.Input<String?>? status;
  /// The slug of the tool provider the credential is for, such as `github` or `jira`. The `digitalocean.getActionGatewayProviders` data source lists the available providers and, in `authTypes`, the kinds of credential each accepts. Changing this replaces the credential.
  final pulumi.Input<String?>? toolProvider;
  /// When the credential was last modified.
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [ActionGatewayProviderCredentialState].
  /// [apiKey] The key or token sent to the tool provider. Required for `kind = "apiKey"` and not accepted otherwise. Changing it rotates the key in place: the credential keeps its ID, and its connections use the new key on their next call.
  /// [baseUrl] The HTTPS origin of the tool provider's API, such as `https://api.example.com`. Accepted only by tool providers that allow one. Conflicts with `credentialParameters`. Removing it from the configuration leaves the stored origin in place.
  /// [clientId] The client ID of your OAuth client. Required for `kind = "oauthClient"` and not accepted otherwise. A credential is bound to the client ID it was registered with, so changing this replaces the credential.
  /// [clientSecret] The client secret of your OAuth client. Required for `kind = "oauthClient"` and not accepted otherwise. Changing it rotates the secret in place.
  /// [createdAt] When the credential was created.
  /// [credentialParameters] A map of values for the credential parameters the tool provider declares, which the [providers API](https://docs.digitalocean.com/reference/api/) lists as `credentialParameters`. The API validates them and derives `baseUrl` from them. Accepted only for `kind = "apiKey"`. Conflicts with `baseUrl`.
  /// [displayName] A label of 1 to 255 characters, unique among your team's credentials for the tool provider, ignoring case.
  /// [kind] The kind of credential: `oauthClient` for an OAuth client you created at the tool provider, or `apiKey` for a key or token. Changing this replaces the credential.
  /// [owningUserId] The DigitalOcean user ID of the credential's creator. Empty for a credential shared with the team.
  /// [redirectUrl] The HTTPS redirect URI registered with your OAuth client, for `kind = "oauthClient"` only. Custom OAuth redirects must be enabled for your account. Omit it to use DigitalOcean's callback. Changing this replaces the credential.
  /// [reusableByTeam] Whether everyone on your team can see and use the credential instead of only the DigitalOcean user who owns Terraform's API token. Defaults to `false`. Sharing a credential may require the team owner role. Sharing cannot be undone, so changing this from `true` to `false` replaces the credential.
  /// [scope] Who can use the credential: `user` for only its creator, or `team`.
  /// [status] The status of the credential: `active` or `disabled`. Connections cannot use a disabled credential.
  /// [toolProvider] The slug of the tool provider the credential is for, such as `github` or `jira`. The `digitalocean.getActionGatewayProviders` data source lists the available providers and, in `authTypes`, the kinds of credential each accepts. Changing this replaces the credential.
  /// [updatedAt] When the credential was last modified.
  const ActionGatewayProviderCredentialState({
    this.apiKey,
    this.baseUrl,
    this.clientId,
    this.clientSecret,
    this.createdAt,
    this.credentialParameters,
    this.displayName,
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
      'apiKey': ?apiKey,
      'baseUrl': ?baseUrl,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'createdAt': ?createdAt,
      'credentialParameters': ?credentialParameters,
      'displayName': ?displayName,
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

  factory ActionGatewayProviderCredentialState.fromMap(Map<String, dynamic> map) {
    return ActionGatewayProviderCredentialState(
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      baseUrl: (() { final guardedValue = map['baseUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentialParameters: (() { final guardedValue = map['credentialParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      owningUserId: (() { final guardedValue = map['owningUserId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      redirectUrl: (() { final guardedValue = map['redirectUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      reusableByTeam: (() { final guardedValue = map['reusableByTeam']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      toolProvider: (() { final guardedValue = map['toolProvider']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
