// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_event_type_item.dart';

/// Allows filtering to one or more specific event types. If event types are present, those and only those event types will be transmitted to the cluster. Other types will be skipped. If no filter is specified, or no event types are present, all event types will be sent
class Filter {
  /// Event types to allowlist.
  final pulumi.Input<List<FilterEventTypeItem>>? eventType;

  /// Creates a new [Filter].
  /// [eventType] Event types to allowlist.
  Filter({
    this.eventType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventType': ?pulumi.Input.mapOptionalInputValue<List<FilterEventTypeItem>, List<String>>(eventType, (value) => pulumi.Input.encodeList<FilterEventTypeItem, String>(value, (value) => value.value)),
    };
  }

  factory Filter.fromMap(Map<String, dynamic> map) {
    return Filter(
      eventType: map['eventType'] == null ? null : (pulumi.Input.decodeList<FilterEventTypeItem>(map['eventType']!, (value) => FilterEventTypeItem.fromValue(value as String))).input(),
    );
  }
}

