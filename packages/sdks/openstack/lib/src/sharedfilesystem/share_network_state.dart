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
    pulumi.Output<String>? cidr,
    pulumi.Output<String>? description,
    pulumi.Output<int>? ipVersion,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkType,
    pulumi.Output<String>? neutronNetId,
    pulumi.Output<String>? neutronSubnetId,
    pulumi.Output<String>? projectId,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? securityServiceIds,
    pulumi.Output<int>? segmentationId,
  }) :
      cidr = pulumi.Input.asOptionalInput<String>(cidr),
      description = pulumi.Input.asOptionalInput<String>(description),
      ipVersion = pulumi.Input.asOptionalInput<int>(ipVersion),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkType = pulumi.Input.asOptionalInput<String>(networkType),
      neutronNetId = pulumi.Input.asOptionalInput<String>(neutronNetId),
      neutronSubnetId = pulumi.Input.asOptionalInput<String>(neutronSubnetId),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityServiceIds = pulumi.Input.asOptionalInput<List<String>>(securityServiceIds),
      segmentationId = pulumi.Input.asOptionalInput<int>(segmentationId);

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
      cidr: map['cidr'] == null ? null : pulumi.Output.create<String>(map['cidr'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      ipVersion: map['ipVersion'] == null ? null : pulumi.Output.create<int>(map['ipVersion'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkType: map['networkType'] == null ? null : pulumi.Output.create<String>(map['networkType'] as String),
      neutronNetId: map['neutronNetId'] == null ? null : pulumi.Output.create<String>(map['neutronNetId'] as String),
      neutronSubnetId: map['neutronSubnetId'] == null ? null : pulumi.Output.create<String>(map['neutronSubnetId'] as String),
      projectId: map['projectId'] == null ? null : pulumi.Output.create<String>(map['projectId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityServiceIds: map['securityServiceIds'] == null ? null : pulumi.Output.create<List<String>>((map['securityServiceIds'] as List).cast<String>()),
      segmentationId: map['segmentationId'] == null ? null : pulumi.Output.create<int>(map['segmentationId'] as int),
    );
  }
}

