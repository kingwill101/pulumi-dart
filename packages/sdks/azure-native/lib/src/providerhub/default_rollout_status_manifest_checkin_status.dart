// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The manifest checkin status.
class DefaultRolloutStatusManifestCheckinStatus {
  /// The commit id.
  final pulumi.Input<String>? commitId;
  /// Whether the manifest is checked in.
  final pulumi.Input<bool> isCheckedIn;
  /// The pull request.
  final pulumi.Input<String>? pullRequest;
  /// The status message.
  final pulumi.Input<String> statusMessage;

  /// Creates a new [DefaultRolloutStatusManifestCheckinStatus].
  /// [commitId] The commit id.
  /// [isCheckedIn] Whether the manifest is checked in.
  /// [pullRequest] The pull request.
  /// [statusMessage] The status message.
  DefaultRolloutStatusManifestCheckinStatus({
    this.commitId,
    required this.isCheckedIn,
    this.pullRequest,
    required this.statusMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commitId': ?commitId,
      'isCheckedIn': isCheckedIn,
      'pullRequest': ?pullRequest,
      'statusMessage': statusMessage,
    };
  }

  factory DefaultRolloutStatusManifestCheckinStatus.fromMap(Map<String, dynamic> map) {
    return DefaultRolloutStatusManifestCheckinStatus(
      commitId: map['commitId'] == null ? null : (map['commitId']! as String).input(),
      isCheckedIn: (map['isCheckedIn'] as bool).input(),
      pullRequest: map['pullRequest'] == null ? null : (map['pullRequest']! as String).input(),
      statusMessage: (map['statusMessage'] as String).input(),
    );
  }
}

