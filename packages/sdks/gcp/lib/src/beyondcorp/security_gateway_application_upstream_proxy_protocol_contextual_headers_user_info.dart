// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersUserInfo {
  /// The output type of the delegated user info.
  /// Possible values are: `PROTOBUF`, `JSON`, `NONE`.
  final pulumi.Input<String?>? outputType;

  /// Creates a new [SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersUserInfo].
  /// [outputType] The output type of the delegated user info.
  const SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersUserInfo({
    this.outputType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputType': ?outputType,
    };
  }

  factory SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersUserInfo.fromMap(Map<String, dynamic> map) {
    return SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersUserInfo(
      outputType: (() { final guardedValue = map['outputType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
