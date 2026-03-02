// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SlotAuthSettingsMicrosoft {
  /// The OAuth 2.0 client ID that was created for the app used for authentication.
  final pulumi.Input<String> clientId;
  /// The OAuth 2.0 client secret that was created for the app used for authentication.
  final pulumi.Input<String> clientSecret;
  /// The OAuth 2.0 scopes that will be requested as part of Microsoft Account authentication. <https://msdn.microsoft.com/en-us/library/dn631845.aspx>
  final pulumi.Input<List<String>>? oauthScopes;

  /// Creates a new [SlotAuthSettingsMicrosoft].
  /// [clientId] The OAuth 2.0 client ID that was created for the app used for authentication.
  /// [clientSecret] The OAuth 2.0 client secret that was created for the app used for authentication.
  /// [oauthScopes] The OAuth 2.0 scopes that will be requested as part of Microsoft Account authentication. <https://msdn.microsoft.com/en-us/library/dn631845.aspx>
  SlotAuthSettingsMicrosoft({
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

  factory SlotAuthSettingsMicrosoft.fromMap(Map<String, dynamic> map) {
    return SlotAuthSettingsMicrosoft(
      clientId: (map['clientId'] as String).input(),
      clientSecret: (map['clientSecret'] as String).input(),
      oauthScopes: map['oauthScopes'] == null ? null : ((map['oauthScopes'] as List).cast<String>()).input(),
    );
  }
}

