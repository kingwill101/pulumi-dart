// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccount.
class GetAccountResult {
  /// The URI of the Trusted Signing Account.
  final String accountUri;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The Azure Region where the Trusted Signing Account exists.
  final String location;
  final String name;
  final String resourceGroupName;
  /// The sku name of the Trusted Signing Account.
  final String skuName;
  /// A mapping of tags assigned to the Trusted Signing Account.
  final Map<String, String> tags;

  /// Creates a new [GetAccountResult].
  /// [accountUri] The URI of the Trusted Signing Account.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Trusted Signing Account exists.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [skuName] The sku name of the Trusted Signing Account.
  /// [tags] A mapping of tags assigned to the Trusted Signing Account.
  const GetAccountResult({
    required this.accountUri,
    required this.id,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.skuName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountUri': accountUri,
      'id': id,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'skuName': skuName,
      'tags': tags,
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      accountUri: map['accountUri'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      skuName: map['skuName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
