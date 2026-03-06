// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information regarding the low disk mode state
class CloudTieringLowDiskModeResponse {
  /// Last updated timestamp
  final pulumi.Input<String> lastUpdatedTimestamp;
  /// Low disk mode state
  final pulumi.Input<String> state;

  /// Creates a new [CloudTieringLowDiskModeResponse].
  /// [lastUpdatedTimestamp] Last updated timestamp
  /// [state] Low disk mode state
  const CloudTieringLowDiskModeResponse({
    required this.lastUpdatedTimestamp,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastUpdatedTimestamp': lastUpdatedTimestamp,
      'state': state,
    };
  }

  factory CloudTieringLowDiskModeResponse.fromMap(Map<String, dynamic> map) {
    return CloudTieringLowDiskModeResponse(
      lastUpdatedTimestamp: pulumi.Input.fromValue(map['lastUpdatedTimestamp'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}

