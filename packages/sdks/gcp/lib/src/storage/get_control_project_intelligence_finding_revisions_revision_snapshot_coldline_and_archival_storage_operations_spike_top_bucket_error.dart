// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotColdlineAndArchivalStorageOperationsSpikeTopBucketError {
  /// The error code.
  final pulumi.Input<int> code;
  /// The error message.
  final pulumi.Input<String> message;

  /// Creates a new [GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotColdlineAndArchivalStorageOperationsSpikeTopBucketError].
  /// [code] The error code.
  /// [message] The error message.
  const GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotColdlineAndArchivalStorageOperationsSpikeTopBucketError({
    required this.code,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'message': message,
    };
  }

  factory GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotColdlineAndArchivalStorageOperationsSpikeTopBucketError.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingRevisionsRevisionSnapshotColdlineAndArchivalStorageOperationsSpikeTopBucketError(
      code: pulumi.Input.fromValue(map['code'] as int),
      message: pulumi.Input.fromValue(map['message'] as String),
    );
  }
}
