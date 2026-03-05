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
      cidr: (() { final guardedValue = map['cidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipVersion: (() { final guardedValue = map['ipVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      neutronNetId: (() { final guardedValue = map['neutronNetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      neutronSubnetId: (() { final guardedValue = map['neutronSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      projectId: (() { final guardedValue = map['projectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityServiceIds: (() { final guardedValue = map['securityServiceIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      segmentationId: (() { final guardedValue = map['segmentationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

