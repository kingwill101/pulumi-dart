// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Extra network settings. Only applicable in the App Engine flexible environment.
class NetworkResponseAppengineV1beta {
  /// List of ports, or port pairs, to forward from the virtual machine to the application container. Only applicable in the App Engine flexible environment.
  final pulumi.Input<List<String>> forwardedPorts;
  /// The IP mode for instances. Only applicable in the App Engine flexible environment.
  final pulumi.Input<String> instanceIpMode;
  /// Tag to apply to the instance during creation. Only applicable in the App Engine flexible environment.
  final pulumi.Input<String> instanceTag;
  /// Google Compute Engine network where the virtual machines are created. Specify the short name, not the resource path.Defaults to default.
  final pulumi.Input<String> name;
  /// Enable session affinity. Only applicable in the App Engine flexible environment.
  final pulumi.Input<bool> sessionAffinity;
  /// Google Cloud Platform sub-network where the virtual machines are created. Specify the short name, not the resource path.If a subnetwork name is specified, a network name will also be required unless it is for the default network. If the network that the instance is being created in is a Legacy network, then the IP address is allocated from the IPv4Range. If the network that the instance is being created in is an auto Subnet Mode Network, then only network name should be specified (not the subnetwork_name) and the IP address is created from the IPCidrRange of the subnetwork that exists in that zone for that network. If the network that the instance is being created in is a custom Subnet Mode Network, then the subnetwork_name must be specified and the IP address is created from the IPCidrRange of the subnetwork.If specified, the subnetwork must exist in the same region as the App Engine flexible environment application.
  final pulumi.Input<String> subnetworkName;

  /// Creates a new [NetworkResponseAppengineV1beta].
  /// [forwardedPorts] List of ports, or port pairs, to forward from the virtual machine to the application container. Only applicable in the App Engine flexible environment.
  /// [instanceIpMode] The IP mode for instances. Only applicable in the App Engine flexible environment.
  /// [instanceTag] Tag to apply to the instance during creation. Only applicable in the App Engine flexible environment.
  /// [name] Google Compute Engine network where the virtual machines are created. Specify the short name, not the resource path.Defaults to default.
  /// [sessionAffinity] Enable session affinity. Only applicable in the App Engine flexible environment.
  /// [subnetworkName] Google Cloud Platform sub-network where the virtual machines are created. Specify the short name, not the resource path.If a subnetwork name is specified, a network name will also be required unless it is for the default network. If the network that the instance is being created in is a Legacy network, then the IP address is allocated from the IPv4Range. If the network that the instance is being created in is an auto Subnet Mode Network, then only network name should be specified (not the subnetwork_name) and the IP address is created from the IPCidrRange of the subnetwork that exists in that zone for that network. If the network that the instance is being created in is a custom Subnet Mode Network, then the subnetwork_name must be specified and the IP address is created from the IPCidrRange of the subnetwork.If specified, the subnetwork must exist in the same region as the App Engine flexible environment application.
  NetworkResponseAppengineV1beta({
    required this.forwardedPorts,
    required this.instanceIpMode,
    required this.instanceTag,
    required this.name,
    required this.sessionAffinity,
    required this.subnetworkName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardedPorts': forwardedPorts,
      'instanceIpMode': instanceIpMode,
      'instanceTag': instanceTag,
      'name': name,
      'sessionAffinity': sessionAffinity,
      'subnetworkName': subnetworkName,
    };
  }

  factory NetworkResponseAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return NetworkResponseAppengineV1beta(
      forwardedPorts: ((map['forwardedPorts'] as List).cast<String>()).input(),
      instanceIpMode: (map['instanceIpMode'] as String).input(),
      instanceTag: (map['instanceTag'] as String).input(),
      name: (map['name'] as String).input(),
      sessionAffinity: (map['sessionAffinity'] as bool).input(),
      subnetworkName: (map['subnetworkName'] as String).input(),
    );
  }
}

