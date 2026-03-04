// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityGatewayProxyProtocolConfigContextualHeadersDeviceInfo {
  /// The output type of the delegated device info.
  /// Possible values are: `PROTOBUF`, `JSON`, `NONE`.
  final pulumi.Input<String>? outputType;

  /// Creates a new [SecurityGatewayProxyProtocolConfigContextualHeadersDeviceInfo].
  /// [outputType] The output type of the delegated device info.
  SecurityGatewayProxyProtocolConfigContextualHeadersDeviceInfo({
    this.outputType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'outputType': ?outputType};
  }

  factory SecurityGatewayProxyProtocolConfigContextualHeadersDeviceInfo.fromMap(
    Map<String, dynamic> map,
  ) {
    return SecurityGatewayProxyProtocolConfigContextualHeadersDeviceInfo(
      outputType: (() {
        final guardedValue = map['outputType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
