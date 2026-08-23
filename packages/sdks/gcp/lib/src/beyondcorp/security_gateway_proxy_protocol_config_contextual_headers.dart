// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_gateway_proxy_protocol_config_contextual_headers_device_info.dart';
import 'security_gateway_proxy_protocol_config_contextual_headers_group_info.dart';
import 'security_gateway_proxy_protocol_config_contextual_headers_user_info.dart';

class SecurityGatewayProxyProtocolConfigContextualHeaders {
  /// Device info configuration.
  /// Structure is documented below.
  final pulumi.Input<SecurityGatewayProxyProtocolConfigContextualHeadersDeviceInfo>? deviceInfo;
  /// Group info configuration.
  /// Structure is documented below.
  final pulumi.Input<SecurityGatewayProxyProtocolConfigContextualHeadersGroupInfo>? groupInfo;
  /// Default output type for all enabled headers.
  /// Possible values are: `PROTOBUF`, `JSON`, `NONE`.
  final pulumi.Input<String>? outputType;
  /// User info configuration.
  /// Structure is documented below.
  final pulumi.Input<SecurityGatewayProxyProtocolConfigContextualHeadersUserInfo>? userInfo;

  /// Creates a new [SecurityGatewayProxyProtocolConfigContextualHeaders].
  /// [deviceInfo] Device info configuration.
  /// [groupInfo] Group info configuration.
  /// [outputType] Default output type for all enabled headers.
  /// [userInfo] User info configuration.
  const SecurityGatewayProxyProtocolConfigContextualHeaders({
    this.deviceInfo,
    this.groupInfo,
    this.outputType,
    this.userInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceInfo': ?pulumi.Input.mapOptionalInputValue<SecurityGatewayProxyProtocolConfigContextualHeadersDeviceInfo, Map<String, dynamic>>(deviceInfo, (value) => value.toMap()),
      'groupInfo': ?pulumi.Input.mapOptionalInputValue<SecurityGatewayProxyProtocolConfigContextualHeadersGroupInfo, Map<String, dynamic>>(groupInfo, (value) => value.toMap()),
      'outputType': ?outputType,
      'userInfo': ?pulumi.Input.mapOptionalInputValue<SecurityGatewayProxyProtocolConfigContextualHeadersUserInfo, Map<String, dynamic>>(userInfo, (value) => value.toMap()),
    };
  }

  factory SecurityGatewayProxyProtocolConfigContextualHeaders.fromMap(Map<String, dynamic> map) {
    return SecurityGatewayProxyProtocolConfigContextualHeaders(
      deviceInfo: (() { final guardedValue = map['deviceInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityGatewayProxyProtocolConfigContextualHeadersDeviceInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      groupInfo: (() { final guardedValue = map['groupInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityGatewayProxyProtocolConfigContextualHeadersGroupInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outputType: (() { final guardedValue = map['outputType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userInfo: (() { final guardedValue = map['userInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityGatewayProxyProtocolConfigContextualHeadersUserInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
