// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_config_web_server_network_access_control_allowed_ip_range.dart';

class EnvironmentConfigWebServerNetworkAccessControl {
  /// A collection of allowed IP ranges with descriptions.
  final pulumi.Input<List<EnvironmentConfigWebServerNetworkAccessControlAllowedIpRange>>? allowedIpRanges;

  /// Creates a new [EnvironmentConfigWebServerNetworkAccessControl].
  /// [allowedIpRanges] A collection of allowed IP ranges with descriptions.
  EnvironmentConfigWebServerNetworkAccessControl({
    this.allowedIpRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedIpRanges': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentConfigWebServerNetworkAccessControlAllowedIpRange>, List<Map<String, dynamic>>>(allowedIpRanges, (value) => pulumi.Input.encodeList<EnvironmentConfigWebServerNetworkAccessControlAllowedIpRange, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EnvironmentConfigWebServerNetworkAccessControl.fromMap(Map<String, dynamic> map) {
    return EnvironmentConfigWebServerNetworkAccessControl(
      allowedIpRanges: map['allowedIpRanges'] == null ? null : (pulumi.Input.decodeList<EnvironmentConfigWebServerNetworkAccessControlAllowedIpRange>(map['allowedIpRanges'], (value) => EnvironmentConfigWebServerNetworkAccessControlAllowedIpRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

