// ignore_for_file: unused_element, unnecessary_cast

import 'primary_region_properties.dart';

/// The service region configuration needed for Teams Callings.
class ServiceRegionProperties {
  /// The name of the region in which the resources needed for Teams Calling will be deployed.
  final String name;
  /// The configuration used in this region as primary, and other regions as backup.
  final PrimaryRegionProperties primaryRegionProperties;

  /// Creates a new [ServiceRegionProperties].
  /// [name] The name of the region in which the resources needed for Teams Calling will be deployed.
  /// [primaryRegionProperties] The configuration used in this region as primary, and other regions as backup.
  ServiceRegionProperties({
    required this.name,
    required this.primaryRegionProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'primaryRegionProperties': primaryRegionProperties.toMap(),
    };
  }

  factory ServiceRegionProperties.fromMap(Map<String, dynamic> map) {
    return ServiceRegionProperties(
      name: map['name'] as String,
      primaryRegionProperties: PrimaryRegionProperties.fromMap((map['primaryRegionProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

