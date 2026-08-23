// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthProviderAuthProviderTypeParamsApiKey {
  /// Input only. The API key for this auth_provider.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String>? apiKey;

  /// Creates a new [AuthProviderAuthProviderTypeParamsApiKey].
  /// [apiKey] Input only. The API key for this auth_provider.
  const AuthProviderAuthProviderTypeParamsApiKey({
    this.apiKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
    };
  }

  factory AuthProviderAuthProviderTypeParamsApiKey.fromMap(Map<String, dynamic> map) {
    return AuthProviderAuthProviderTypeParamsApiKey(
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
