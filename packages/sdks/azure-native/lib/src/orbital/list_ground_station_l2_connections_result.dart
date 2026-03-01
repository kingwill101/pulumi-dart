// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_id_list_result_response_value.dart';

/// Result data returned by listGroundStationL2Connections.
class ListGroundStationL2ConnectionsResult {
  /// The URL to get the next set of results.
  final String nextLink;
  /// A list of Azure Resource IDs.
  final List<ResourceIdListResultResponseValue>? value;

  /// Creates a new [ListGroundStationL2ConnectionsResult].
  /// [nextLink] The URL to get the next set of results.
  /// [value] A list of Azure Resource IDs.
  ListGroundStationL2ConnectionsResult({
    required this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': nextLink,
      'value': ?value == null ? null : pulumi.Input.encodeList<ResourceIdListResultResponseValue, Map<String, dynamic>>(value!, (value) => value.toMap()),
    };
  }

  factory ListGroundStationL2ConnectionsResult.fromMap(Map<String, dynamic> map) {
    return ListGroundStationL2ConnectionsResult(
      nextLink: map['nextLink'] as String,
      value: map['value'] == null ? null : pulumi.Input.decodeList<ResourceIdListResultResponseValue>(map['value'], (value) => ResourceIdListResultResponseValue.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

