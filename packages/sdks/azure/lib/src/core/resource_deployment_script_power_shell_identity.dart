// ignore_for_file: unused_element, unnecessary_cast


class ResourceDeploymentScriptPowerShellIdentity {
  /// Specifies the list of user-assigned managed identity IDs associated with the resource. Changing this forces a new resource to be created.
  final List<String> identityIds;
  /// Type of the managed identity. The only possible value is `UserAssigned`. Changing this forces a new resource to be created.
  final String type;

  /// Creates a new [ResourceDeploymentScriptPowerShellIdentity].
  /// [identityIds] Specifies the list of user-assigned managed identity IDs associated with the resource. Changing this forces a new resource to be created.
  /// [type] Type of the managed identity. The only possible value is `UserAssigned`. Changing this forces a new resource to be created.
  ResourceDeploymentScriptPowerShellIdentity({
    required this.identityIds,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityIds': identityIds,
      'type': type,
    };
  }

  factory ResourceDeploymentScriptPowerShellIdentity.fromMap(Map<String, dynamic> map) {
    return ResourceDeploymentScriptPowerShellIdentity(
      identityIds: (map['identityIds'] as List).cast<String>(),
      type: map['type'] as String,
    );
  }
}

