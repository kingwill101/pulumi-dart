// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RegistryCacheRule resources.
class RegistryCacheRuleState {
  /// The ID of the Container Registry where the Cache Rule should apply. Changing this forces a new resource to be created.
  final pulumi.Input<String>? containerRegistryId;
  /// The ARM resource ID of the Credential Store which is associated with the Cache Rule.
  final pulumi.Input<String>? credentialSetId;
  /// Specifies the name of the Container Registry Cache Rule. Only Alphanumeric characters allowed. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the source repository path. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sourceRepo;
  /// The name of the new repository path to store artifacts. Changing this forces a new resource to be created.
  final pulumi.Input<String>? targetRepo;

  /// Creates a new [RegistryCacheRuleState].
  /// [containerRegistryId] The ID of the Container Registry where the Cache Rule should apply. Changing this forces a new resource to be created.
  /// [credentialSetId] The ARM resource ID of the Credential Store which is associated with the Cache Rule.
  /// [name] Specifies the name of the Container Registry Cache Rule. Only Alphanumeric characters allowed. Changing this forces a new resource to be created.
  /// [sourceRepo] The name of the source repository path. Changing this forces a new resource to be created.
  /// [targetRepo] The name of the new repository path to store artifacts. Changing this forces a new resource to be created.
  RegistryCacheRuleState({
    pulumi.Output<String>? containerRegistryId,
    pulumi.Output<String>? credentialSetId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? sourceRepo,
    pulumi.Output<String>? targetRepo,
  }) :
      containerRegistryId = pulumi.Input.asOptionalInput<String>(containerRegistryId),
      credentialSetId = pulumi.Input.asOptionalInput<String>(credentialSetId),
      name = pulumi.Input.asOptionalInput<String>(name),
      sourceRepo = pulumi.Input.asOptionalInput<String>(sourceRepo),
      targetRepo = pulumi.Input.asOptionalInput<String>(targetRepo);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRegistryId': ?containerRegistryId,
      'credentialSetId': ?credentialSetId,
      'name': ?name,
      'sourceRepo': ?sourceRepo,
      'targetRepo': ?targetRepo,
    };
  }

  factory RegistryCacheRuleState.fromMap(Map<String, dynamic> map) {
    return RegistryCacheRuleState(
      containerRegistryId: map['containerRegistryId'] == null ? null : pulumi.Output.create<String>(map['containerRegistryId'] as String),
      credentialSetId: map['credentialSetId'] == null ? null : pulumi.Output.create<String>(map['credentialSetId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      sourceRepo: map['sourceRepo'] == null ? null : pulumi.Output.create<String>(map['sourceRepo'] as String),
      targetRepo: map['targetRepo'] == null ? null : pulumi.Output.create<String>(map['targetRepo'] as String),
    );
  }
}

