// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'filter_container_v1beta1.dart';

/// Pub/Sub specific notification config.
class PubSubContainerV1beta1 {
  /// Enable notifications for Pub/Sub.
  final pulumi.Input<bool>? enabled;

  /// Allows filtering to one or more specific event types. If no filter is specified, or if a filter is specified with no event types, all event types will be sent
  final pulumi.Input<FilterContainerV1beta1>? filter;

  /// The desired Pub/Sub topic to which notifications will be sent by GKE. Format is `projects/{project}/topics/{topic}`.
  final pulumi.Input<String>? topic;

  /// Creates a new [PubSubContainerV1beta1].
  /// [enabled] Enable notifications for Pub/Sub.
  /// [filter] Allows filtering to one or more specific event types. If no filter is specified, or if a filter is specified with no event types, all event types will be sent
  /// [topic] The desired Pub/Sub topic to which notifications will be sent by GKE. Format is `projects/{project}/topics/{topic}`.
  PubSubContainerV1beta1({this.enabled, this.filter, this.topic});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'filter':
          ?pulumi.Input.mapOptionalInputValue<
            FilterContainerV1beta1,
            Map<String, dynamic>
          >(filter, (value) => value.toMap()),
      'topic': ?topic,
    };
  }

  factory PubSubContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return PubSubContainerV1beta1(
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      filter: (() {
        final guardedValue = map['filter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FilterContainerV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      topic: (() {
        final guardedValue = map['topic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
