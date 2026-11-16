// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StandardAppVersionVpcAccessNetworkInterface {
  /// The VPC network that the App Engine resource will be able to send traffic to. At least one of network or subnetwork must be specified. If both network and subnetwork are specified, the given VPC subnetwork must belong to the given VPC network. If network is not specified, it will be looked up from the subnetwork. Could be either a short name or a full path (e.g. `default` or `projects/my-project/global/networks/default`).
  final pulumi.Input<String?>? network;
  /// The VPC subnetwork that the App Engine resource will get IPs from. At least one of network or subnetwork must be specified. If both network and subnetwork are specified, the given VPC subnetwork must belong to the given VPC network. If subnetwork is not specified, the subnetwork with the same name with the network will be used. Could be either a short name or a full path (e.g. `default` or `projects/my-project/regions/us-central1/subnetworks/default`).
  final pulumi.Input<String?>? subnetwork;
  /// Network tags applied to this App Engine version.
  final pulumi.Input<List<String>?>? tags;

  /// Creates a new [StandardAppVersionVpcAccessNetworkInterface].
  /// [network] The VPC network that the App Engine resource will be able to send traffic to. At least one of network or subnetwork must be specified. If both network and subnetwork are specified, the given VPC subnetwork must belong to the given VPC network. If network is not specified, it will be looked up from the subnetwork. Could be either a short name or a full path (e.g. `default` or `projects/my-project/global/networks/default`).
  /// [subnetwork] The VPC subnetwork that the App Engine resource will get IPs from. At least one of network or subnetwork must be specified. If both network and subnetwork are specified, the given VPC subnetwork must belong to the given VPC network. If subnetwork is not specified, the subnetwork with the same name with the network will be used. Could be either a short name or a full path (e.g. `default` or `projects/my-project/regions/us-central1/subnetworks/default`).
  /// [tags] Network tags applied to this App Engine version.
  const StandardAppVersionVpcAccessNetworkInterface({
    this.network,
    this.subnetwork,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'network': ?network,
      'subnetwork': ?subnetwork,
      'tags': ?tags,
    };
  }

  factory StandardAppVersionVpcAccessNetworkInterface.fromMap(Map<String, dynamic> map) {
    return StandardAppVersionVpcAccessNetworkInterface(
      network: (() { final guardedValue = map['network']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetwork: (() { final guardedValue = map['subnetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
