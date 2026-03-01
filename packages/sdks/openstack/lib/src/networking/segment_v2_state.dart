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
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkId,
    pulumi.Output<String>? networkType,
    pulumi.Output<String>? physicalNetwork,
    pulumi.Output<String>? region,
    pulumi.Output<int>? revisionNumber,
    pulumi.Output<int>? segmentationId,
    pulumi.Output<String>? updatedAt,
  }) :
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkId = pulumi.Input.asOptionalInput<String>(networkId),
      networkType = pulumi.Input.asOptionalInput<String>(networkType),
      physicalNetwork = pulumi.Input.asOptionalInput<String>(physicalNetwork),
      region = pulumi.Input.asOptionalInput<String>(region),
      revisionNumber = pulumi.Input.asOptionalInput<int>(revisionNumber),
      segmentationId = pulumi.Input.asOptionalInput<int>(segmentationId),
      updatedAt = pulumi.Input.asOptionalInput<String>(updatedAt);

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
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkId: map['networkId'] == null ? null : pulumi.Output.create<String>(map['networkId'] as String),
      networkType: map['networkType'] == null ? null : pulumi.Output.create<String>(map['networkType'] as String),
      physicalNetwork: map['physicalNetwork'] == null ? null : pulumi.Output.create<String>(map['physicalNetwork'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      revisionNumber: map['revisionNumber'] == null ? null : pulumi.Output.create<int>(map['revisionNumber'] as int),
      segmentationId: map['segmentationId'] == null ? null : pulumi.Output.create<int>(map['segmentationId'] as int),
      updatedAt: map['updatedAt'] == null ? null : pulumi.Output.create<String>(map['updatedAt'] as String),
    );
  }
}

