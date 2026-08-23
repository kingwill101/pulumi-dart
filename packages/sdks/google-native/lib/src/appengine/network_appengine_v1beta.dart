// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_instance_ip_mode_appengine_v1beta.dart';

/// Extra network settings. Only applicable in the App Engine flexible environment.
class NetworkAppengineV1beta {
  /// List of ports, or port pairs, to forward from the virtual machine to the application container. Only applicable in the App Engine flexible environment.
  final pulumi.Input<List<String>>? forwardedPorts;
  /// The IP mode for instances. Only applicable in the App Engine flexible environment.
  final pulumi.Input<NetworkInstanceIpModeAppengineV1beta>? instanceIpMode;
  /// Tag to apply to the instance during creation. Only applicable in the App Engine flexible environment.
  final pulumi.Input<String>? instanceTag;
  /// Google Compute Engine network where the virtual machines are created. Specify the short name, not the resource path.Defaults to default.
  final pulumi.Input<String>? name;
  /// Enable session affinity. Only applicable in the App Engine flexible environment.
  final pulumi.Input<bool>? sessionAffinity;
  /// Google Cloud Platform sub-network where the virtual machines are created. Specify the short name, not the resource path.If a subnetwork name is specified, a network name will also be required unless it is for the default network. If the network that the instance is being created in is a Legacy network, then the IP address is allocated from the IPv4Range. If the network that the instance is being created in is an auto Subnet Mode Network, then only network name should be specified (not the subnetwork_name) and the IP address is created from the IPCidrRange of the subnetwork that exists in that zone for that network. If the network that the instance is being created in is a custom Subnet Mode Network, then the subnetwork_name must be specified and the IP address is created from the IPCidrRange of the subnetwork.If specified, the subnetwork must exist in the same region as the App Engine flexible environment application.
  final pulumi.Input<String>? subnetworkName;

  /// Creates a new [NetworkAppengineV1beta].
  /// [forwardedPorts] List of ports, or port pairs, to forward from the virtual machine to the application container. Only applicable in the App Engine flexible environment.
  /// [instanceIpMode] The IP mode for instances. Only applicable in the App Engine flexible environment.
  /// [instanceTag] Tag to apply to the instance during creation. Only applicable in the App Engine flexible environment.
  /// [name] Google Compute Engine network where the virtual machines are created. Specify the short name, not the resource path.Defaults to default.
  /// [sessionAffinity] Enable session affinity. Only applicable in the App Engine flexible environment.
  /// [subnetworkName] Google Cloud Platform sub-network where the virtual machines are created. Specify the short name, not the resource path.If a subnetwork name is specified, a network name will also be required unless it is for the default network. If the network that the instance is being created in is a Legacy network, then the IP address is allocated from the IPv4Range. If the network that the instance is being created in is an auto Subnet Mode Network, then only network name should be specified (not the subnetwork_name) and the IP address is created from the IPCidrRange of the subnetwork that exists in that zone for that network. If the network that the instance is being created in is a custom Subnet Mode Network, then the subnetwork_name must be specified and the IP address is created from the IPCidrRange of the subnetwork.If specified, the subnetwork must exist in the same region as the App Engine flexible environment application.
  const NetworkAppengineV1beta({
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
      'instanceIpMode': ?pulumi.Input.mapOptionalInputValue<NetworkInstanceIpModeAppengineV1beta, String>(instanceIpMode, (value) => value.wireValue),
      'instanceTag': ?instanceTag,
      'name': ?name,
      'sessionAffinity': ?sessionAffinity,
      'subnetworkName': ?subnetworkName,
    };
  }

  factory NetworkAppengineV1beta.fromMap(Map<String, dynamic> map) {
    return NetworkAppengineV1beta(
      forwardedPorts: (() { final guardedValue = map['forwardedPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instanceIpMode: (() { final guardedValue = map['instanceIpMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NetworkInstanceIpModeAppengineV1beta.fromValue(guardedValue as String)); })(),
      instanceTag: (() { final guardedValue = map['instanceTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sessionAffinity: (() { final guardedValue = map['sessionAffinity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      subnetworkName: (() { final guardedValue = map['subnetworkName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
