// ignore_for_file: unused_element, unnecessary_cast


class GetNetworkSegment {
  final String networkType;
  final String physicalNetwork;
  final int segmentationId;

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
      networkType: map['networkType'] as String,
      physicalNetwork: map['physicalNetwork'] as String,
      segmentationId: map['segmentationId'] as int,
    );
  }
}

