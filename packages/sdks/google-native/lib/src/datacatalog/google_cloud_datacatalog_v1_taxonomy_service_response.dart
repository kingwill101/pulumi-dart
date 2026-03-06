// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The source system of the Taxonomy.
class GoogleCloudDatacatalogV1TaxonomyServiceResponse {
  /// The service agent for the service.
  final pulumi.Input<String> identity;
  /// The Google Cloud service name.
  final pulumi.Input<String> name;

  /// Creates a new [GoogleCloudDatacatalogV1TaxonomyServiceResponse].
  /// [identity] The service agent for the service.
  /// [name] The Google Cloud service name.
  const GoogleCloudDatacatalogV1TaxonomyServiceResponse({
    required this.identity,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': identity,
      'name': name,
    };
  }

  factory GoogleCloudDatacatalogV1TaxonomyServiceResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1TaxonomyServiceResponse(
      identity: pulumi.Input.fromValue(map['identity'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

