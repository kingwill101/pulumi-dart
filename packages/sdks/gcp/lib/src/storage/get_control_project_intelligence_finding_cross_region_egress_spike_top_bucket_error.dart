// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetControlProjectIntelligenceFindingCrossRegionEgressSpikeTopBucketError {
  /// The error code.
  final pulumi.Input<int> code;
  /// The error message.
  final pulumi.Input<String> message;

  /// Creates a new [GetControlProjectIntelligenceFindingCrossRegionEgressSpikeTopBucketError].
  /// [code] The error code.
  /// [message] The error message.
  const GetControlProjectIntelligenceFindingCrossRegionEgressSpikeTopBucketError({
    required this.code,
    required this.message,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'code': code,
      'message': message,
    };
  }

  factory GetControlProjectIntelligenceFindingCrossRegionEgressSpikeTopBucketError.fromMap(Map<String, dynamic> map) {
    return GetControlProjectIntelligenceFindingCrossRegionEgressSpikeTopBucketError(
      code: pulumi.Input.fromValue((map['code'] as num).toInt()),
      message: pulumi.Input.fromValue(map['message'] as String),
    );
  }
}
