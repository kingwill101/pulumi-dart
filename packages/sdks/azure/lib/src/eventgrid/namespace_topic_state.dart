// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NamespaceTopic resources.
class NamespaceTopicState {
  /// Event retention for the namespace topic expressed in days. Defaults to `7`.
  final pulumi.Input<int>? eventRetentionInDays;
  /// The ID of the Event Grid Namespace. Changing this forces a new resource to be created.
  final pulumi.Input<String>? eventgridNamespaceId;
  /// The name which should be used for this Event Grid Namespace Topic. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [NamespaceTopicState].
  /// [eventRetentionInDays] Event retention for the namespace topic expressed in days. Defaults to `7`.
  /// [eventgridNamespaceId] The ID of the Event Grid Namespace. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Event Grid Namespace Topic. Changing this forces a new resource to be created.
  const NamespaceTopicState({
    this.eventRetentionInDays,
    this.eventgridNamespaceId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventRetentionInDays': ?eventRetentionInDays,
      'eventgridNamespaceId': ?eventgridNamespaceId,
      'name': ?name,
    };
  }

  factory NamespaceTopicState.fromMap(Map<String, dynamic> map) {
    return NamespaceTopicState(
      eventRetentionInDays: (() { final guardedValue = map['eventRetentionInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      eventgridNamespaceId: (() { final guardedValue = map['eventgridNamespaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
