// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SegmentV2 resources.
class SegmentV2State {
  /// Creation timestamp (RFC3339 format).
  final pulumi.Input<String>? createdAt;
  /// A description for the segment.
  final pulumi.Input<String>? description;
  /// A name for the segment.
  final pulumi.Input<String>? name;
  /// The UUID of the network this segment belongs to.
  /// Changing this will create a new segment.
  final pulumi.Input<String>? networkId;
  /// The network type. Valid values depend on the
  /// backend (e.g., `vlan`, `vxlan`, `flat`, `gre`, `geneve`, `local`). Changing
  /// this will create a new segment.
  final pulumi.Input<String>? networkType;
  /// The name of the physical network. Changing this
  /// will create a new segment.
  final pulumi.Input<String>? physicalNetwork;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a Neutron network. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// segment.
  final pulumi.Input<String>? region;
  /// The revision number of the segment.
  final pulumi.Input<int>? revisionNumber;
  /// A segmentation identifier. Changing is allowed
  /// only for `vlan`.
  final pulumi.Input<int>? segmentationId;
  /// Last update timestamp (RFC3339 format).
  final pulumi.Input<String>? updatedAt;

  /// Creates a new [SegmentV2State].
  /// [createdAt] Creation timestamp (RFC3339 format).
  /// [description] A description for the segment.
  /// [name] A name for the segment.
  /// [networkId] The UUID of the network this segment belongs to.
  /// [networkType] The network type. Valid values depend on the
  /// [physicalNetwork] The name of the physical network. Changing this
  /// [region] The region in which to obtain the V2 Networking client.
  /// [revisionNumber] The revision number of the segment.
  /// [segmentationId] A segmentation identifier. Changing is allowed
  /// [updatedAt] Last update timestamp (RFC3339 format).
  SegmentV2State({
    this.createdAt,
    this.description,
    this.name,
    this.networkId,
    this.networkType,
    this.physicalNetwork,
    this.region,
    this.revisionNumber,
    this.segmentationId,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': ?createdAt,
      'description': ?description,
      'name': ?name,
      'networkId': ?networkId,
      'networkType': ?networkType,
      'physicalNetwork': ?physicalNetwork,
      'region': ?region,
      'revisionNumber': ?revisionNumber,
      'segmentationId': ?segmentationId,
      'updatedAt': ?updatedAt,
    };
  }

  factory SegmentV2State.fromMap(Map<String, dynamic> map) {
    return SegmentV2State(
      createdAt: map['createdAt'] == null ? null : (map['createdAt']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networkId: map['networkId'] == null ? null : (map['networkId']! as String).input(),
      networkType: map['networkType'] == null ? null : (map['networkType']! as String).input(),
      physicalNetwork: map['physicalNetwork'] == null ? null : (map['physicalNetwork']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      revisionNumber: map['revisionNumber'] == null ? null : (map['revisionNumber']! as int).input(),
      segmentationId: map['segmentationId'] == null ? null : (map['segmentationId']! as int).input(),
      updatedAt: map['updatedAt'] == null ? null : (map['updatedAt']! as String).input(),
    );
  }
}

