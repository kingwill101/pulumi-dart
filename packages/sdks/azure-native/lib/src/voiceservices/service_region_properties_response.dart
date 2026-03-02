// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'primary_region_properties_response.dart';

/// The service region configuration needed for Teams Callings.
class ServiceRegionPropertiesResponse {
  /// The name of the region in which the resources needed for Teams Calling will be deployed.
  final pulumi.Input<String> name;
  /// The configuration used in this region as primary, and other regions as backup.
  final pulumi.Input<PrimaryRegionPropertiesResponse> primaryRegionProperties;

  /// Creates a new [ServiceRegionPropertiesResponse].
  /// [name] The name of the region in which the resources needed for Teams Calling will be deployed.
  /// [primaryRegionProperties] The configuration used in this region as primary, and other regions as backup.
  ServiceRegionPropertiesResponse({
    required this.name,
    required this.primaryRegionProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'primaryRegionProperties': pulumi.Input.mapInputValue<PrimaryRegionPropertiesResponse, Map<String, dynamic>>(primaryRegionProperties, (value) => value.toMap()),
    };
  }

  factory ServiceRegionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ServiceRegionPropertiesResponse(
      name: (map['name'] as String).input(),
      primaryRegionProperties: (PrimaryRegionPropertiesResponse.fromMap((map['primaryRegionProperties'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

