// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_namespace_topic_namespace_topic_args_doc}
/// The set of arguments for NamespaceTopic.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_namespace_topic_namespace_topic_args_doc}
class NamespaceTopicArgs {
  /// Event retention for the namespace topic expressed in days. Defaults to `7`.
  final pulumi.Input<int?>? eventRetentionInDays;
  /// The ID of the Event Grid Namespace. Changing this forces a new resource to be created.
  final pulumi.Input<String> eventgridNamespaceId;
  /// The name which should be used for this Event Grid Namespace Topic. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;

  /// Creates a new [NamespaceTopicArgs].
  /// [eventRetentionInDays] Event retention for the namespace topic expressed in days. Defaults to `7`.
  /// [eventgridNamespaceId] The ID of the Event Grid Namespace. Changing this forces a new resource to be created.
  /// [name] The name which should be used for this Event Grid Namespace Topic. Changing this forces a new resource to be created.
  const NamespaceTopicArgs({
    this.eventRetentionInDays,
    required this.eventgridNamespaceId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventRetentionInDays': ?eventRetentionInDays,
      'eventgridNamespaceId': eventgridNamespaceId,
      'name': ?name,
    };
  }

  factory NamespaceTopicArgs.fromMap(Map<String, dynamic> map) {
    return NamespaceTopicArgs(
      eventRetentionInDays: (() { final guardedValue = map['eventRetentionInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      eventgridNamespaceId: pulumi.Input.fromValue(map['eventgridNamespaceId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
