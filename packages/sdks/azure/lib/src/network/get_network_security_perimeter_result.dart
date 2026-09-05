// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNetworkSecurityPerimeter.
class GetNetworkSecurityPerimeterResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region where the Network Security Perimeter exists.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// A mapping of tags assigned to the Network Security Perimeter.
  final Map<String, String>? tags;

  /// Creates a new [GetNetworkSecurityPerimeterResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the Network Security Perimeter exists.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags assigned to the Network Security Perimeter.
  const GetNetworkSecurityPerimeterResult({
    this.id,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetNetworkSecurityPerimeterResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkSecurityPerimeterResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
