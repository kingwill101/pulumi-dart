// ignore_for_file: unused_element, unnecessary_cast


class DefinitionPermission {
  /// One or more Allowed Actions, such as `*`, `Microsoft.Resources/subscriptions/resourceGroups/read`. See ['Azure Resource Manager resource provider operations'](https://docs.microsoft.com/azure/role-based-access-control/resource-provider-operations) for details.
  final List<String>? actions;
  /// One or more Allowed Data Actions, such as `*`, `Microsoft.Storage/storageAccounts/blobServices/containers/blobs/read`. See ['Azure Resource Manager resource provider operations'](https://docs.microsoft.com/azure/role-based-access-control/resource-provider-operations) for details.
  final List<String>? dataActions;
  /// One or more Disallowed Actions, such as `*`, `Microsoft.Resources/subscriptions/resourceGroups/read`. See ['Azure Resource Manager resource provider operations'](https://docs.microsoft.com/azure/role-based-access-control/resource-provider-operations) for details.
  final List<String>? notActions;
  /// One or more Disallowed Data Actions, such as `*`, `Microsoft.Resources/subscriptions/resourceGroups/read`. See ['Azure Resource Manager resource provider operations'](https://docs.microsoft.com/azure/role-based-access-control/resource-provider-operations) for details.
  final List<String>? notDataActions;

  /// Creates a new [DefinitionPermission].
  /// [actions] One or more Allowed Actions, such as `*`, `Microsoft.Resources/subscriptions/resourceGroups/read`. See ['Azure Resource Manager resource provider operations'](https://docs.microsoft.com/azure/role-based-access-control/resource-provider-operations) for details.
  /// [dataActions] One or more Allowed Data Actions, such as `*`, `Microsoft.Storage/storageAccounts/blobServices/containers/blobs/read`. See ['Azure Resource Manager resource provider operations'](https://docs.microsoft.com/azure/role-based-access-control/resource-provider-operations) for details.
  /// [notActions] One or more Disallowed Actions, such as `*`, `Microsoft.Resources/subscriptions/resourceGroups/read`. See ['Azure Resource Manager resource provider operations'](https://docs.microsoft.com/azure/role-based-access-control/resource-provider-operations) for details.
  /// [notDataActions] One or more Disallowed Data Actions, such as `*`, `Microsoft.Resources/subscriptions/resourceGroups/read`. See ['Azure Resource Manager resource provider operations'](https://docs.microsoft.com/azure/role-based-access-control/resource-provider-operations) for details.
  DefinitionPermission({
    this.actions,
    this.dataActions,
    this.notActions,
    this.notDataActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions,
      'dataActions': ?dataActions,
      'notActions': ?notActions,
      'notDataActions': ?notDataActions,
    };
  }

  factory DefinitionPermission.fromMap(Map<String, dynamic> map) {
    return DefinitionPermission(
      actions: map['actions'] == null ? null : (map['actions'] as List).cast<String>(),
      dataActions: map['dataActions'] == null ? null : (map['dataActions'] as List).cast<String>(),
      notActions: map['notActions'] == null ? null : (map['notActions'] as List).cast<String>(),
      notDataActions: map['notDataActions'] == null ? null : (map['notDataActions'] as List).cast<String>(),
    );
  }
}

