// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_self_hosted_rbac_authorization.dart';

/// Input properties used for looking up and filtering IntegrationRuntimeSelfHosted resources.
class IntegrationRuntimeSelfHostedState {
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String>? dataFactoryId;
  /// Integration runtime description.
  final pulumi.Input<String>? description;
  /// The name which should be used for this Data Factory. Changing this forces a new Data Factory Self-hosted Integration Runtime to be created.
  final pulumi.Input<String>? name;
  /// The primary integration runtime authentication key.
  final pulumi.Input<String>? primaryAuthorizationKey;
  /// A `rbac_authorization` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<IntegrationRuntimeSelfHostedRbacAuthorization>>? rbacAuthorizations;
  /// The secondary integration runtime authentication key.
  final pulumi.Input<String>? secondaryAuthorizationKey;
  /// Specifies whether enable interactive authoring function when your self-hosted integration runtime is unable to establish a connection with Azure Relay.
  final pulumi.Input<bool>? selfContainedInteractiveAuthoringEnabled;

  /// Creates a new [IntegrationRuntimeSelfHostedState].
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] Integration runtime description.
  /// [name] The name which should be used for this Data Factory. Changing this forces a new Data Factory Self-hosted Integration Runtime to be created.
  /// [primaryAuthorizationKey] The primary integration runtime authentication key.
  /// [rbacAuthorizations] A `rbac_authorization` block as defined below. Changing this forces a new resource to be created.
  /// [secondaryAuthorizationKey] The secondary integration runtime authentication key.
  /// [selfContainedInteractiveAuthoringEnabled] Specifies whether enable interactive authoring function when your self-hosted integration runtime is unable to establish a connection with Azure Relay.
  IntegrationRuntimeSelfHostedState({
    this.dataFactoryId,
    this.description,
    this.name,
    this.primaryAuthorizationKey,
    this.rbacAuthorizations,
    this.secondaryAuthorizationKey,
    this.selfContainedInteractiveAuthoringEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataFactoryId': ?dataFactoryId,
      'description': ?description,
      'name': ?name,
      'primaryAuthorizationKey': ?primaryAuthorizationKey,
      'rbacAuthorizations': ?pulumi.Input.mapOptionalInputValue<List<IntegrationRuntimeSelfHostedRbacAuthorization>, List<Map<String, dynamic>>>(rbacAuthorizations, (value) => pulumi.Input.encodeList<IntegrationRuntimeSelfHostedRbacAuthorization, Map<String, dynamic>>(value, (value) => value.toMap())),
      'secondaryAuthorizationKey': ?secondaryAuthorizationKey,
      'selfContainedInteractiveAuthoringEnabled': ?selfContainedInteractiveAuthoringEnabled,
    };
  }

  factory IntegrationRuntimeSelfHostedState.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeSelfHostedState(
      dataFactoryId: map['dataFactoryId'] == null ? null : (map['dataFactoryId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      primaryAuthorizationKey: map['primaryAuthorizationKey'] == null ? null : (map['primaryAuthorizationKey'] as String).input(),
      rbacAuthorizations: map['rbacAuthorizations'] == null ? null : (pulumi.Input.decodeList<IntegrationRuntimeSelfHostedRbacAuthorization>(map['rbacAuthorizations'], (value) => IntegrationRuntimeSelfHostedRbacAuthorization.fromMap((value as Map).cast<String, dynamic>()))).input(),
      secondaryAuthorizationKey: map['secondaryAuthorizationKey'] == null ? null : (map['secondaryAuthorizationKey'] as String).input(),
      selfContainedInteractiveAuthoringEnabled: map['selfContainedInteractiveAuthoringEnabled'] == null ? null : (map['selfContainedInteractiveAuthoringEnabled'] as bool).input(),
    );
  }
}

