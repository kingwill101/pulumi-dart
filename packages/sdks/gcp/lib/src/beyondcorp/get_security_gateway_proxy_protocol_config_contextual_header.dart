// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_security_gateway_proxy_protocol_config_contextual_header_device_info.dart';
import 'get_security_gateway_proxy_protocol_config_contextual_header_group_info.dart';
import 'get_security_gateway_proxy_protocol_config_contextual_header_user_info.dart';

class GetSecurityGatewayProxyProtocolConfigContextualHeader {
  /// Device info configuration.
  final pulumi.Input<List<GetSecurityGatewayProxyProtocolConfigContextualHeaderDeviceInfo>> deviceInfos;
  /// Group info configuration.
  final pulumi.Input<List<GetSecurityGatewayProxyProtocolConfigContextualHeaderGroupInfo>> groupInfos;
  /// Default output type for all enabled headers. Possible values: ["PROTOBUF", "JSON", "NONE"]
  final pulumi.Input<String> outputType;
  /// User info configuration.
  final pulumi.Input<List<GetSecurityGatewayProxyProtocolConfigContextualHeaderUserInfo>> userInfos;

  /// Creates a new [GetSecurityGatewayProxyProtocolConfigContextualHeader].
  /// [deviceInfos] Device info configuration.
  /// [groupInfos] Group info configuration.
  /// [outputType] Default output type for all enabled headers. Possible values: ["PROTOBUF", "JSON", "NONE"]
  /// [userInfos] User info configuration.
  GetSecurityGatewayProxyProtocolConfigContextualHeader({
    required this.deviceInfos,
    required this.groupInfos,
    required this.outputType,
    required this.userInfos,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceInfos': pulumi.Input.mapInputValue<List<GetSecurityGatewayProxyProtocolConfigContextualHeaderDeviceInfo>, List<Map<String, dynamic>>>(deviceInfos, (value) => pulumi.Input.encodeList<GetSecurityGatewayProxyProtocolConfigContextualHeaderDeviceInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'groupInfos': pulumi.Input.mapInputValue<List<GetSecurityGatewayProxyProtocolConfigContextualHeaderGroupInfo>, List<Map<String, dynamic>>>(groupInfos, (value) => pulumi.Input.encodeList<GetSecurityGatewayProxyProtocolConfigContextualHeaderGroupInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'outputType': outputType,
      'userInfos': pulumi.Input.mapInputValue<List<GetSecurityGatewayProxyProtocolConfigContextualHeaderUserInfo>, List<Map<String, dynamic>>>(userInfos, (value) => pulumi.Input.encodeList<GetSecurityGatewayProxyProtocolConfigContextualHeaderUserInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetSecurityGatewayProxyProtocolConfigContextualHeader.fromMap(Map<String, dynamic> map) {
    return GetSecurityGatewayProxyProtocolConfigContextualHeader(
      deviceInfos: (pulumi.Input.decodeList<GetSecurityGatewayProxyProtocolConfigContextualHeaderDeviceInfo>(map['deviceInfos'], (value) => GetSecurityGatewayProxyProtocolConfigContextualHeaderDeviceInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      groupInfos: (pulumi.Input.decodeList<GetSecurityGatewayProxyProtocolConfigContextualHeaderGroupInfo>(map['groupInfos'], (value) => GetSecurityGatewayProxyProtocolConfigContextualHeaderGroupInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
      outputType: (map['outputType'] as String).input(),
      userInfos: (pulumi.Input.decodeList<GetSecurityGatewayProxyProtocolConfigContextualHeaderUserInfo>(map['userInfos'], (value) => GetSecurityGatewayProxyProtocolConfigContextualHeaderUserInfo.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

