// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_v1beta1_system_timestamps_response.dart';
import 'google_cloud_datacatalog_v1beta1_taxonomy_service_response.dart';

/// Result data returned by getTaxonomy.
class GetTaxonomyDatacatalogV1beta1Result {
  /// Optional. A list of policy types that are activated for this taxonomy. If not set, defaults to an empty list.
  final List<String> activatedPolicyTypes;
  /// Optional. Description of this taxonomy. It must: contain only unicode characters, tabs, newlines, carriage returns and page breaks; and be at most 2000 bytes long when encoded in UTF-8. If not set, defaults to an empty description.
  final String description;
  /// User defined name of this taxonomy. It must: contain only unicode letters, numbers, underscores, dashes and spaces; not start or end with spaces; and be at most 200 bytes long when encoded in UTF-8. The taxonomy display name must be unique within an organization.
  final String displayName;
  /// Resource name of this taxonomy, whose format is: "projects/{project_number}/locations/{location_id}/taxonomies/{id}".
  final String name;
  /// Number of policy tags contained in this taxonomy.
  final int policyTagCount;
  /// Identity of the service which owns the Taxonomy. This field is only populated when the taxonomy is created by a Google Cloud service. Currently only 'DATAPLEX' is supported.
  final GoogleCloudDatacatalogV1beta1TaxonomyServiceResponse service;
  /// Timestamps about this taxonomy. Only create_time and update_time are used.
  final GoogleCloudDatacatalogV1beta1SystemTimestampsResponse taxonomyTimestamps;

  /// Creates a new [GetTaxonomyDatacatalogV1beta1Result].
  /// [activatedPolicyTypes] Optional. A list of policy types that are activated for this taxonomy. If not set, defaults to an empty list.
  /// [description] Optional. Description of this taxonomy. It must: contain only unicode characters, tabs, newlines, carriage returns and page breaks; and be at most 2000 bytes long when encoded in UTF-8. If not set, defaults to an empty description.
  /// [displayName] User defined name of this taxonomy. It must: contain only unicode letters, numbers, underscores, dashes and spaces; not start or end with spaces; and be at most 200 bytes long when encoded in UTF-8. The taxonomy display name must be unique within an organization.
  /// [name] Resource name of this taxonomy, whose format is: "projects/{project_number}/locations/{location_id}/taxonomies/{id}".
  /// [policyTagCount] Number of policy tags contained in this taxonomy.
  /// [service] Identity of the service which owns the Taxonomy. This field is only populated when the taxonomy is created by a Google Cloud service. Currently only 'DATAPLEX' is supported.
  /// [taxonomyTimestamps] Timestamps about this taxonomy. Only create_time and update_time are used.
  const GetTaxonomyDatacatalogV1beta1Result({
    required this.activatedPolicyTypes,
    required this.description,
    required this.displayName,
    required this.name,
    required this.policyTagCount,
    required this.service,
    required this.taxonomyTimestamps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activatedPolicyTypes': activatedPolicyTypes,
      'description': description,
      'displayName': displayName,
      'name': name,
      'policyTagCount': policyTagCount,
      'service': service.toMap(),
      'taxonomyTimestamps': taxonomyTimestamps.toMap(),
    };
  }

  factory GetTaxonomyDatacatalogV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetTaxonomyDatacatalogV1beta1Result(
      activatedPolicyTypes: (map['activatedPolicyTypes'] as List).cast<String>(),
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      name: map['name'] as String,
      policyTagCount: map['policyTagCount'] as int,
      service: GoogleCloudDatacatalogV1beta1TaxonomyServiceResponse.fromMap((map['service']! as Map).cast<String, dynamic>()),
      taxonomyTimestamps: GoogleCloudDatacatalogV1beta1SystemTimestampsResponse.fromMap((map['taxonomyTimestamps']! as Map).cast<String, dynamic>()),
    );
  }
}

