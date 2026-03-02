// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_instance_ip_mode.dart';

/// Extra network settings. Only applicable in the App Engine flexible environment.
class Network {
  /// List of ports, or port pairs, to forward from the virtual machine to the application container. Only applicable in the App Engine flexible environment.
  final pulumi.Input<List<String>>? forwardedPorts;
  /// The IP mode for instances. Only applicable in the App Engine flexible environment.
  final pulumi.Input<NetworkInstanceIpMode>? instanceIpMode;
  /// Tag to apply to the instance during creation. Only applicable in the App Engine flexible environment.
  final pulumi.Input<String>? instanceTag;
  /// Google Compute Engine network where the virtual machines are created. Specify the short name, not the resource path.Defaults to default.
  final pulumi.Input<String>? name;
  /// Enable session affinity. Only applicable in the App Engine flexible environment.
  final pulumi.Input<bool>? sessionAffinity;
  /// Google Cloud Platform sub-network where the virtual machines are created. Specify the short name, not the resource path.If a subnetwork name is specified, a network name will also be required unless it is for the default network. If the network that the instance is being created in is a Legacy network, then the IP address is allocated from the IPv4Range. If the network that the instance is being created in is an auto Subnet Mode Network, then only network name should be specified (not the subnetwork_name) and the IP address is created from the IPCidrRange of the subnetwork that exists in that zone for that network. If the network that the instance is being created in is a custom Subnet Mode Network, then the subnetwork_name must be specified and the IP address is created from the IPCidrRange of the subnetwork.If specified, the subnetwork must exist in the same region as the App Engine flexible environment application.
  final pulumi.Input<String>? subnetworkName;

  /// Creates a new [Network].
  /// [forwardedPorts] List of ports, or port pairs, to forward from the virtual machine to the application container. Only applicable in the App Engine flexible environment.
  /// [instanceIpMode] The IP mode for instances. Only applicable in the App Engine flexible environment.
  /// [instanceTag] Tag to apply to the instance during creation. Only applicable in the App Engine flexible environment.
  /// [name] Google Compute Engine network where the virtual machines are created. Specify the short name, not the resource path.Defaults to default.
  /// [sessionAffinity] Enable session affinity. Only applicable in the App Engine flexible environment.
  /// [subnetworkName] Google Cloud Platform sub-network where the virtual machines are created. Specify the short name, not the resource path.If a subnetwork name is specified, a network name will also be required unless it is for the default network. If the network that the instance is being created in is a Legacy network, then the IP address is allocated from the IPv4Range. If the network that the instance is being created in is an auto Subnet Mode Network, then only network name should be specified (not the subnetwork_name) and the IP address is created from the IPCidrRange of the subnetwork that exists in that zone for that network. If the network that the instance is being created in is a custom Subnet Mode Network, then the subnetwork_name must be specified and the IP address is created from the IPCidrRange of the subnetwork.If specified, the subnetwork must exist in the same region as the App Engine flexible environment application.
  Network({
    this.forwardedPorts,
    this.instanceIpMode,
    this.instanceTag,
    this.name,
    this.sessionAffinity,
    this.subnetworkName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardedPorts': ?forwardedPorts,
      'instanceIpMode': ?pulumi.Input.mapOptionalInputValue<NetworkInstanceIpMode, String>(instanceIpMode, (value) => value.value),
      'instanceTag': ?instanceTag,
      'name': ?name,
      'sessionAffinity': ?sessionAffinity,
      'subnetworkName': ?subnetworkName,
    };
  }

  factory Network.fromMap(Map<String, dynamic> map) {
    return Network(
      forwardedPorts: map['forwardedPorts'] == null ? null : ((map['forwardedPorts'] as List).cast<String>()).input(),
      instanceIpMode: map['instanceIpMode'] == null ? null : (NetworkInstanceIpMode.fromValue(map['instanceIpMode'] as String)).input(),
      instanceTag: map['instanceTag'] == null ? null : (map['instanceTag'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      sessionAffinity: map['sessionAffinity'] == null ? null : (map['sessionAffinity'] as bool).input(),
      subnetworkName: map['subnetworkName'] == null ? null : (map['subnetworkName'] as String).input(),
    );
  }
}

