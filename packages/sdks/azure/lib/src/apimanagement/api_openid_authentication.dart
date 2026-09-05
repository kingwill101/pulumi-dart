// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiOpenidAuthentication {
  /// How to send token to the server. A list of zero or more methods. Valid values are `authorizationHeader` and `query`.
  final pulumi.Input<List<String>?>? bearerTokenSendingMethods;
  /// OpenID Connect provider identifier. The name of an OpenID Connect Provider.
  final pulumi.Input<String> openidProviderName;

  /// Creates a new [ApiOpenidAuthentication].
  /// [bearerTokenSendingMethods] How to send token to the server. A list of zero or more methods. Valid values are `authorizationHeader` and `query`.
  /// [openidProviderName] OpenID Connect provider identifier. The name of an OpenID Connect Provider.
  const ApiOpenidAuthentication({
    this.bearerTokenSendingMethods,
    required this.openidProviderName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bearerTokenSendingMethods': ?bearerTokenSendingMethods,
      'openidProviderName': openidProviderName,
    };
  }

  factory ApiOpenidAuthentication.fromMap(Map<String, dynamic> map) {
    return ApiOpenidAuthentication(
      bearerTokenSendingMethods: (() { final guardedValue = map['bearerTokenSendingMethods']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      openidProviderName: pulumi.Input.fromValue(map['openidProviderName'] as String),
    );
  }
}
