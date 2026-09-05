// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRegistryCacheRule.
class GetRegistryCacheRuleResult {
  final String? containerRegistryId;
  /// The ARM resource ID of the credential store which is associated with the cache rule.
  final String? credentialSetId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// The name of the source repository path.
  final String? sourceRepo;
  /// The name of the new repository path to store artifacts.
  final String? targetRepo;

  /// Creates a new [GetRegistryCacheRuleResult].
  /// [containerRegistryId] Optional.
  /// [credentialSetId] The ARM resource ID of the credential store which is associated with the cache rule.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [sourceRepo] The name of the source repository path.
  /// [targetRepo] The name of the new repository path to store artifacts.
  const GetRegistryCacheRuleResult({
    this.containerRegistryId,
    this.credentialSetId,
    this.id,
    this.name,
    this.sourceRepo,
    this.targetRepo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRegistryId': ?containerRegistryId,
      'credentialSetId': ?credentialSetId,
      'id': ?id,
      'name': ?name,
      'sourceRepo': ?sourceRepo,
      'targetRepo': ?targetRepo,
    };
  }

  factory GetRegistryCacheRuleResult.fromMap(Map<String, dynamic> map) {
    return GetRegistryCacheRuleResult(
      containerRegistryId: (() { final guardedValue = map['containerRegistryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      credentialSetId: (() { final guardedValue = map['credentialSetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceRepo: (() { final guardedValue = map['sourceRepo']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetRepo: (() { final guardedValue = map['targetRepo']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
