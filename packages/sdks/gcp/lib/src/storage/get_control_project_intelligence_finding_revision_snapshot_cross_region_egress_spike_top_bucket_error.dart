// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetControlProjectIntelligenceFindingRevisionSnapshotCrossRegionEgressSpikeTopBucketError {
  /// The error code.
  final pulumi.Input<int> code;
  /// The error message.
  final pulumi.Input<String> message;

  /// Creates a new [GetControlProjectIntelligenceFindingRevisionSnapshotCrossRegionEgressSpikeTopBucketError].
  /// [code] The error code.
  /// [message] The error message.
  const GetControlProjectIntelligenceFindingRevisionSnapshotCrossRegionEgressSpikeTopBucketError({
    required this.code,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'message': message,
    };
  }

  factory GetControlProjectIntelligenceFindingRevisionSnapshotCrossRegionEgressSpikeTopBucketError.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingRevisionSnapshotCrossRegionEgressSpikeTopBucketError(
      code: pulumi.Input.fromValue((map['code'] as num).toInt()),
      message: pulumi.Input.fromValue(map['message'] as String),
    );
  }
}
