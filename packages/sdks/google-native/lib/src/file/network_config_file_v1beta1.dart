// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_config_connect_mode_file_v1beta1.dart';
import 'network_config_modes_item_file_v1beta1.dart';

/// Network configuration for the instance.
class NetworkConfigFileV1beta1 {
  /// The network connect mode of the Filestore instance. If not provided, the connect mode defaults to DIRECT_PEERING.
  final pulumi.Input<NetworkConfigConnectModeFileV1beta1>? connectMode;
  /// Internet protocol versions for which the instance has IP addresses assigned. For this version, only MODE_IPV4 is supported.
  final pulumi.Input<List<NetworkConfigModesItemFileV1beta1>>? modes;
  /// The name of the Google Compute Engine [VPC network](https://cloud.google.com/vpc/docs/vpc) to which the instance is connected.
  final pulumi.Input<String>? network;
  /// Optional, reserved_ip_range can have one of the following two types of values. * CIDR range value when using DIRECT_PEERING connect mode. * [Allocated IP address range](https://cloud.google.com/compute/docs/ip-addresses/reserve-static-internal-ip-address) when using PRIVATE_SERVICE_ACCESS connect mode. When the name of an allocated IP address range is specified, it must be one of the ranges associated with the private service access connection. When specified as a direct CIDR value, it must be a /29 CIDR block for Basic tier, a /24 CIDR block for High Scale tier, or a /26 CIDR block for Enterprise tier in one of the [internal IP address ranges](https://www.arin.net/reference/research/statistics/address_filters/) that identifies the range of IP addresses reserved for this instance. For example, 10.0.0.0/29, 192.168.0.0/24, or 192.168.0.0/26, respectively. The range you specify can't overlap with either existing subnets or assigned IP address ranges for other Filestore instances in the selected VPC network.
  final pulumi.Input<String>? reservedIpRange;

  /// Creates a new [NetworkConfigFileV1beta1].
  /// [connectMode] The network connect mode of the Filestore instance. If not provided, the connect mode defaults to DIRECT_PEERING.
  /// [modes] Internet protocol versions for which the instance has IP addresses assigned. For this version, only MODE_IPV4 is supported.
  /// [network] The name of the Google Compute Engine [VPC network](https://cloud.google.com/vpc/docs/vpc) to which the instance is connected.
  /// [reservedIpRange] Optional, reserved_ip_range can have one of the following two types of values. * CIDR range value when using DIRECT_PEERING connect mode. * [Allocated IP address range](https://cloud.google.com/compute/docs/ip-addresses/reserve-static-internal-ip-address) when using PRIVATE_SERVICE_ACCESS connect mode. When the name of an allocated IP address range is specified, it must be one of the ranges associated with the private service access connection. When specified as a direct CIDR value, it must be a /29 CIDR block for Basic tier, a /24 CIDR block for High Scale tier, or a /26 CIDR block for Enterprise tier in one of the [internal IP address ranges](https://www.arin.net/reference/research/statistics/address_filters/) that identifies the range of IP addresses reserved for this instance. For example, 10.0.0.0/29, 192.168.0.0/24, or 192.168.0.0/26, respectively. The range you specify can't overlap with either existing subnets or assigned IP address ranges for other Filestore instances in the selected VPC network.
  NetworkConfigFileV1beta1({
    this.connectMode,
    this.modes,
    this.network,
    this.reservedIpRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectMode': ?pulumi.Input.mapOptionalInputValue<NetworkConfigConnectModeFileV1beta1, String>(connectMode, (value) => value.value),
      'modes': ?pulumi.Input.mapOptionalInputValue<List<NetworkConfigModesItemFileV1beta1>, List<String>>(modes, (value) => pulumi.Input.encodeList<NetworkConfigModesItemFileV1beta1, String>(value, (value) => value.value)),
      'network': ?network,
      'reservedIpRange': ?reservedIpRange,
    };
  }

  factory NetworkConfigFileV1beta1.fromMap(Map<String, dynamic> map) {
    return NetworkConfigFileV1beta1(
      connectMode: map['connectMode'] == null ? null : (NetworkConfigConnectModeFileV1beta1.fromValue(map['connectMode']! as String)).input(),
      modes: map['modes'] == null ? null : (pulumi.Input.decodeList<NetworkConfigModesItemFileV1beta1>(map['modes']!, (value) => NetworkConfigModesItemFileV1beta1.fromValue(value as String))).input(),
      network: map['network'] == null ? null : (map['network']! as String).input(),
      reservedIpRange: map['reservedIpRange'] == null ? null : (map['reservedIpRange']! as String).input(),
    );
  }
}

