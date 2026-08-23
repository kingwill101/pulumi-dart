// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccount.
class GetAccountResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  /// The primary key used to authenticate and authorize access to the Maps REST APIs.
  final String primaryAccessKey;
  final String resourceGroupName;
  /// The primary key used to authenticate and authorize access to the Maps REST APIs. The second key is given to provide seamless key regeneration.
  final String secondaryAccessKey;
  /// The SKU of the Azure Maps Account.
  final String skuName;
  final Map<String, String>? tags;
  /// A unique identifier for the Maps Account.
  final String xMsClientId;

  /// Creates a new [GetAccountResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [primaryAccessKey] The primary key used to authenticate and authorize access to the Maps REST APIs.
  /// [resourceGroupName] Required.
  /// [secondaryAccessKey] The primary key used to authenticate and authorize access to the Maps REST APIs. The second key is given to provide seamless key regeneration.
  /// [skuName] The SKU of the Azure Maps Account.
  /// [tags] Optional.
  /// [xMsClientId] A unique identifier for the Maps Account.
  const GetAccountResult({
    required this.id,
    required this.name,
    required this.primaryAccessKey,
    required this.resourceGroupName,
    required this.secondaryAccessKey,
    required this.skuName,
    this.tags,
    required this.xMsClientId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'primaryAccessKey': primaryAccessKey,
      'resourceGroupName': resourceGroupName,
      'secondaryAccessKey': secondaryAccessKey,
      'skuName': skuName,
      'tags': ?tags,
      'xMsClientId': xMsClientId,
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      id: map['id'] as String,
      name: map['name'] as String,
      primaryAccessKey: map['primaryAccessKey'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      secondaryAccessKey: map['secondaryAccessKey'] as String,
      skuName: map['skuName'] as String,
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      xMsClientId: map['xMsClientId'] as String,
    );
  }
}
