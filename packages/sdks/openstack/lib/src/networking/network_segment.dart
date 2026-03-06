// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkSegment {
  /// The type of physical network.
  final pulumi.Input<String>? networkType;
  /// The physical network where this network is implemented.
  final pulumi.Input<String>? physicalNetwork;
  /// An isolated segment on the physical network.
  final pulumi.Input<int>? segmentationId;

  /// Creates a new [NetworkSegment].
  /// [networkType] The type of physical network.
  /// [physicalNetwork] The physical network where this network is implemented.
  /// [segmentationId] An isolated segment on the physical network.
  const NetworkSegment({
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
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      physicalNetwork: (() { final guardedValue = map['physicalNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      segmentationId: (() { final guardedValue = map['segmentationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

