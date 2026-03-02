// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLinkedService.
class GetLinkedServiceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// The provisioning state of the linked service.
  final String? provisioningState;
  /// The resource id of the resource that will be linked to the workspace. This should be used for linking resources which require read access
  final String? resourceId;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The resource id of the resource that will be linked to the workspace. This should be used for linking resources which require write access
  final String? writeAccessResourceId;

  /// Creates a new [GetLinkedServiceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of the linked service.
  /// [resourceId] The resource id of the resource that will be linked to the workspace. This should be used for linking resources which require read access
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [writeAccessResourceId] The resource id of the resource that will be linked to the workspace. This should be used for linking resources which require write access
  GetLinkedServiceResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    this.provisioningState,
    this.resourceId,
    this.tags,
    required this.type,
    this.writeAccessResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'provisioningState': ?provisioningState,
      'resourceId': ?resourceId,
      'tags': ?tags,
      'type': type,
      'writeAccessResourceId': ?writeAccessResourceId,
    };
  }

  factory GetLinkedServiceResult.fromMap(Map<String, dynamic> map) {
    return GetLinkedServiceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState']! as String,
      resourceId: map['resourceId'] == null ? null : map['resourceId']! as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      writeAccessResourceId: map['writeAccessResourceId'] == null ? null : map['writeAccessResourceId']! as String,
    );
  }
}

