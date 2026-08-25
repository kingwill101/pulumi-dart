// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BindingAuthProviderBinding {
  /// The resource name of the target auth provider.
  final pulumi.Input<String> authProvider;
  /// The continue URI of the auth provider.
  final pulumi.Input<String?>? continueUri;
  /// The list of OAuth2 scopes of the auth provider.
  final pulumi.Input<List<String>?>? scopes;

  /// Creates a new [BindingAuthProviderBinding].
  /// [authProvider] The resource name of the target auth provider.
  /// [continueUri] The continue URI of the auth provider.
  /// [scopes] The list of OAuth2 scopes of the auth provider.
  const BindingAuthProviderBinding({
    required this.authProvider,
    this.continueUri,
    this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authProvider': authProvider,
      'continueUri': ?continueUri,
      'scopes': ?scopes,
    };
  }

  factory BindingAuthProviderBinding.fromMap(Map<String, dynamic> map) {
    return BindingAuthProviderBinding(
      authProvider: pulumi.Input.fromValue(map['authProvider'] as String),
      continueUri: (() { final guardedValue = map['continueUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
