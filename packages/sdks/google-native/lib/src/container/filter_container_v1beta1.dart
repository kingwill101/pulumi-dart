// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_event_type_item_container_v1beta1.dart';

/// Allows filtering to one or more specific event types. If event types are present, those and only those event types will be transmitted to the cluster. Other types will be skipped. If no filter is specified, or no event types are present, all event types will be sent
class FilterContainerV1beta1 {
  /// Event types to allowlist.
  final pulumi.Input<List<FilterEventTypeItemContainerV1beta1>>? eventType;

  /// Creates a new [FilterContainerV1beta1].
  /// [eventType] Event types to allowlist.
  const FilterContainerV1beta1({
    this.eventType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventType': ?pulumi.Input.mapOptionalInputValue<List<FilterEventTypeItemContainerV1beta1>, List<String>>(eventType, (value) => pulumi.Input.encodeList<FilterEventTypeItemContainerV1beta1, String>(value, (value) => value.wireValue)),
    };
  }

  factory FilterContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return FilterContainerV1beta1(
      eventType: (() { final guardedValue = map['eventType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<FilterEventTypeItemContainerV1beta1>(guardedValue, (value) => FilterEventTypeItemContainerV1beta1.fromValue(value as String))); })(),
    );
  }
}

