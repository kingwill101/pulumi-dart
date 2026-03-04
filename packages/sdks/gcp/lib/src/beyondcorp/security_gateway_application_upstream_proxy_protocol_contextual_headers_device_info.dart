// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersDeviceInfo {
  /// The output type of the delegated device info.
  /// Possible values are: `PROTOBUF`, `JSON`, `NONE`.
  final pulumi.Input<String>? outputType;

  /// Creates a new [SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersDeviceInfo].
  /// [outputType] The output type of the delegated device info.
  SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersDeviceInfo({
    this.outputType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'outputType': ?outputType};
  }

  factory SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersDeviceInfo.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersDeviceInfo(
      outputType: (() {
        final guardedValue = map['outputType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
