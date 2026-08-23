// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecurityGatewayProxyProtocolConfigContextualHeaderUserInfo {
  /// The output type of the delegated user info. Possible values: ["PROTOBUF", "JSON", "NONE"]
  final pulumi.Input<String> outputType;

  /// Creates a new [GetSecurityGatewayProxyProtocolConfigContextualHeaderUserInfo].
  /// [outputType] The output type of the delegated user info. Possible values: ["PROTOBUF", "JSON", "NONE"]
  const GetSecurityGatewayProxyProtocolConfigContextualHeaderUserInfo({
    required this.outputType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputType': outputType,
    };
  }

  factory GetSecurityGatewayProxyProtocolConfigContextualHeaderUserInfo.fromMap(Map<String, dynamic> map) {
    return GetSecurityGatewayProxyProtocolConfigContextualHeaderUserInfo(
      outputType: pulumi.Input.fromValue(map['outputType'] as String),
    );
  }
}
