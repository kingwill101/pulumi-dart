// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AccountConnectorProviderOauthConfig {
  /// Required. User selected scopes to apply to the Oauth config
  /// In the event of changing scopes, user records under AccountConnector will
  /// be deleted and users will re-auth again.
  final pulumi.Input<List<String>> scopes;

  /// List of providers that are owned by Developer Connect.
  /// Possible values:
  /// GITHUB
  /// GITLAB
  /// GOOGLE
  /// SENTRY
  /// ROVO
  /// NEW_RELIC
  /// DATASTAX
  final pulumi.Input<String>? systemProviderId;

  /// Creates a new [AccountConnectorProviderOauthConfig].
  /// [scopes] Required. User selected scopes to apply to the Oauth config
  /// [systemProviderId] List of providers that are owned by Developer Connect.
  AccountConnectorProviderOauthConfig({
    required this.scopes,
    this.systemProviderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scopes': scopes,
      'systemProviderId': ?systemProviderId,
    };
  }

  factory AccountConnectorProviderOauthConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return AccountConnectorProviderOauthConfig(
      scopes: pulumi.Input.fromValue((map['scopes'] as List).cast<String>()),
      systemProviderId: (() {
        final guardedValue = map['systemProviderId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
