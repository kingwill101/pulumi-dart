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
      name: map['name'] == null ? null : (map['name']! as String).input(),
      namespaceName: map['namespaceName'] == null ? null : (map['namespaceName']! as String).input(),
      partnerNamespaceId: map['partnerNamespaceId'] == null ? null : (map['partnerNamespaceId']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
    );
  }
}

