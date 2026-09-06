// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNetworkSecurityPerimeter.
class GetNetworkSecurityPerimeterResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String? name;
  /// perimeter guid of the network security perimeter.
  final String? perimeterGuid;
  /// The provisioning state of the scope assignment resource.
  final String? provisioningState;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;

  /// Creates a new [GetNetworkSecurityPerimeterResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [perimeterGuid] perimeter guid of the network security perimeter.
  /// [provisioningState] The provisioning state of the scope assignment resource.
  /// [tags] Resource tags.
  /// [type] Resource type.
  const GetNetworkSecurityPerimeterResult({
    this.azureApiVersion,
    this.id,
    this.location,
    this.name,
    this.perimeterGuid,
    this.provisioningState,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'perimeterGuid': ?perimeterGuid,
      'provisioningState': ?provisioningState,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetNetworkSecurityPerimeterResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkSecurityPerimeterResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      perimeterGuid: (() { final guardedValue = map['perimeterGuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
