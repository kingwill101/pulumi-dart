// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SecurityGatewayProxyProtocolConfigContextualHeadersUserInfo {
  /// The output type of the delegated user info.
  /// Possible values are: `PROTOBUF`, `JSON`, `NONE`.
  final pulumi.Input<String?>? outputType;

  /// Creates a new [SecurityGatewayProxyProtocolConfigContextualHeadersUserInfo].
  /// [outputType] The output type of the delegated user info.
  const SecurityGatewayProxyProtocolConfigContextualHeadersUserInfo({
    this.outputType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputType': ?outputType,
    };
  }

  factory SecurityGatewayProxyProtocolConfigContextualHeadersUserInfo.fromMap(Map<String, dynamic> map) {
    return SecurityGatewayProxyProtocolConfigContextualHeadersUserInfo(
      outputType: (() { final guardedValue = map['outputType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
