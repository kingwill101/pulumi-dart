// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'primary_region_properties.dart';

/// The service region configuration needed for Teams Callings.
class ServiceRegionProperties {
  /// The name of the region in which the resources needed for Teams Calling will be deployed.
  final pulumi.Input<String> name;
  /// The configuration used in this region as primary, and other regions as backup.
  final pulumi.Input<PrimaryRegionProperties> primaryRegionProperties;

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
      'primaryRegionProperties': pulumi.Input.mapInputValue<PrimaryRegionProperties, Map<String, dynamic>>(primaryRegionProperties, (value) => value.toMap()),
    };
  }

  factory ServiceRegionProperties.fromMap(Map<String, dynamic> map) {
    return ServiceRegionProperties(
      name: pulumi.Input.fromValue(map['name'] as String),
      primaryRegionProperties: pulumi.Input.fromValue(PrimaryRegionProperties.fromMap((map['primaryRegionProperties']! as Map).cast<String, dynamic>())),
    );
  }
}

