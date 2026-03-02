// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNetworkSecurityPerimeter.
class GetNetworkSecurityPerimeterResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource ID.
  final String id;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String name;
  /// perimeter guid of the network security perimeter.
  final String perimeterGuid;
  /// The provisioning state of the scope assignment resource.
  final String provisioningState;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;

  /// Creates a new [GetNetworkSecurityPerimeterResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [perimeterGuid] perimeter guid of the network security perimeter.
  /// [provisioningState] The provisioning state of the scope assignment resource.
  /// [tags] Resource tags.
  /// [type] Resource type.
  GetNetworkSecurityPerimeterResult({
    required this.azureApiVersion,
    required this.id,
    this.location,
    required this.name,
    required this.perimeterGuid,
    required this.provisioningState,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': ?location,
      'name': name,
      'perimeterGuid': perimeterGuid,
      'provisioningState': provisioningState,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetNetworkSecurityPerimeterResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkSecurityPerimeterResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] as String,
      perimeterGuid: map['perimeterGuid'] as String,
      provisioningState: map['provisioningState'] as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

