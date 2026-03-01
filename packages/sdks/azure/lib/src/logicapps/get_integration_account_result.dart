// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getIntegrationAccount.
class GetIntegrationAccountResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure Region where the Logic App Integration Account exists.
  final String location;
  final String name;
  final String resourceGroupName;
  /// The SKU name of the Logic App Integration Account.
  final String skuName;
  /// A mapping of tags assigned to the Logic App Integration Account.
  final Map<String, String> tags;

  /// Creates a new [GetIntegrationAccountResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Logic App Integration Account exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [skuName] The SKU name of the Logic App Integration Account.
  /// [tags] A mapping of tags assigned to the Logic App Integration Account.
  GetIntegrationAccountResult({
    required this.id,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.skuName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
      'tags': tags,
    };
  }

  factory GetIntegrationAccountResult.fromMap(Map<String, dynamic> map) {
    return GetIntegrationAccountResult(
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      skuName: map['skuName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

