// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getPolicyFileshare.
class GetPolicyFileshareResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String recoveryVaultName;
  final String resourceGroupName;

  /// Creates a new [GetPolicyFileshareResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [recoveryVaultName] Required.
  /// [resourceGroupName] Required.
  GetPolicyFileshareResult({
    required this.id,
    required this.name,
    required this.recoveryVaultName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'recoveryVaultName': recoveryVaultName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetPolicyFileshareResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyFileshareResult(
      id: map['id'] as String,
      name: map['name'] as String,
      recoveryVaultName: map['recoveryVaultName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}
