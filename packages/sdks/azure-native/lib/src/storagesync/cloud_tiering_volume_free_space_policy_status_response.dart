// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Status of the volume free space policy
class CloudTieringVolumeFreeSpacePolicyStatusResponse {
  /// Current volume free space percentage.
  final pulumi.Input<int> currentVolumeFreeSpacePercent;
  /// In the case where multiple server endpoints are present in a volume, an effective free space policy is applied.
  final pulumi.Input<int> effectiveVolumeFreeSpacePolicy;
  /// Last updated timestamp
  final pulumi.Input<String> lastUpdatedTimestamp;

  /// Creates a new [CloudTieringVolumeFreeSpacePolicyStatusResponse].
  /// [currentVolumeFreeSpacePercent] Current volume free space percentage.
  /// [effectiveVolumeFreeSpacePolicy] In the case where multiple server endpoints are present in a volume, an effective free space policy is applied.
  /// [lastUpdatedTimestamp] Last updated timestamp
  const CloudTieringVolumeFreeSpacePolicyStatusResponse({
    required this.currentVolumeFreeSpacePercent,
    required this.effectiveVolumeFreeSpacePolicy,
    required this.lastUpdatedTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currentVolumeFreeSpacePercent': currentVolumeFreeSpacePercent,
      'effectiveVolumeFreeSpacePolicy': effectiveVolumeFreeSpacePolicy,
      'lastUpdatedTimestamp': lastUpdatedTimestamp,
    };
  }

  factory CloudTieringVolumeFreeSpacePolicyStatusResponse.fromMap(Map<String, dynamic> map) {
    return CloudTieringVolumeFreeSpacePolicyStatusResponse(
      currentVolumeFreeSpacePercent: pulumi.Input.fromValue(map['currentVolumeFreeSpacePercent'] as int),
      effectiveVolumeFreeSpacePolicy: pulumi.Input.fromValue(map['effectiveVolumeFreeSpacePolicy'] as int),
      lastUpdatedTimestamp: pulumi.Input.fromValue(map['lastUpdatedTimestamp'] as String),
    );
  }
}

