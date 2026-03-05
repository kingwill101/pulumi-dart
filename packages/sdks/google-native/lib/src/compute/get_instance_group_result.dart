// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'named_port_response.dart';

/// Result data returned by getInstanceGroup.
class GetInstanceGroupResult {
  /// The creation timestamp for this instance group in RFC3339 text format.
  final String creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;
  /// The fingerprint of the named ports. The system uses this fingerprint to detect conflicts when multiple users change the named ports concurrently.
  final String fingerprint;
  /// The resource type, which is always compute#instanceGroup for instance groups.
  final String kind;
  /// The name of the instance group. The name must be 1-63 characters long, and comply with RFC1035.
  final String name;
  /// Assigns a name to a port number. For example: {name: "http", port: 80} This allows the system to reference ports by the assigned name instead of a port number. Named ports can also contain multiple ports. For example: [{name: "app1", port: 8080}, {name: "app1", port: 8081}, {name: "app2", port: 8082}] Named ports apply to all instances in this instance group.
  final List<NamedPortResponse> namedPorts;
  /// The URL of the network to which all instances in the instance group belong. If your instance has multiple network interfaces, then the network and subnetwork fields only refer to the network and subnet used by your primary interface (nic0).
  final String network;
  /// The URL of the region where the instance group is located (for regional resources).
  final String region;
  /// The URL for this instance group. The server generates this URL.
  final String selfLink;
  /// Server-defined URL for this resource with the resource id.
  final String selfLinkWithId;
  /// The total number of instances in the instance group.
  final int size;
  /// The URL of the subnetwork to which all instances in the instance group belong. If your instance has multiple network interfaces, then the network and subnetwork fields only refer to the network and subnet used by your primary interface (nic0).
  final String subnetwork;
  /// The URL of the zone where the instance group is located (for zonal resources).
  final String zone;

  /// Creates a new [GetInstanceGroupResult].
  /// [creationTimestamp] The creation timestamp for this instance group in RFC3339 text format.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [fingerprint] The fingerprint of the named ports. The system uses this fingerprint to detect conflicts when multiple users change the named ports concurrently.
  /// [kind] The resource type, which is always compute#instanceGroup for instance groups.
  /// [name] The name of the instance group. The name must be 1-63 characters long, and comply with RFC1035.
  /// [namedPorts] Assigns a name to a port number. For example: {name: "http", port: 80} This allows the system to reference ports by the assigned name instead of a port number. Named ports can also contain multiple ports. For example: [{name: "app1", port: 8080}, {name: "app1", port: 8081}, {name: "app2", port: 8082}] Named ports apply to all instances in this instance group.
  /// [network] The URL of the network to which all instances in the instance group belong. If your instance has multiple network interfaces, then the network and subnetwork fields only refer to the network and subnet used by your primary interface (nic0).
  /// [region] The URL of the region where the instance group is located (for regional resources).
  /// [selfLink] The URL for this instance group. The server generates this URL.
  /// [selfLinkWithId] Server-defined URL for this resource with the resource id.
  /// [size] The total number of instances in the instance group.
  /// [subnetwork] The URL of the subnetwork to which all instances in the instance group belong. If your instance has multiple network interfaces, then the network and subnetwork fields only refer to the network and subnet used by your primary interface (nic0).
  /// [zone] The URL of the zone where the instance group is located (for zonal resources).
  GetInstanceGroupResult({
    required this.creationTimestamp,
    required this.description,
    required this.fingerprint,
    required this.kind,
    required this.name,
    required this.namedPorts,
    required this.network,
    required this.region,
    required this.selfLink,
    required this.selfLinkWithId,
    required this.size,
    required this.subnetwork,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': creationTimestamp,
      'description': description,
      'fingerprint': fingerprint,
      'kind': kind,
      'name': name,
      'namedPorts': pulumi.Input.encodeList<NamedPortResponse, Map<String, dynamic>>(namedPorts, (value) => value.toMap()),
      'network': network,
      'region': region,
      'selfLink': selfLink,
      'selfLinkWithId': selfLinkWithId,
      'size': size,
      'subnetwork': subnetwork,
      'zone': zone,
    };
  }

  factory GetInstanceGroupResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupResult(
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      fingerprint: map['fingerprint'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      namedPorts: pulumi.Input.decodeList<NamedPortResponse>(map['namedPorts']!, (value) => NamedPortResponse.fromMap((value as Map).cast<String, dynamic>())),
      network: map['network'] as String,
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
      selfLinkWithId: map['selfLinkWithId'] as String,
      size: map['size'] as int,
      subnetwork: map['subnetwork'] as String,
      zone: map['zone'] as String,
    );
  }
}

