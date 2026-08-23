// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_self_hosted_rbac_authorization.dart';

/// {@template pulumi_datafactory_integration_runtime_self_hosted_integration_runtime_self_hosted_args_doc}
/// The set of arguments for IntegrationRuntimeSelfHosted.
/// {@endtemplate}
/// {@macro pulumi_datafactory_integration_runtime_self_hosted_integration_runtime_self_hosted_args_doc}
class IntegrationRuntimeSelfHostedArgs {
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// Integration runtime description.
  final pulumi.Input<String>? description;
  /// The name which should be used for this Data Factory. Changing this forces a new Data Factory Self-hosted Integration Runtime to be created.
  final pulumi.Input<String>? name;
  /// A `rbacAuthorization` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<List<IntegrationRuntimeSelfHostedRbacAuthorization>>? rbacAuthorizations;
  /// Specifies whether enable interactive authoring function when your self-hosted integration runtime is unable to establish a connection with Azure Relay.
  final pulumi.Input<bool>? selfContainedInteractiveAuthoringEnabled;

  /// Creates a new [IntegrationRuntimeSelfHostedArgs].
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] Integration runtime description.
  /// [name] The name which should be used for this Data Factory. Changing this forces a new Data Factory Self-hosted Integration Runtime to be created.
  /// [rbacAuthorizations] A `rbacAuthorization` block as defined below. Changing this forces a new resource to be created.
  /// [selfContainedInteractiveAuthoringEnabled] Specifies whether enable interactive authoring function when your self-hosted integration runtime is unable to establish a connection with Azure Relay.
  const IntegrationRuntimeSelfHostedArgs({
    required this.dataFactoryId,
    this.description,
    this.name,
    this.rbacAuthorizations,
    this.selfContainedInteractiveAuthoringEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataFactoryId': dataFactoryId,
      'description': ?description,
      'name': ?name,
      'rbacAuthorizations': ?pulumi.Input.mapOptionalInputValue<List<IntegrationRuntimeSelfHostedRbacAuthorization>, List<Map<String, dynamic>>>(rbacAuthorizations, (value) => pulumi.Input.encodeList<IntegrationRuntimeSelfHostedRbacAuthorization, Map<String, dynamic>>(value, (value) => value.toMap())),
      'selfContainedInteractiveAuthoringEnabled': ?selfContainedInteractiveAuthoringEnabled,
    };
  }

  factory IntegrationRuntimeSelfHostedArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeSelfHostedArgs(
      dataFactoryId: pulumi.Input.fromValue(map['dataFactoryId'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rbacAuthorizations: (() { final guardedValue = map['rbacAuthorizations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IntegrationRuntimeSelfHostedRbacAuthorization>(guardedValue, (value) => IntegrationRuntimeSelfHostedRbacAuthorization.fromMap((value as Map).cast<String, dynamic>()))); })(),
      selfContainedInteractiveAuthoringEnabled: (() { final guardedValue = map['selfContainedInteractiveAuthoringEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
