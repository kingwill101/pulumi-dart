// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSecurityGatewayProxyProtocolConfigContextualHeaderDeviceInfo {
  /// The output type of the delegated device info. Possible values: ["PROTOBUF", "JSON", "NONE"]
  final pulumi.Input<String> outputType;

  /// Creates a new [GetSecurityGatewayProxyProtocolConfigContextualHeaderDeviceInfo].
  /// [outputType] The output type of the delegated device info. Possible values: ["PROTOBUF", "JSON", "NONE"]
  const GetSecurityGatewayProxyProtocolConfigContextualHeaderDeviceInfo({
    required this.outputType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'outputType': outputType,
    };
  }

  factory GetSecurityGatewayProxyProtocolConfigContextualHeaderDeviceInfo.fromMap(Map<String, dynamic> map) {
    return GetSecurityGatewayProxyProtocolConfigContextualHeaderDeviceInfo(
      outputType: pulumi.Input.fromValue(map['outputType'] as String),
    );
  }
}

