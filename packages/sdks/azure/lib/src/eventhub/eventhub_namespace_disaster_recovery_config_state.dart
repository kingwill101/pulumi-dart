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
    pulumi.Output<String>? name,
    pulumi.Output<String>? namespaceName,
    pulumi.Output<String>? partnerNamespaceId,
    pulumi.Output<String>? resourceGroupName,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      namespaceName = pulumi.Input.asOptionalInput<String>(namespaceName),
      partnerNamespaceId = pulumi.Input.asOptionalInput<String>(partnerNamespaceId),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName);

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
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespaceName: map['namespaceName'] == null ? null : pulumi.Output.create<String>(map['namespaceName'] as String),
      partnerNamespaceId: map['partnerNamespaceId'] == null ? null : pulumi.Output.create<String>(map['partnerNamespaceId'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

