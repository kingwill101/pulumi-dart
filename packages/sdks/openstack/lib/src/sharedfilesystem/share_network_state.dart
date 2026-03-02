// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ShareNetwork resources.
class ShareNetworkState {
  /// The share network CIDR.
  final pulumi.Input<String>? cidr;
  /// The human-readable description for the share network.
  /// Changing this updates the description of the existing share network.
  final pulumi.Input<String>? description;
  /// The IP version of the share network. Can either be 4 or 6.
  final pulumi.Input<int>? ipVersion;
  /// The name for the share network. Changing this updates the name
  /// of the existing share network.
  final pulumi.Input<String>? name;
  /// The share network type. Can either be VLAN, VXLAN, GRE, or flat.
  final pulumi.Input<String>? networkType;
  /// The UUID of a neutron network when setting up or updating
  /// a share network. Changing this updates the existing share network if it's not used by
  /// shares.
  final pulumi.Input<String>? neutronNetId;
  /// The UUID of the neutron subnet when setting up or
  /// updating a share network. Changing this updates the existing share network if it's
  /// not used by shares.
  final pulumi.Input<String>? neutronSubnetId;
  /// The owner of the Share Network.
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V2 Shared File System client.
  /// A Shared File System client is needed to create a share network. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// share network.
  final pulumi.Input<String>? region;
  /// The list of security service IDs to associate with
  /// the share network. The security service must be specified by ID and not name.
  final pulumi.Input<List<String>>? securityServiceIds;
  /// The share network segmentation ID.
  final pulumi.Input<int>? segmentationId;

  /// Creates a new [ShareNetworkState].
  /// [cidr] The share network CIDR.
  /// [description] The human-readable description for the share network.
  /// [ipVersion] The IP version of the share network. Can either be 4 or 6.
  /// [name] The name for the share network. Changing this updates the name
  /// [networkType] The share network type. Can either be VLAN, VXLAN, GRE, or flat.
  /// [neutronNetId] The UUID of a neutron network when setting up or updating
  /// [neutronSubnetId] The UUID of the neutron subnet when setting up or
  /// [projectId] The owner of the Share Network.
  /// [region] The region in which to obtain the V2 Shared File System client.
  /// [securityServiceIds] The list of security service IDs to associate with
  /// [segmentationId] The share network segmentation ID.
  ShareNetworkState({
    this.cidr,
    this.description,
    this.ipVersion,
    this.name,
    this.networkType,
    this.neutronNetId,
    this.neutronSubnetId,
    this.projectId,
    this.region,
    this.securityServiceIds,
    this.segmentationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidr': ?cidr,
      'description': ?description,
      'ipVersion': ?ipVersion,
      'name': ?name,
      'networkType': ?networkType,
      'neutronNetId': ?neutronNetId,
      'neutronSubnetId': ?neutronSubnetId,
      'projectId': ?projectId,
      'region': ?region,
      'securityServiceIds': ?securityServiceIds,
      'segmentationId': ?segmentationId,
    };
  }

  factory ShareNetworkState.fromMap(Map<String, dynamic> map) {
    return ShareNetworkState(
      cidr: map['cidr'] == null ? null : (map['cidr'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      ipVersion: map['ipVersion'] == null ? null : (map['ipVersion'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      networkType: map['networkType'] == null ? null : (map['networkType'] as String).input(),
      neutronNetId: map['neutronNetId'] == null ? null : (map['neutronNetId'] as String).input(),
      neutronSubnetId: map['neutronSubnetId'] == null ? null : (map['neutronSubnetId'] as String).input(),
      projectId: map['projectId'] == null ? null : (map['projectId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      securityServiceIds: map['securityServiceIds'] == null ? null : ((map['securityServiceIds'] as List).cast<String>()).input(),
      segmentationId: map['segmentationId'] == null ? null : (map['segmentationId'] as int).input(),
    );
  }
}

