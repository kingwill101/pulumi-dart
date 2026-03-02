// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_segment_v2_segment_v2_args_doc}
/// The set of arguments for SegmentV2.
/// {@endtemplate}
/// {@macro pulumi_networking_segment_v2_segment_v2_args_doc}
class SegmentV2Args {
  /// A description for the segment.
  final pulumi.Input<String>? description;
  /// A name for the segment.
  final pulumi.Input<String>? name;
  /// The UUID of the network this segment belongs to.
  /// Changing this will create a new segment.
  final pulumi.Input<String> networkId;
  /// The network type. Valid values depend on the
  /// backend (e.g., `vlan`, `vxlan`, `flat`, `gre`, `geneve`, `local`). Changing
  /// this will create a new segment.
  final pulumi.Input<String> networkType;
  /// The name of the physical network. Changing this
  /// will create a new segment.
  final pulumi.Input<String>? physicalNetwork;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create a Neutron network. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// segment.
  final pulumi.Input<String>? region;
  /// A segmentation identifier. Changing is allowed
  /// only for `vlan`.
  final pulumi.Input<int>? segmentationId;

  /// Creates a new [SegmentV2Args].
  /// [description] A description for the segment.
  /// [name] A name for the segment.
  /// [networkId] The UUID of the network this segment belongs to.
  /// [networkType] The network type. Valid values depend on the
  /// [physicalNetwork] The name of the physical network. Changing this
  /// [region] The region in which to obtain the V2 Networking client.
  /// [segmentationId] A segmentation identifier. Changing is allowed
  SegmentV2Args({
    this.description,
    this.name,
    required this.networkId,
    required this.networkType,
    this.physicalNetwork,
    this.region,
    this.segmentationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'networkId': networkId,
      'networkType': networkType,
      'physicalNetwork': ?physicalNetwork,
      'region': ?region,
      'segmentationId': ?segmentationId,
    };
  }

  factory SegmentV2Args.fromMap(Map<String, dynamic> map) {
    return SegmentV2Args(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networkId: (map['networkId'] as String).input(),
      networkType: (map['networkType'] as String).input(),
      physicalNetwork: map['physicalNetwork'] == null ? null : (map['physicalNetwork']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      segmentationId: map['segmentationId'] == null ? null : (map['segmentationId']! as int).input(),
    );
  }
}

