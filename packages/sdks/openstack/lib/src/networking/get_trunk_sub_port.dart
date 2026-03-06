// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTrunkSubPort {
  /// The ID of the trunk parent port.
  final pulumi.Input<String> portId;
  /// The numeric id of the subport segment.
  final pulumi.Input<int> segmentationId;
  /// The segmenation tecnology used, e.g., "vlan".
  final pulumi.Input<String> segmentationType;

  /// Creates a new [GetTrunkSubPort].
  /// [portId] The ID of the trunk parent port.
  /// [segmentationId] The numeric id of the subport segment.
  /// [segmentationType] The segmenation tecnology used, e.g., "vlan".
  const GetTrunkSubPort({
    required this.portId,
    required this.segmentationId,
    required this.segmentationType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'portId': portId,
      'segmentationId': segmentationId,
      'segmentationType': segmentationType,
    };
  }

  factory GetTrunkSubPort.fromMap(Map<String, dynamic> map) {
    return GetTrunkSubPort(
      portId: pulumi.Input.fromValue(map['portId'] as String),
      segmentationId: pulumi.Input.fromValue(map['segmentationId'] as int),
      segmentationType: pulumi.Input.fromValue(map['segmentationType'] as String),
    );
  }
}

