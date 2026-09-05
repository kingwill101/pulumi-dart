// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionAppSlotAuthSettingsMicrosoft {
  /// The OAuth 2.0 client ID that was created for the app used for authentication.
  final pulumi.Input<String> clientId;
  /// The OAuth 2.0 client secret that was created for the app used for authentication.
  final pulumi.Input<String> clientSecret;
  /// The OAuth 2.0 scopes that will be requested as part of Microsoft Account authentication. &lt;https://msdn.microsoft.com/en-us/library/dn631845.aspx&gt;
  final pulumi.Input<List<String>?>? oauthScopes;

  /// Creates a new [FunctionAppSlotAuthSettingsMicrosoft].
  /// [clientId] The OAuth 2.0 client ID that was created for the app used for authentication.
  /// [clientSecret] The OAuth 2.0 client secret that was created for the app used for authentication.
  /// [oauthScopes] The OAuth 2.0 scopes that will be requested as part of Microsoft Account authentication. &lt;https://msdn.microsoft.com/en-us/library/dn631845.aspx&gt;
  const FunctionAppSlotAuthSettingsMicrosoft({
    required this.clientId,
    required this.clientSecret,
    this.oauthScopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': clientSecret,
      'oauthScopes': ?oauthScopes,
    };
  }

  factory FunctionAppSlotAuthSettingsMicrosoft.fromMap(Map<String, dynamic> map) {
    return FunctionAppSlotAuthSettingsMicrosoft(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: pulumi.Input.fromValue(map['clientSecret'] as String),
      oauthScopes: (() { final guardedValue = map['oauthScopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
