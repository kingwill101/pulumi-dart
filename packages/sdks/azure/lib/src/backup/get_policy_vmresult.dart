// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPolicyVM.
class GetPolicyVMResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? recoveryVaultName;
  final String? resourceGroupName;

  /// Creates a new [GetPolicyVMResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [recoveryVaultName] Optional.
  /// [resourceGroupName] Optional.
  const GetPolicyVMResult({
    this.id,
    this.name,
    this.recoveryVaultName,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'recoveryVaultName': ?recoveryVaultName,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory GetPolicyVMResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyVMResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      recoveryVaultName: (() { final guardedValue = map['recoveryVaultName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
