// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetClusterGatewayApiConfig {
  /// The Gateway API release channel to use for Gateway API.
  final pulumi.Input<String> channel;

  /// Creates a new [GetClusterGatewayApiConfig].
  /// [channel] The Gateway API release channel to use for Gateway API.
  GetClusterGatewayApiConfig({
    required this.channel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'channel': channel,
    };
  }

  factory GetClusterGatewayApiConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterGatewayApiConfig(
      channel: (map['channel'] as String).input(),
    );
  }
}

