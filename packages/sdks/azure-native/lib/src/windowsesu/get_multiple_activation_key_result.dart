// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getMultipleActivationKey.
class GetMultipleActivationKeyResult {
  /// Agreement number under which the key is requested.
  final String? agreementNumber;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// End of support of security updates activated by the MAK key.
  final String expirationDate;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Number of activations/servers using the MAK key.
  final int? installedServerNumber;
  /// &lt;code&gt; true &lt;/code&gt; if user has eligible on-premises Windows physical or virtual machines, and that the requested key will only be used in their organization; &lt;code&gt; false &lt;/code&gt; otherwise.
  final bool? isEligible;
  /// The geo-location where the resource lives
  final String location;
  /// MAK 5x5 key.
  final String multipleActivationKey;
  /// The name of the resource
  final String name;
  /// Type of OS for which the key is requested.
  final String? osType;
  final String provisioningState;
  /// Type of support
  final String? supportType;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetMultipleActivationKeyResult].
  /// [agreementNumber] Agreement number under which the key is requested.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [expirationDate] End of support of security updates activated by the MAK key.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [installedServerNumber] Number of activations/servers using the MAK key.
  /// [isEligible] &lt;code&gt; true &lt;/code&gt; if user has eligible on-premises Windows physical or virtual machines, and that the requested key will only be used in their organization; &lt;code&gt; false &lt;/code&gt; otherwise.
  /// [location] The geo-location where the resource lives
  /// [multipleActivationKey] MAK 5x5 key.
  /// [name] The name of the resource
  /// [osType] Type of OS for which the key is requested.
  /// [provisioningState] Required.
  /// [supportType] Type of support
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetMultipleActivationKeyResult({
    this.agreementNumber,
    required this.azureApiVersion,
    required this.expirationDate,
    required this.id,
    this.installedServerNumber,
    this.isEligible,
    required this.location,
    required this.multipleActivationKey,
    required this.name,
    this.osType,
    required this.provisioningState,
    this.supportType,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agreementNumber': ?agreementNumber,
      'azureApiVersion': azureApiVersion,
      'expirationDate': expirationDate,
      'id': id,
      'installedServerNumber': ?installedServerNumber,
      'isEligible': ?isEligible,
      'location': location,
      'multipleActivationKey': multipleActivationKey,
      'name': name,
      'osType': ?osType,
      'provisioningState': provisioningState,
      'supportType': ?supportType,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetMultipleActivationKeyResult.fromMap(Map<String, dynamic> map) {
    return GetMultipleActivationKeyResult(
      agreementNumber: (() { final guardedValue = map['agreementNumber']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: map['azureApiVersion'] as String,
      expirationDate: map['expirationDate'] as String,
      id: map['id'] as String,
      installedServerNumber: (() { final guardedValue = map['installedServerNumber']; if (guardedValue == null) return null; return guardedValue as int; })(),
      isEligible: (() { final guardedValue = map['isEligible']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      location: map['location'] as String,
      multipleActivationKey: map['multipleActivationKey'] as String,
      name: map['name'] as String,
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      supportType: (() { final guardedValue = map['supportType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}

