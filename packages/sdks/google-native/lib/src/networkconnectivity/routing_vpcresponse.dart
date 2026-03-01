// ignore_for_file: unused_element, unnecessary_cast


/// RoutingVPC contains information about the VPC networks associated with the spokes of a Network Connectivity Center hub.
class RoutingVPCResponse {
  /// If true, indicates that this VPC network is currently associated with spokes that use the data transfer feature (spokes where the site_to_site_data_transfer field is set to true). If you create new spokes that use data transfer, they must be associated with this VPC network. At most, one VPC network will have this field set to true.
  final bool requiredForNewSiteToSiteDataTransferSpokes;
  /// The URI of the VPC network.
  final String uri;

  /// Creates a new [RoutingVPCResponse].
  /// [requiredForNewSiteToSiteDataTransferSpokes] If true, indicates that this VPC network is currently associated with spokes that use the data transfer feature (spokes where the site_to_site_data_transfer field is set to true). If you create new spokes that use data transfer, they must be associated with this VPC network. At most, one VPC network will have this field set to true.
  /// [uri] The URI of the VPC network.
  RoutingVPCResponse({
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
      requiredForNewSiteToSiteDataTransferSpokes: map['requiredForNewSiteToSiteDataTransferSpokes'] as bool,
      uri: map['uri'] as String,
    );
  }
}

