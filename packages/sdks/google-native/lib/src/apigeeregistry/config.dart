// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Available configurations to provision an Instance.
class Config {
  /// The Customer Managed Encryption Key (CMEK) used for data encryption. The CMEK name should follow the format of `projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)`, where the `location` must match InstanceConfig.location.
  final pulumi.Input<String> cmekKeyName;

  /// Creates a new [Config].
  /// [cmekKeyName] The Customer Managed Encryption Key (CMEK) used for data encryption. The CMEK name should follow the format of `projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)`, where the `location` must match InstanceConfig.location.
  const Config({
    required this.cmekKeyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cmekKeyName': cmekKeyName,
    };
  }

  factory Config.fromMap(Map<String, dynamic> map) {
    return Config(
      cmekKeyName: pulumi.Input.fromValue(map['cmekKeyName'] as String),
    );
  }
}
