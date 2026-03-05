// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_gateway_application_upstream_proxy_protocol_contextual_headers_device_info.dart';
import 'security_gateway_application_upstream_proxy_protocol_contextual_headers_group_info.dart';
import 'security_gateway_application_upstream_proxy_protocol_contextual_headers_user_info.dart';

class SecurityGatewayApplicationUpstreamProxyProtocolContextualHeaders {
  /// Device info configuration.
  /// Structure is documented below.
  final pulumi.Input<SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersDeviceInfo>? deviceInfo;
  /// Group info configuration.
  /// Structure is documented below.
  final pulumi.Input<SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersGroupInfo>? groupInfo;
  /// Default output type for all enabled headers.
  /// Possible values are: `PROTOBUF`, `JSON`, `NONE`.
  final pulumi.Input<String>? outputType;
  /// User info configuration.
  /// Structure is documented below.
  final pulumi.Input<SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersUserInfo>? userInfo;

  /// Creates a new [SecurityGatewayApplicationUpstreamProxyProtocolContextualHeaders].
  /// [deviceInfo] Device info configuration.
  /// [groupInfo] Group info configuration.
  /// [outputType] Default output type for all enabled headers.
  /// [userInfo] User info configuration.
  SecurityGatewayApplicationUpstreamProxyProtocolContextualHeaders({
    this.deviceInfo,
    this.groupInfo,
    this.outputType,
    this.userInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceInfo': ?pulumi.Input.mapOptionalInputValue<SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersDeviceInfo, Map<String, dynamic>>(deviceInfo, (value) => value.toMap()),
      'groupInfo': ?pulumi.Input.mapOptionalInputValue<SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersGroupInfo, Map<String, dynamic>>(groupInfo, (value) => value.toMap()),
      'outputType': ?outputType,
      'userInfo': ?pulumi.Input.mapOptionalInputValue<SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersUserInfo, Map<String, dynamic>>(userInfo, (value) => value.toMap()),
    };
  }

  factory SecurityGatewayApplicationUpstreamProxyProtocolContextualHeaders.fromMap(Map<String, dynamic> map) {
    return SecurityGatewayApplicationUpstreamProxyProtocolContextualHeaders(
      deviceInfo: (() { final guardedValue = map['deviceInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersDeviceInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      groupInfo: (() { final guardedValue = map['groupInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersGroupInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      outputType: (() { final guardedValue = map['outputType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userInfo: (() { final guardedValue = map['userInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityGatewayApplicationUpstreamProxyProtocolContextualHeadersUserInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

