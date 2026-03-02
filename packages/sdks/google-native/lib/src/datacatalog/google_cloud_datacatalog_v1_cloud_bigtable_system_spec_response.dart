// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specification that applies to all entries that are part of `CLOUD_BIGTABLE` system (user_specified_type)
class GoogleCloudDatacatalogV1CloudBigtableSystemSpecResponse {
  /// Display name of the Instance. This is user specified and different from the resource name.
  final pulumi.Input<String> instanceDisplayName;

  /// Creates a new [GoogleCloudDatacatalogV1CloudBigtableSystemSpecResponse].
  /// [instanceDisplayName] Display name of the Instance. This is user specified and different from the resource name.
  GoogleCloudDatacatalogV1CloudBigtableSystemSpecResponse({
    required this.instanceDisplayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceDisplayName': instanceDisplayName,
    };
  }

  factory GoogleCloudDatacatalogV1CloudBigtableSystemSpecResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1CloudBigtableSystemSpecResponse(
      instanceDisplayName: (map['instanceDisplayName'] as String).input(),
    );
  }
}

