// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_id_list_result_response_value.dart';

/// Result data returned by listEdgeSiteL2Connections.
class ListEdgeSiteL2ConnectionsResult {
  /// The URL to get the next set of results.
  final String nextLink;
  /// A list of Azure Resource IDs.
  final List<ResourceIdListResultResponseValue>? value;

  /// Creates a new [ListEdgeSiteL2ConnectionsResult].
  /// [nextLink] The URL to get the next set of results.
  /// [value] A list of Azure Resource IDs.
  const ListEdgeSiteL2ConnectionsResult({
    required this.nextLink,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nextLink': nextLink,
      'value': ?(() { final guardedValue = value; if (guardedValue == null) return null; return pulumi.Input.encodeList<ResourceIdListResultResponseValue, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListEdgeSiteL2ConnectionsResult.fromMap(Map<String, dynamic> map) {
    return ListEdgeSiteL2ConnectionsResult(
      nextLink: map['nextLink'] as String,
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResourceIdListResultResponseValue>(guardedValue, (value) => ResourceIdListResultResponseValue.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

