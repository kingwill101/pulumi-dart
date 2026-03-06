// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRegistryCacheRule.
class GetRegistryCacheRuleResult {
  final String containerRegistryId;
  /// The ARM resource ID of the credential store which is associated with the cache rule.
  final String credentialSetId;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  /// The name of the source repository path.
  final String sourceRepo;
  /// The name of the new repository path to store artifacts.
  final String targetRepo;

  /// Creates a new [GetRegistryCacheRuleResult].
  /// [containerRegistryId] Required.
  /// [credentialSetId] The ARM resource ID of the credential store which is associated with the cache rule.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [sourceRepo] The name of the source repository path.
  /// [targetRepo] The name of the new repository path to store artifacts.
  const GetRegistryCacheRuleResult({
    required this.containerRegistryId,
    required this.credentialSetId,
    required this.id,
    required this.name,
    required this.sourceRepo,
    required this.targetRepo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRegistryId': containerRegistryId,
      'credentialSetId': credentialSetId,
      'id': id,
      'name': name,
      'sourceRepo': sourceRepo,
      'targetRepo': targetRepo,
    };
  }

  factory GetRegistryCacheRuleResult.fromMap(Map<String, dynamic> map) {
    return GetRegistryCacheRuleResult(
      containerRegistryId: map['containerRegistryId'] as String,
      credentialSetId: map['credentialSetId'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      sourceRepo: map['sourceRepo'] as String,
      targetRepo: map['targetRepo'] as String,
    );
  }
}

