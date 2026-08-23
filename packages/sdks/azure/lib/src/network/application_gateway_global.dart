// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationGatewayGlobal {
  /// Whether Application Gateway's Request buffer is enabled.
  final pulumi.Input<bool> requestBufferingEnabled;
  /// Whether Application Gateway's Response buffer is enabled.
  final pulumi.Input<bool> responseBufferingEnabled;

  /// Creates a new [ApplicationGatewayGlobal].
  /// [requestBufferingEnabled] Whether Application Gateway's Request buffer is enabled.
  /// [responseBufferingEnabled] Whether Application Gateway's Response buffer is enabled.
  const ApplicationGatewayGlobal({
    required this.requestBufferingEnabled,
    required this.responseBufferingEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestBufferingEnabled': requestBufferingEnabled,
      'responseBufferingEnabled': responseBufferingEnabled,
    };
  }

  factory ApplicationGatewayGlobal.fromMap(Map<String, dynamic> map) {
    return ApplicationGatewayGlobal(
      requestBufferingEnabled: pulumi.Input.fromValue(map['requestBufferingEnabled'] as bool),
      responseBufferingEnabled: pulumi.Input.fromValue(map['responseBufferingEnabled'] as bool),
    );
  }
}
