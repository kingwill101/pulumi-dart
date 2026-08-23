// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_id_connect_login.dart';
import 'open_id_connect_registration_v1.dart';

/// The configuration settings of the custom Open ID Connect provider.
class CustomOpenIdConnectProviderV1 {
  /// &lt;code&gt;false&lt;/code&gt; if the custom Open ID provider provider should not be enabled; otherwise, &lt;code&gt;true&lt;/code&gt;.
  final pulumi.Input<bool>? enabled;
  /// The configuration settings of the login flow of the custom Open ID Connect provider.
  final pulumi.Input<OpenIdConnectLogin>? login;
  /// The configuration settings of the app registration for the custom Open ID Connect provider.
  final pulumi.Input<OpenIdConnectRegistrationV1>? registration;

  /// Creates a new [CustomOpenIdConnectProviderV1].
  /// [enabled] &lt;code&gt;false&lt;/code&gt; if the custom Open ID provider provider should not be enabled; otherwise, &lt;code&gt;true&lt;/code&gt;.
  /// [login] The configuration settings of the login flow of the custom Open ID Connect provider.
  /// [registration] The configuration settings of the app registration for the custom Open ID Connect provider.
  const CustomOpenIdConnectProviderV1({
    this.enabled,
    this.login,
    this.registration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'login': ?pulumi.Input.mapOptionalInputValue<OpenIdConnectLogin, Map<String, dynamic>>(login, (value) => value.toMap()),
      'registration': ?pulumi.Input.mapOptionalInputValue<OpenIdConnectRegistrationV1, Map<String, dynamic>>(registration, (value) => value.toMap()),
    };
  }

  factory CustomOpenIdConnectProviderV1.fromMap(Map<String, dynamic> map) {
    return CustomOpenIdConnectProviderV1(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      login: (() { final guardedValue = map['login']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OpenIdConnectLogin.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      registration: (() { final guardedValue = map['registration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OpenIdConnectRegistrationV1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
