// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_network_config_authorized_external_network.dart';

class InstanceNetworkConfig {
  /// Name of the allocated IP range for the private IP AlloyDB instance, for example: "google-managed-services-default".
  /// If set, the instance IPs will be created from this allocated range and will override the IP range used by the parent cluster.
  /// The range name must comply with RFC 1035. Specifically, the name must be 1-63 characters long and match the regular expression a-z?.
  final pulumi.Input<String>? allocatedIpRangeOverride;
  /// A list of external networks authorized to access this instance. This
  /// field is only allowed to be set when `enable_public_ip` is set to
  /// true.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceNetworkConfigAuthorizedExternalNetwork>>? authorizedExternalNetworks;
  /// Enabling outbound public ip for the instance.
  final pulumi.Input<bool>? enableOutboundPublicIp;
  /// Enabling public ip for the instance. If a user wishes to disable this,
  /// please also clear the list of the authorized external networks set on
  /// the same instance.
  final pulumi.Input<bool>? enablePublicIp;

  /// Creates a new [InstanceNetworkConfig].
  /// [allocatedIpRangeOverride] Name of the allocated IP range for the private IP AlloyDB instance, for example: "google-managed-services-default".
  /// [authorizedExternalNetworks] A list of external networks authorized to access this instance. This
  /// [enableOutboundPublicIp] Enabling outbound public ip for the instance.
  /// [enablePublicIp] Enabling public ip for the instance. If a user wishes to disable this,
  InstanceNetworkConfig({
    this.allocatedIpRangeOverride,
    this.authorizedExternalNetworks,
    this.enableOutboundPublicIp,
    this.enablePublicIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedIpRangeOverride': ?allocatedIpRangeOverride,
      'authorizedExternalNetworks': ?pulumi.Input.mapOptionalInputValue<List<InstanceNetworkConfigAuthorizedExternalNetwork>, List<Map<String, dynamic>>>(authorizedExternalNetworks, (value) => pulumi.Input.encodeList<InstanceNetworkConfigAuthorizedExternalNetwork, Map<String, dynamic>>(value, (value) => value.toMap())),
      'enableOutboundPublicIp': ?enableOutboundPublicIp,
      'enablePublicIp': ?enablePublicIp,
    };
  }

  factory InstanceNetworkConfig.fromMap(Map<String, dynamic> map) {
    return InstanceNetworkConfig(
      allocatedIpRangeOverride: map['allocatedIpRangeOverride'] == null ? null : (map['allocatedIpRangeOverride'] as String).input(),
      authorizedExternalNetworks: map['authorizedExternalNetworks'] == null ? null : (pulumi.Input.decodeList<InstanceNetworkConfigAuthorizedExternalNetwork>(map['authorizedExternalNetworks'], (value) => InstanceNetworkConfigAuthorizedExternalNetwork.fromMap((value as Map).cast<String, dynamic>()))).input(),
      enableOutboundPublicIp: map['enableOutboundPublicIp'] == null ? null : (map['enableOutboundPublicIp'] as bool).input(),
      enablePublicIp: map['enablePublicIp'] == null ? null : (map['enablePublicIp'] as bool).input(),
    );
  }
}

