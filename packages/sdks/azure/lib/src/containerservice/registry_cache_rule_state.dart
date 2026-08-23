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
  const RegistryCacheRuleState({
    this.containerRegistryId,
    this.credentialSetId,
    this.name,
    this.sourceRepo,
    this.targetRepo,
  });

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
      containerRegistryId: (() { final guardedValue = map['containerRegistryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentialSetId: (() { final guardedValue = map['credentialSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceRepo: (() { final guardedValue = map['sourceRepo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetRepo: (() { final guardedValue = map['targetRepo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
