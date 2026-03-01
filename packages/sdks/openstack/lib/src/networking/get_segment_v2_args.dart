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
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? networkId,
    pulumi.Output<String>? networkType,
    pulumi.Output<String>? physicalNetwork,
    pulumi.Output<String>? region,
    pulumi.Output<int>? revisionNumber,
    pulumi.Output<String>? segmentId,
    pulumi.Output<int>? segmentationId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkId = pulumi.Input.asOptionalInput<String>(networkId),
      networkType = pulumi.Input.asOptionalInput<String>(networkType),
      physicalNetwork = pulumi.Input.asOptionalInput<String>(physicalNetwork),
      region = pulumi.Input.asOptionalInput<String>(region),
      revisionNumber = pulumi.Input.asOptionalInput<int>(revisionNumber),
      segmentId = pulumi.Input.asOptionalInput<String>(segmentId),
      segmentationId = pulumi.Input.asOptionalInput<int>(segmentationId);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkId: map['networkId'] == null ? null : pulumi.Output.create<String>(map['networkId'] as String),
      networkType: map['networkType'] == null ? null : pulumi.Output.create<String>(map['networkType'] as String),
      physicalNetwork: map['physicalNetwork'] == null ? null : pulumi.Output.create<String>(map['physicalNetwork'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      revisionNumber: map['revisionNumber'] == null ? null : pulumi.Output.create<int>(map['revisionNumber'] as int),
      segmentId: map['segmentId'] == null ? null : pulumi.Output.create<String>(map['segmentId'] as String),
      segmentationId: map['segmentationId'] == null ? null : pulumi.Output.create<int>(map['segmentationId'] as int),
    );
  }
}

