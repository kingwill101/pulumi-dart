// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventhub_eventhub_namespace_disaster_recovery_config_eventhub_namespace_disaster_recovery_config_args_doc}
/// The set of arguments for EventhubNamespaceDisasterRecoveryConfig.
/// {@endtemplate}
/// {@macro pulumi_eventhub_eventhub_namespace_disaster_recovery_config_eventhub_namespace_disaster_recovery_config_args_doc}
class EventhubNamespaceDisasterRecoveryConfigArgs {
  /// Specifies the name of the Disaster Recovery Config. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// Specifies the name of the primary EventHub Namespace to replicate. Changing this forces a new resource to be created.
  final pulumi.Input<String> namespaceName;

  /// The ID of the EventHub Namespace to replicate to.
  final pulumi.Input<String> partnerNamespaceId;

  /// The name of the resource group in which the Disaster Recovery Config exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [EventhubNamespaceDisasterRecoveryConfigArgs].
  /// [name] Specifies the name of the Disaster Recovery Config. Changing this forces a new resource to be created.
  /// [namespaceName] Specifies the name of the primary EventHub Namespace to replicate. Changing this forces a new resource to be created.
  /// [partnerNamespaceId] The ID of the EventHub Namespace to replicate to.
  /// [resourceGroupName] The name of the resource group in which the Disaster Recovery Config exists. Changing this forces a new resource to be created.
  EventhubNamespaceDisasterRecoveryConfigArgs({
    this.name,
    required this.namespaceName,
    required this.partnerNamespaceId,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'namespaceName': namespaceName,
      'partnerNamespaceId': partnerNamespaceId,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory EventhubNamespaceDisasterRecoveryConfigArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return EventhubNamespaceDisasterRecoveryConfigArgs(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
      partnerNamespaceId: pulumi.Input.fromValue(
        map['partnerNamespaceId'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
