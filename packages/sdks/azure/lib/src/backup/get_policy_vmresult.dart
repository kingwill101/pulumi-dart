// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPolicyVM.
class GetPolicyVMResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String recoveryVaultName;
  final String resourceGroupName;

  /// Creates a new [GetPolicyVMResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [recoveryVaultName] Required.
  /// [resourceGroupName] Required.
  const GetPolicyVMResult({
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

  factory GetPolicyVMResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyVMResult(
      id: map['id'] as String,
      name: map['name'] as String,
      recoveryVaultName: map['recoveryVaultName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

