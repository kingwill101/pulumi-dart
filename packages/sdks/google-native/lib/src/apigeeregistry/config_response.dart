// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Available configurations to provision an Instance.
class ConfigResponse {
  /// The Customer Managed Encryption Key (CMEK) used for data encryption. The CMEK name should follow the format of `projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)`, where the `location` must match InstanceConfig.location.
  final pulumi.Input<String> cmekKeyName;
  /// The GCP location where the Instance resides.
  final pulumi.Input<String> location;

  /// Creates a new [ConfigResponse].
  /// [cmekKeyName] The Customer Managed Encryption Key (CMEK) used for data encryption. The CMEK name should follow the format of `projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)`, where the `location` must match InstanceConfig.location.
  /// [location] The GCP location where the Instance resides.
  const ConfigResponse({
    required this.cmekKeyName,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cmekKeyName': cmekKeyName,
      'location': location,
    };
  }

  factory ConfigResponse.fromMap(Map<String, dynamic> map) {
    return ConfigResponse(
      cmekKeyName: pulumi.Input.fromValue(map['cmekKeyName'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
    );
  }
}

