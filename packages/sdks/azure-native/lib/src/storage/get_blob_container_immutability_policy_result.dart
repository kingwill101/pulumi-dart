// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getBlobContainerImmutabilityPolicy.
class GetBlobContainerImmutabilityPolicyResult {
  /// This property can only be changed for unlocked time-based retention policies. When enabled, new blocks can be written to an append blob while maintaining immutability protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted. This property cannot be changed with ExtendImmutabilityPolicy API.
  final bool? allowProtectedAppendWrites;
  /// This property can only be changed for unlocked time-based retention policies. When enabled, new blocks can be written to both 'Append and Bock Blobs' while maintaining immutability protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted. This property cannot be changed with ExtendImmutabilityPolicy API. The 'allowProtectedAppendWrites' and 'allowProtectedAppendWritesAll' properties are mutually exclusive.
  final bool? allowProtectedAppendWritesAll;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource Etag.
  final String etag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The immutability period for the blobs in the container since the policy creation, in days.
  final int? immutabilityPeriodSinceCreationInDays;
  /// The name of the resource
  final String name;
  /// The ImmutabilityPolicy state of a blob container, possible values include: Locked and Unlocked.
  final String state;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetBlobContainerImmutabilityPolicyResult].
  /// [allowProtectedAppendWrites] This property can only be changed for unlocked time-based retention policies. When enabled, new blocks can be written to an append blob while maintaining immutability protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted. This property cannot be changed with ExtendImmutabilityPolicy API.
  /// [allowProtectedAppendWritesAll] This property can only be changed for unlocked time-based retention policies. When enabled, new blocks can be written to both 'Append and Bock Blobs' while maintaining immutability protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted. This property cannot be changed with ExtendImmutabilityPolicy API. The 'allowProtectedAppendWrites' and 'allowProtectedAppendWritesAll' properties are mutually exclusive.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] Resource Etag.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [immutabilityPeriodSinceCreationInDays] The immutability period for the blobs in the container since the policy creation, in days.
  /// [name] The name of the resource
  /// [state] The ImmutabilityPolicy state of a blob container, possible values include: Locked and Unlocked.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetBlobContainerImmutabilityPolicyResult({
    this.allowProtectedAppendWrites,
    this.allowProtectedAppendWritesAll,
    required this.azureApiVersion,
    required this.etag,
    required this.id,
    this.immutabilityPeriodSinceCreationInDays,
    required this.name,
    required this.state,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowProtectedAppendWrites': ?allowProtectedAppendWrites,
      'allowProtectedAppendWritesAll': ?allowProtectedAppendWritesAll,
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'id': id,
      'immutabilityPeriodSinceCreationInDays': ?immutabilityPeriodSinceCreationInDays,
      'name': name,
      'state': state,
      'type': type,
    };
  }

  factory GetBlobContainerImmutabilityPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetBlobContainerImmutabilityPolicyResult(
      allowProtectedAppendWrites: (() { final guardedValue = map['allowProtectedAppendWrites']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      allowProtectedAppendWritesAll: (() { final guardedValue = map['allowProtectedAppendWritesAll']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: map['id'] as String,
      immutabilityPeriodSinceCreationInDays: (() { final guardedValue = map['immutabilityPeriodSinceCreationInDays']; if (guardedValue == null) return null; return guardedValue as int; })(),
      name: map['name'] as String,
      state: map['state'] as String,
      type: map['type'] as String,
    );
  }
}

