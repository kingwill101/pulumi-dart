// ignore_for_file: unused_element, unnecessary_cast


/// Describes Az Resiliency status of Base resources
class ResourceAzStatusResponse {
  /// Zone resiliency status details for the resource.
  final String details;
  /// VM Size name.
  final bool isZoneResilient;
  /// VM Size properties.
  final String resourceName;
  /// VM Size id.
  final String resourceType;

  /// Creates a new [ResourceAzStatusResponse].
  /// [details] Zone resiliency status details for the resource.
  /// [isZoneResilient] VM Size name.
  /// [resourceName] VM Size properties.
  /// [resourceType] VM Size id.
  ResourceAzStatusResponse({
    required this.details,
    required this.isZoneResilient,
    required this.resourceName,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': details,
      'isZoneResilient': isZoneResilient,
      'resourceName': resourceName,
      'resourceType': resourceType,
    };
  }

  factory ResourceAzStatusResponse.fromMap(Map<String, dynamic> map) {
    return ResourceAzStatusResponse(
      details: map['details'] as String,
      isZoneResilient: map['isZoneResilient'] as bool,
      resourceName: map['resourceName'] as String,
      resourceType: map['resourceType'] as String,
    );
  }
}

