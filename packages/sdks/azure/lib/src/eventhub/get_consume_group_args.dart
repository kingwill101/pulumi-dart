// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_get_consume_group_get_consume_group_args_doc}
/// Arguments for getConsumeGroup.
/// {@endtemplate}
/// {@macro pulumi_eventhub_get_consume_group_get_consume_group_args_doc}
class GetConsumeGroupArgs {
  /// Specifies the name of the EventHub.
  final pulumi.Input<String> eventhubName;
  /// Specifies the name of the EventHub Consumer Group resource.
  final pulumi.Input<String> name;
  /// Specifies the name of the grandparent EventHub Namespace.
  final pulumi.Input<String> namespaceName;
  /// The name of the resource group in which the EventHub Consumer Group's grandparent Namespace exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetConsumeGroupArgs].
  /// [eventhubName] Specifies the name of the EventHub.
  /// [name] Specifies the name of the EventHub Consumer Group resource.
  /// [namespaceName] Specifies the name of the grandparent EventHub Namespace.
  /// [resourceGroupName] The name of the resource group in which the EventHub Consumer Group's grandparent Namespace exists.
  GetConsumeGroupArgs({
    required this.eventhubName,
    required this.name,
    required this.namespaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventhubName': eventhubName,
      'name': name,
      'namespaceName': namespaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetConsumeGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetConsumeGroupArgs(
      eventhubName: (map['eventhubName'] as String).input(),
      name: (map['name'] as String).input(),
      namespaceName: (map['namespaceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

