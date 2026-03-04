// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiHubInstanceConfig {
  /// Optional. The Customer Managed Encryption Key (CMEK) used for data encryption.
  /// The CMEK name should follow the format of
  /// `projects/([^/]+)/locations/([^/]+)/keyRings/([^/]+)/cryptoKeys/([^/]+)`,
  /// where the location must match the instance location.
  /// If the CMEK is not provided, a GMEK will be created for the instance.
  final pulumi.Input<String>? cmekKeyName;

  /// Optional. If true, the search will be disabled for the instance. The default value
  /// is false.
  final pulumi.Input<bool>? disableSearch;

  /// Optional. Encryption type for the region. If the encryption type is CMEK, the
  /// cmek_key_name must be provided. If no encryption type is provided,
  /// GMEK will be used.
  /// Possible values:
  /// ENCRYPTION_TYPE_UNSPECIFIED
  /// GMEK
  /// CMEK
  final pulumi.Input<String>? encryptionType;

  /// Optional. The name of the Vertex AI location where the data store is stored.
  final pulumi.Input<String>? vertexLocation;

  /// Creates a new [ApiHubInstanceConfig].
  /// [cmekKeyName] Optional. The Customer Managed Encryption Key (CMEK) used for data encryption.
  /// [disableSearch] Optional. If true, the search will be disabled for the instance. The default value
  /// [encryptionType] Optional. Encryption type for the region. If the encryption type is CMEK, the
  /// [vertexLocation] Optional. The name of the Vertex AI location where the data store is stored.
  ApiHubInstanceConfig({
    this.cmekKeyName,
    this.disableSearch,
    this.encryptionType,
    this.vertexLocation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cmekKeyName': ?cmekKeyName,
      'disableSearch': ?disableSearch,
      'encryptionType': ?encryptionType,
      'vertexLocation': ?vertexLocation,
    };
  }

  factory ApiHubInstanceConfig.fromMap(Map<String, dynamic> map) {
    return ApiHubInstanceConfig(
      cmekKeyName: (() {
        final guardedValue = map['cmekKeyName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      disableSearch: (() {
        final guardedValue = map['disableSearch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      encryptionType: (() {
        final guardedValue = map['encryptionType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vertexLocation: (() {
        final guardedValue = map['vertexLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
