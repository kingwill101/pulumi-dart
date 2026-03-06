// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_get_event_hub_get_event_hub_args_doc}
/// Arguments for getEventHub.
/// {@endtemplate}
/// {@macro pulumi_eventhub_get_event_hub_get_event_hub_args_doc}
class GetEventHubArgs {
  /// The name of this EventHub.
  final pulumi.Input<String> name;
  /// The name of the EventHub Namespace where the EventHub exists.
  final pulumi.Input<String> namespaceName;
  /// The name of the Resource Group where the EventHub exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEventHubArgs].
  /// [name] The name of this EventHub.
  /// [namespaceName] The name of the EventHub Namespace where the EventHub exists.
  /// [resourceGroupName] The name of the Resource Group where the EventHub exists.
  const GetEventHubArgs({
    required this.name,
    required this.namespaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEventHubArgs.fromMap(Map<String, dynamic> map) {
    return GetEventHubArgs(
      name: pulumi.Input.fromValue(map['name'] as String),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

