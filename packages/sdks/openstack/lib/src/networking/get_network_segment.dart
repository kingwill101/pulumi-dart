// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNetworkSegment {
  final pulumi.Input<String> networkType;
  final pulumi.Input<String> physicalNetwork;
  final pulumi.Input<int> segmentationId;

  /// Creates a new [GetNetworkSegment].
  /// [networkType] Required.
  /// [physicalNetwork] Required.
  /// [segmentationId] Required.
  GetNetworkSegment({
    required this.networkType,
    required this.physicalNetwork,
    required this.segmentationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkType': networkType,
      'physicalNetwork': physicalNetwork,
      'segmentationId': segmentationId,
    };
  }

  factory GetNetworkSegment.fromMap(Map<String, dynamic> map) {
    return GetNetworkSegment(
      networkType: pulumi.Input.fromValue(map['networkType'] as String),
      physicalNetwork: pulumi.Input.fromValue(map['physicalNetwork'] as String),
      segmentationId: pulumi.Input.fromValue(map['segmentationId'] as int),
    );
  }
}
