// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetControlProjectIntelligenceFindingRevisionSnapshotStorageGrowthAboveTrendTopBucketError {
  /// The error code.
  final pulumi.Input<int> code;
  /// The error message.
  final pulumi.Input<String> message;

  /// Creates a new [GetControlProjectIntelligenceFindingRevisionSnapshotStorageGrowthAboveTrendTopBucketError].
  /// [code] The error code.
  /// [message] The error message.
  const GetControlProjectIntelligenceFindingRevisionSnapshotStorageGrowthAboveTrendTopBucketError({
    required this.code,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'message': message,
    };
  }

  factory GetControlProjectIntelligenceFindingRevisionSnapshotStorageGrowthAboveTrendTopBucketError.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingRevisionSnapshotStorageGrowthAboveTrendTopBucketError(
      code: pulumi.Input.fromValue(map['code'] as int),
      message: pulumi.Input.fromValue(map['message'] as String),
    );
  }
}
