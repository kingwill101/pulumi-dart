// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_endpoint_change_enumeration_activity_response.dart';
import 'cloud_endpoint_last_change_enumeration_status_response.dart';

/// Cloud endpoint change enumeration status object
class CloudEndpointChangeEnumerationStatusResponse {
  /// Change enumeration activity
  final pulumi.Input<CloudEndpointChangeEnumerationActivityResponse> activity;
  /// Status of last completed change enumeration
  final pulumi.Input<CloudEndpointLastChangeEnumerationStatusResponse> lastEnumerationStatus;
  /// Last updated timestamp
  final pulumi.Input<String> lastUpdatedTimestamp;

  /// Creates a new [CloudEndpointChangeEnumerationStatusResponse].
  /// [activity] Change enumeration activity
  /// [lastEnumerationStatus] Status of last completed change enumeration
  /// [lastUpdatedTimestamp] Last updated timestamp
  CloudEndpointChangeEnumerationStatusResponse({
    required this.activity,
    required this.lastEnumerationStatus,
    required this.lastUpdatedTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activity': pulumi.Input.mapInputValue<CloudEndpointChangeEnumerationActivityResponse, Map<String, dynamic>>(activity, (value) => value.toMap()),
      'lastEnumerationStatus': pulumi.Input.mapInputValue<CloudEndpointLastChangeEnumerationStatusResponse, Map<String, dynamic>>(lastEnumerationStatus, (value) => value.toMap()),
      'lastUpdatedTimestamp': lastUpdatedTimestamp,
    };
  }

  factory CloudEndpointChangeEnumerationStatusResponse.fromMap(Map<String, dynamic> map) {
    return CloudEndpointChangeEnumerationStatusResponse(
      activity: (CloudEndpointChangeEnumerationActivityResponse.fromMap((map['activity'] as Map).cast<String, dynamic>())).input(),
      lastEnumerationStatus: (CloudEndpointLastChangeEnumerationStatusResponse.fromMap((map['lastEnumerationStatus'] as Map).cast<String, dynamic>())).input(),
      lastUpdatedTimestamp: (map['lastUpdatedTimestamp'] as String).input(),
    );
  }
}

