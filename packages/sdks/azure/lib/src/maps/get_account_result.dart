// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccount.
class GetAccountResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  /// The primary key used to authenticate and authorize access to the Maps REST APIs.
  final String? primaryAccessKey;
  final String? resourceGroupName;
  /// The primary key used to authenticate and authorize access to the Maps REST APIs. The second key is given to provide seamless key regeneration.
  final String? secondaryAccessKey;
  /// The SKU of the Azure Maps Account.
  final String? skuName;
  final Map<String, String>? tags;
  /// A unique identifier for the Maps Account.
  final String? xMsClientId;

  /// Creates a new [GetAccountResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [primaryAccessKey] The primary key used to authenticate and authorize access to the Maps REST APIs.
  /// [resourceGroupName] Optional.
  /// [secondaryAccessKey] The primary key used to authenticate and authorize access to the Maps REST APIs. The second key is given to provide seamless key regeneration.
  /// [skuName] The SKU of the Azure Maps Account.
  /// [tags] Optional.
  /// [xMsClientId] A unique identifier for the Maps Account.
  const GetAccountResult({
    this.id,
    this.name,
    this.primaryAccessKey,
    this.resourceGroupName,
    this.secondaryAccessKey,
    this.skuName,
    this.tags,
    this.xMsClientId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'primaryAccessKey': ?primaryAccessKey,
      'resourceGroupName': ?resourceGroupName,
      'secondaryAccessKey': ?secondaryAccessKey,
      'skuName': ?skuName,
      'tags': ?tags,
      'xMsClientId': ?xMsClientId,
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryAccessKey: (() { final guardedValue = map['primaryAccessKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryAccessKey: (() { final guardedValue = map['secondaryAccessKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      xMsClientId: (() { final guardedValue = map['xMsClientId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
