// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EventhubNamespaceDisasterRecoveryConfig resources.
class EventhubNamespaceDisasterRecoveryConfigState {
  /// Specifies the name of the Disaster Recovery Config. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the primary EventHub Namespace to replicate. Changing this forces a new resource to be created.
  final pulumi.Input<String>? namespaceName;
  /// The ID of the EventHub Namespace to replicate to.
  final pulumi.Input<String>? partnerNamespaceId;
  /// The name of the resource group in which the Disaster Recovery Config exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [EventhubNamespaceDisasterRecoveryConfigState].
  /// [name] Specifies the name of the Disaster Recovery Config. Changing this forces a new resource to be created.
  /// [namespaceName] Specifies the name of the primary EventHub Namespace to replicate. Changing this forces a new resource to be created.
  /// [partnerNamespaceId] The ID of the EventHub Namespace to replicate to.
  /// [resourceGroupName] The name of the resource group in which the Disaster Recovery Config exists. Changing this forces a new resource to be created.
  EventhubNamespaceDisasterRecoveryConfigState({
    this.name,
    this.namespaceName,
    this.partnerNamespaceId,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'namespaceName': ?namespaceName,
      'partnerNamespaceId': ?partnerNamespaceId,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory EventhubNamespaceDisasterRecoveryConfigState.fromMap(Map<String, dynamic> map) {
    return EventhubNamespaceDisasterRecoveryConfigState(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespaceName: (() { final guardedValue = map['namespaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      partnerNamespaceId: (() { final guardedValue = map['partnerNamespaceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

