// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StandardAppVersionVpcAccessNetworkInterface {
  /// The name of the VPC network to which the version connects (e.g. `projects/my-project/global/networks/default`).
  final pulumi.Input<String?>? network;
  /// The name of the subnetwork to which the version connects (e.g. `projects/my-project/regions/us-central1/subnetworks/default`).
  final pulumi.Input<String?>? subnetwork;
  /// Network tags applied to this App Engine version.
  final pulumi.Input<List<String>?>? tags;

  /// Creates a new [StandardAppVersionVpcAccessNetworkInterface].
  /// [network] The name of the VPC network to which the version connects (e.g. `projects/my-project/global/networks/default`).
  /// [subnetwork] The name of the subnetwork to which the version connects (e.g. `projects/my-project/regions/us-central1/subnetworks/default`).
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
