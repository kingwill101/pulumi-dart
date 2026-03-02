// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetApplicationGatewayGlobal {
  /// Whether Application Gateway's Request buffer is enabled.
  final pulumi.Input<bool> requestBufferingEnabled;
  /// Whether Application Gateway's Response buffer is enabled.
  final pulumi.Input<bool> responseBufferingEnabled;

  /// Creates a new [GetApplicationGatewayGlobal].
  /// [requestBufferingEnabled] Whether Application Gateway's Request buffer is enabled.
  /// [responseBufferingEnabled] Whether Application Gateway's Response buffer is enabled.
  GetApplicationGatewayGlobal({
    required this.requestBufferingEnabled,
    required this.responseBufferingEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestBufferingEnabled': requestBufferingEnabled,
      'responseBufferingEnabled': responseBufferingEnabled,
    };
  }

  factory GetApplicationGatewayGlobal.fromMap(Map<String, dynamic> map) {
    return GetApplicationGatewayGlobal(
      requestBufferingEnabled: (map['requestBufferingEnabled'] as bool).input(),
      responseBufferingEnabled: (map['responseBufferingEnabled'] as bool).input(),
    );
  }
}

