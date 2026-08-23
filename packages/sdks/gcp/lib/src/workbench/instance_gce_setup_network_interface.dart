// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_gce_setup_network_interface_access_config.dart';

class InstanceGceSetupNetworkInterface {
  /// Optional. An array of configurations for this interface. Currently, only one access
  /// config, ONE_TO_ONE_NAT, is supported. If no accessConfigs specified, the
  /// instance will have an external internet access through an ephemeral
  /// external IP address.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceGceSetupNetworkInterfaceAccessConfig>>? accessConfigs;
  /// Optional. The name of the VPC that this VM instance is in.
  final pulumi.Input<String>? network;
  /// Optional. The type of vNIC to be used on this interface. This
  /// may be gVNIC or VirtioNet.
  /// Possible values are: `VIRTIO_NET`, `GVNIC`.
  final pulumi.Input<String>? nicType;
  /// Optional. The name of the subnet that this VM instance is in.
  final pulumi.Input<String>? subnet;

  /// Creates a new [InstanceGceSetupNetworkInterface].
  /// [accessConfigs] Optional. An array of configurations for this interface. Currently, only one access
  /// [network] Optional. The name of the VPC that this VM instance is in.
  /// [nicType] Optional. The type of vNIC to be used on this interface. This
  /// [subnet] Optional. The name of the subnet that this VM instance is in.
  const InstanceGceSetupNetworkInterface({
    this.accessConfigs,
    this.network,
    this.nicType,
    this.subnet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessConfigs': ?pulumi.Input.mapOptionalInputValue<List<InstanceGceSetupNetworkInterfaceAccessConfig>, List<Map<String, dynamic>>>(accessConfigs, (value) => pulumi.Input.encodeList<InstanceGceSetupNetworkInterfaceAccessConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'network': ?network,
      'nicType': ?nicType,
      'subnet': ?subnet,
    };
  }

  factory InstanceGceSetupNetworkInterface.fromMap(Map<String, dynamic> map) {
    return InstanceGceSetupNetworkInterface(
      accessConfigs: (() { final guardedValue = map['accessConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceGceSetupNetworkInterfaceAccessConfig>(guardedValue, (value) => InstanceGceSetupNetworkInterfaceAccessConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nicType: (() { final guardedValue = map['nicType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnet: (() { final guardedValue = map['subnet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
