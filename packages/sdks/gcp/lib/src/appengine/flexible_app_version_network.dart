// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlexibleAppVersionNetwork {
  /// List of ports, or port pairs, to forward from the virtual machine to the application container.
  final pulumi.Input<List<String>>? forwardedPorts;
  /// Prevent instances from receiving an ephemeral external IP address.
  /// Possible values are: `EXTERNAL`, `INTERNAL`.
  final pulumi.Input<String>? instanceIpMode;
  /// Tag to apply to the instance during creation.
  final pulumi.Input<String>? instanceTag;
  /// Google Compute Engine network where the virtual machines are created. Specify the short name, not the resource path.
  final pulumi.Input<String> name;
  /// Enable session affinity.
  final pulumi.Input<bool>? sessionAffinity;
  /// Google Cloud Platform sub-network where the virtual machines are created. Specify the short name, not the resource path.
  /// If the network that the instance is being created in is a Legacy network, then the IP address is allocated from the IPv4Range.
  /// If the network that the instance is being created in is an auto Subnet Mode Network, then only network name should be specified (not the subnetworkName) and the IP address is created from the IPCidrRange of the subnetwork that exists in that zone for that network.
  /// If the network that the instance is being created in is a custom Subnet Mode Network, then the subnetworkName must be specified and the IP address is created from the IPCidrRange of the subnetwork.
  /// If specified, the subnetwork must exist in the same region as the App Engine flexible environment application.
  final pulumi.Input<String>? subnetwork;

  /// Creates a new [FlexibleAppVersionNetwork].
  /// [forwardedPorts] List of ports, or port pairs, to forward from the virtual machine to the application container.
  /// [instanceIpMode] Prevent instances from receiving an ephemeral external IP address.
  /// [instanceTag] Tag to apply to the instance during creation.
  /// [name] Google Compute Engine network where the virtual machines are created. Specify the short name, not the resource path.
  /// [sessionAffinity] Enable session affinity.
  /// [subnetwork] Google Cloud Platform sub-network where the virtual machines are created. Specify the short name, not the resource path.
  FlexibleAppVersionNetwork({
    this.forwardedPorts,
    this.instanceIpMode,
    this.instanceTag,
    required this.name,
    this.sessionAffinity,
    this.subnetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardedPorts': ?forwardedPorts,
      'instanceIpMode': ?instanceIpMode,
      'instanceTag': ?instanceTag,
      'name': name,
      'sessionAffinity': ?sessionAffinity,
      'subnetwork': ?subnetwork,
    };
  }

  factory FlexibleAppVersionNetwork.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionNetwork(
      forwardedPorts: map['forwardedPorts'] == null ? null : ((map['forwardedPorts']! as List).cast<String>()).input(),
      instanceIpMode: map['instanceIpMode'] == null ? null : (map['instanceIpMode']! as String).input(),
      instanceTag: map['instanceTag'] == null ? null : (map['instanceTag']! as String).input(),
      name: (map['name'] as String).input(),
      sessionAffinity: map['sessionAffinity'] == null ? null : (map['sessionAffinity']! as bool).input(),
      subnetwork: map['subnetwork'] == null ? null : (map['subnetwork']! as String).input(),
    );
  }
}

