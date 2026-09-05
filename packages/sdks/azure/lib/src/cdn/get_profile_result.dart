// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getProfile.
class GetProfileResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region where the resource exists.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// The pricing related information of current CDN profile.
  final String? sku;
  /// A mapping of tags assigned to the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetProfileResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the resource exists.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [sku] The pricing related information of current CDN profile.
  /// [tags] A mapping of tags assigned to the resource.
  const GetProfileResult({
    this.id,
    this.location,
    this.name,
    this.resourceGroupName,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'sku': ?sku,
      'tags': ?tags,
    };
  }

  factory GetProfileResult.fromMap(Map<String, dynamic> map) {
    return GetProfileResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
