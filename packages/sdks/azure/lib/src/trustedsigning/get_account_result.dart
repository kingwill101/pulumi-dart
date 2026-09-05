// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccount.
class GetAccountResult {
  /// The URI of the Trusted Signing Account.
  final String? accountUri;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region where the Trusted Signing Account exists.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// The sku name of the Trusted Signing Account.
  final String? skuName;
  /// A mapping of tags assigned to the Trusted Signing Account.
  final Map<String, String>? tags;

  /// Creates a new [GetAccountResult].
  /// [accountUri] The URI of the Trusted Signing Account.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Trusted Signing Account exists.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [skuName] The sku name of the Trusted Signing Account.
  /// [tags] A mapping of tags assigned to the Trusted Signing Account.
  const GetAccountResult({
    this.accountUri,
    this.id,
    this.location,
    this.name,
    this.resourceGroupName,
    this.skuName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountUri': ?accountUri,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'skuName': ?skuName,
      'tags': ?tags,
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      accountUri: (() { final guardedValue = map['accountUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
