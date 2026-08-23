// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// RoutingVPC contains information about the VPC networks associated with the spokes of a Network Connectivity Center hub.
class RoutingVPCResponse {
  /// If true, indicates that this VPC network is currently associated with spokes that use the data transfer feature (spokes where the site_to_site_data_transfer field is set to true). If you create new spokes that use data transfer, they must be associated with this VPC network. At most, one VPC network will have this field set to true.
  final pulumi.Input<bool> requiredForNewSiteToSiteDataTransferSpokes;
  /// The URI of the VPC network.
  final pulumi.Input<String> uri;

  /// Creates a new [RoutingVPCResponse].
  /// [requiredForNewSiteToSiteDataTransferSpokes] If true, indicates that this VPC network is currently associated with spokes that use the data transfer feature (spokes where the site_to_site_data_transfer field is set to true). If you create new spokes that use data transfer, they must be associated with this VPC network. At most, one VPC network will have this field set to true.
  /// [uri] The URI of the VPC network.
  const RoutingVPCResponse({
    required this.requiredForNewSiteToSiteDataTransferSpokes,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requiredForNewSiteToSiteDataTransferSpokes': requiredForNewSiteToSiteDataTransferSpokes,
      'uri': uri,
    };
  }

  factory RoutingVPCResponse.fromMap(Map<String, dynamic> map) {
    return RoutingVPCResponse(
      requiredForNewSiteToSiteDataTransferSpokes: pulumi.Input.fromValue(map['requiredForNewSiteToSiteDataTransferSpokes'] as bool),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}
