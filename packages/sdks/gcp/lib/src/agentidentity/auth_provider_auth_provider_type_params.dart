// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'auth_provider_auth_provider_type_params_api_key.dart';
import 'auth_provider_auth_provider_type_params_three_legged_oauth.dart';
import 'auth_provider_auth_provider_type_params_two_legged_oauth.dart';

class AuthProviderAuthProviderTypeParams {
  /// Message describing ApiKeyParams object.
  /// Structure is documented below.
  final pulumi.Input<AuthProviderAuthProviderTypeParamsApiKey>? apiKey;
  /// (Output)
  /// Message describing GeminiEnterpriseAuthProviderParams object.
  /// Since GeminiEnterpriseAuthProviderParams currently takes no subfields, defining this empty block selects the geAuthProvider type.
  final pulumi.Input<List<Map<String, dynamic>>>? geAuthProviders;
  /// Message describing ThreeLeggedOAuth object.
  /// Structure is documented below.
  final pulumi.Input<AuthProviderAuthProviderTypeParamsThreeLeggedOauth>? threeLeggedOauth;
  /// Message describing TwoLeggedOAuth object.
  /// Structure is documented below.
  final pulumi.Input<AuthProviderAuthProviderTypeParamsTwoLeggedOauth>? twoLeggedOauth;

  /// Creates a new [AuthProviderAuthProviderTypeParams].
  /// [apiKey] Message describing ApiKeyParams object.
  /// [geAuthProviders] (Output)
  /// [threeLeggedOauth] Message describing ThreeLeggedOAuth object.
  /// [twoLeggedOauth] Message describing TwoLeggedOAuth object.
  const AuthProviderAuthProviderTypeParams({
    this.apiKey,
    this.geAuthProviders,
    this.threeLeggedOauth,
    this.twoLeggedOauth,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?pulumi.Input.mapOptionalInputValue<AuthProviderAuthProviderTypeParamsApiKey, Map<String, dynamic>>(apiKey, (value) => value.toMap()),
      'geAuthProviders': ?geAuthProviders,
      'threeLeggedOauth': ?pulumi.Input.mapOptionalInputValue<AuthProviderAuthProviderTypeParamsThreeLeggedOauth, Map<String, dynamic>>(threeLeggedOauth, (value) => value.toMap()),
      'twoLeggedOauth': ?pulumi.Input.mapOptionalInputValue<AuthProviderAuthProviderTypeParamsTwoLeggedOauth, Map<String, dynamic>>(twoLeggedOauth, (value) => value.toMap()),
    };
  }

  factory AuthProviderAuthProviderTypeParams.fromMap(Map<String, dynamic> map) {
    return AuthProviderAuthProviderTypeParams(
      apiKey: (() { final guardedValue = map['apiKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthProviderAuthProviderTypeParamsApiKey.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      geAuthProviders: (() { final guardedValue = map['geAuthProviders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<Map<String, dynamic>>()); })(),
      threeLeggedOauth: (() { final guardedValue = map['threeLeggedOauth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthProviderAuthProviderTypeParamsThreeLeggedOauth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      twoLeggedOauth: (() { final guardedValue = map['twoLeggedOauth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthProviderAuthProviderTypeParamsTwoLeggedOauth.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
