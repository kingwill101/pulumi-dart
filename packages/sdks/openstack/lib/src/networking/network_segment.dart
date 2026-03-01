// ignore_for_file: unused_element, unnecessary_cast


class NetworkSegment {
  /// The type of physical network.
  final String? networkType;
  /// The physical network where this network is implemented.
  final String? physicalNetwork;
  /// An isolated segment on the physical network.
  final int? segmentationId;

  /// Creates a new [NetworkSegment].
  /// [networkType] The type of physical network.
  /// [physicalNetwork] The physical network where this network is implemented.
  /// [segmentationId] An isolated segment on the physical network.
  NetworkSegment({
    this.networkType,
    this.physicalNetwork,
    this.segmentationId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkType': ?networkType,
      'physicalNetwork': ?physicalNetwork,
      'segmentationId': ?segmentationId,
    };
  }

  factory NetworkSegment.fromMap(Map<String, dynamic> map) {
    return NetworkSegment(
      networkType: map['networkType'] == null ? null : map['networkType'] as String,
      physicalNetwork: map['physicalNetwork'] == null ? null : map['physicalNetwork'] as String,
      segmentationId: map['segmentationId'] == null ? null : map['segmentationId'] as int,
    );
  }
}

