// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Status of the date policy
class CloudTieringDatePolicyStatusResponse {
  /// Last updated timestamp
  final pulumi.Input<String> lastUpdatedTimestamp;
  /// Most recent access time of tiered files
  final pulumi.Input<String> tieredFilesMostRecentAccessTimestamp;

  /// Creates a new [CloudTieringDatePolicyStatusResponse].
  /// [lastUpdatedTimestamp] Last updated timestamp
  /// [tieredFilesMostRecentAccessTimestamp] Most recent access time of tiered files
  const CloudTieringDatePolicyStatusResponse({
    required this.lastUpdatedTimestamp,
    required this.tieredFilesMostRecentAccessTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastUpdatedTimestamp': lastUpdatedTimestamp,
      'tieredFilesMostRecentAccessTimestamp': tieredFilesMostRecentAccessTimestamp,
    };
  }

  factory CloudTieringDatePolicyStatusResponse.fromMap(Map<String, dynamic> map) {
    return CloudTieringDatePolicyStatusResponse(
      lastUpdatedTimestamp: pulumi.Input.fromValue(map['lastUpdatedTimestamp'] as String),
      tieredFilesMostRecentAccessTimestamp: pulumi.Input.fromValue(map['tieredFilesMostRecentAccessTimestamp'] as String),
    );
  }
}
