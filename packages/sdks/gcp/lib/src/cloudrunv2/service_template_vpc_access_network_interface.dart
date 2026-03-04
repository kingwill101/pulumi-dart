// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceTemplateVpcAccessNetworkInterface {
  /// The VPC network that the Cloud Run resource will be able to send traffic to. At least one of network or subnetwork must be specified. If both
  /// network and subnetwork are specified, the given VPC subnetwork must belong to the given VPC network. If network is not specified, it will be
  /// looked up from the subnetwork.
  final pulumi.Input<String>? network;

  /// The VPC subnetwork that the Cloud Run resource will get IPs from. At least one of network or subnetwork must be specified. If both
  /// network and subnetwork are specified, the given VPC subnetwork must belong to the given VPC network. If subnetwork is not specified, the
  /// subnetwork with the same name with the network will be used.
  final pulumi.Input<String>? subnetwork;

  /// Network tags applied to this Cloud Run service.
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [ServiceTemplateVpcAccessNetworkInterface].
  /// [network] The VPC network that the Cloud Run resource will be able to send traffic to. At least one of network or subnetwork must be specified. If both
  /// [subnetwork] The VPC subnetwork that the Cloud Run resource will get IPs from. At least one of network or subnetwork must be specified. If both
  /// [tags] Network tags applied to this Cloud Run service.
  ServiceTemplateVpcAccessNetworkInterface({
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

  factory ServiceTemplateVpcAccessNetworkInterface.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceTemplateVpcAccessNetworkInterface(
      network: (() {
        final guardedValue = map['network'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subnetwork: (() {
        final guardedValue = map['subnetwork'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
