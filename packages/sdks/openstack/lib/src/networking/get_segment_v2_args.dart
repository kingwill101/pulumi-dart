// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networking_get_segment_v2_get_segment_v2_args_doc}
/// Arguments for getSegmentV2.
/// {@endtemplate}
/// {@macro pulumi_networking_get_segment_v2_get_segment_v2_args_doc}
class GetSegmentV2Args {
  /// Human-readable description of the network segment.
  final pulumi.Input<String>? description;
  /// The name of the network segment.
  final pulumi.Input<String>? name;
  /// The ID of the network.
  final pulumi.Input<String>? networkId;
  /// The type of the network, such as `vlan`, `vxlan`,
  /// `flat`, `gre`, `geneve`, or `local`.
  final pulumi.Input<String>? networkType;
  /// The name of the physical network.
  final pulumi.Input<String>? physicalNetwork;
  /// The region in which to obtain the V2 Neutron client.
  /// A Neutron client is needed to retrieve networks ids. If omitted, the
  /// `region` argument of the provider is used.
  final pulumi.Input<String>? region;
  /// See Argument Reference above.
  final pulumi.Input<int>? revisionNumber;
  /// The ID of the network segment
  final pulumi.Input<String>? segmentId;
  /// The segmentation ID of the network segment.
  final pulumi.Input<int>? segmentationId;

  /// Creates a new [GetSegmentV2Args].
  /// [description] Human-readable description of the network segment.
  /// [name] The name of the network segment.
  /// [networkId] The ID of the network.
  /// [networkType] The type of the network, such as `vlan`, `vxlan`,
  /// [physicalNetwork] The name of the physical network.
  /// [region] The region in which to obtain the V2 Neutron client.
  /// [revisionNumber] See Argument Reference above.
  /// [segmentId] The ID of the network segment
  /// [segmentationId] The segmentation ID of the network segment.
  GetSegmentV2Args({
    this.description,
    this.name,
    this.networkId,
    this.networkType,
    this.physicalNetwork,
    this.region,
    this.revisionNumber,
    this.segmentId,
    this.segmentationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'networkId': ?networkId,
      'networkType': ?networkType,
      'physicalNetwork': ?physicalNetwork,
      'region': ?region,
      'revisionNumber': ?revisionNumber,
      'segmentId': ?segmentId,
      'segmentationId': ?segmentationId,
    };
  }

  factory GetSegmentV2Args.fromMap(Map<String, dynamic> map) {
    return GetSegmentV2Args(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      networkId: map['networkId'] == null ? null : (map['networkId']! as String).input(),
      networkType: map['networkType'] == null ? null : (map['networkType']! as String).input(),
      physicalNetwork: map['physicalNetwork'] == null ? null : (map['physicalNetwork']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
      revisionNumber: map['revisionNumber'] == null ? null : (map['revisionNumber']! as int).input(),
      segmentId: map['segmentId'] == null ? null : (map['segmentId']! as String).input(),
      segmentationId: map['segmentationId'] == null ? null : (map['segmentationId']! as int).input(),
    );
  }
}

