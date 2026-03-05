// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TrunkSubPort {
  /// The ID of the port to be made a subport of the trunk.
  final pulumi.Input<String> portId;
  /// The numeric id of the subport segment.
  final pulumi.Input<int> segmentationId;
  /// The segmentation technology to use, e.g., "vlan".
  final pulumi.Input<String> segmentationType;

  /// Creates a new [TrunkSubPort].
  /// [portId] The ID of the port to be made a subport of the trunk.
  /// [segmentationId] The numeric id of the subport segment.
  /// [segmentationType] The segmentation technology to use, e.g., "vlan".
  TrunkSubPort({
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

  factory TrunkSubPort.fromMap(Map<String, dynamic> map) {
    return TrunkSubPort(
      portId: pulumi.Input.fromValue(map['portId'] as String),
      segmentationId: pulumi.Input.fromValue(map['segmentationId'] as int),
      segmentationType: pulumi.Input.fromValue(map['segmentationType'] as String),
    );
  }
}

