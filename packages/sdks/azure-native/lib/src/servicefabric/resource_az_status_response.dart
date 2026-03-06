// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Describes Az Resiliency status of Base resources
class ResourceAzStatusResponse {
  /// Zone resiliency status details for the resource.
  final pulumi.Input<String> details;
  /// VM Size name.
  final pulumi.Input<bool> isZoneResilient;
  /// VM Size properties.
  final pulumi.Input<String> resourceName;
  /// VM Size id.
  final pulumi.Input<String> resourceType;

  /// Creates a new [ResourceAzStatusResponse].
  /// [details] Zone resiliency status details for the resource.
  /// [isZoneResilient] VM Size name.
  /// [resourceName] VM Size properties.
  /// [resourceType] VM Size id.
  const ResourceAzStatusResponse({
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
      details: pulumi.Input.fromValue(map['details'] as String),
      isZoneResilient: pulumi.Input.fromValue(map['isZoneResilient'] as bool),
      resourceName: pulumi.Input.fromValue(map['resourceName'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
    );
  }
}

