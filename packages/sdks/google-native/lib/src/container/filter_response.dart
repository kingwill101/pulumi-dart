// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Allows filtering to one or more specific event types. If event types are present, those and only those event types will be transmitted to the cluster. Other types will be skipped. If no filter is specified, or no event types are present, all event types will be sent
class FilterResponse {
  /// Event types to allowlist.
  final pulumi.Input<List<String>> eventType;

  /// Creates a new [FilterResponse].
  /// [eventType] Event types to allowlist.
  FilterResponse({
    required this.eventType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventType': eventType,
    };
  }

  factory FilterResponse.fromMap(Map<String, dynamic> map) {
    return FilterResponse(
      eventType: ((map['eventType'] as List).cast<String>()).input(),
    );
  }
}

