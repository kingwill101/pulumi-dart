// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersUserInfo {
  /// The output type of the delegated user info.
  /// Possible values are: `PROTOBUF`, `JSON`, `NONE`.
  final pulumi.Input<String>? outputType;

  /// Creates a new [SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersUserInfo].
  /// [outputType] The output type of the delegated user info.
  SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersUserInfo({
    this.outputType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputType': ?outputType,
    };
  }

  factory SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersUserInfo.fromMap(Map<String, dynamic> map) {
    return SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersUserInfo(
      outputType: map['outputType'] == null ? null : (map['outputType']! as String).input(),
    );
  }
}

