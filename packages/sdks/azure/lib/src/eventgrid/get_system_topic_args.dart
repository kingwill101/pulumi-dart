// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_system_topic_get_system_topic_args_doc}
/// Arguments for getSystemTopic.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_system_topic_get_system_topic_args_doc}
class GetSystemTopicArgs {
  /// The name of the Event Grid System Topic resource.
  final pulumi.Input<String> name;
  /// The name of the resource group in which the Event Grid System Topic exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetSystemTopicArgs].
  /// [name] The name of the Event Grid System Topic resource.
  /// [resourceGroupName] The name of the resource group in which the Event Grid System Topic exists.
  GetSystemTopicArgs({
    required this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetSystemTopicArgs.fromMap(Map<String, dynamic> map) {
    return GetSystemTopicArgs(
      name: (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

