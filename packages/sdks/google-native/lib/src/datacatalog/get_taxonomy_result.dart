// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_datacatalog_v1_system_timestamps_response.dart';
import 'google_cloud_datacatalog_v1_taxonomy_service_response.dart';

/// Result data returned by getTaxonomy.
class GetTaxonomyResult {
  /// Optional. A list of policy types that are activated for this taxonomy. If not set, defaults to an empty list.
  final List<String>? activatedPolicyTypes;
  /// Optional. Description of this taxonomy. If not set, defaults to empty. The description must contain only Unicode characters, tabs, newlines, carriage returns, and page breaks, and be at most 2000 bytes long when encoded in UTF-8.
  final String? description;
  /// User-defined name of this taxonomy. The name can't start or end with spaces, must contain only Unicode letters, numbers, underscores, dashes, and spaces, and be at most 200 bytes long when encoded in UTF-8. The taxonomy display name must be unique within an organization.
  final String? displayName;
  /// Resource name of this taxonomy in URL format. Note: Policy tag manager generates unique taxonomy IDs.
  final String? name;
  /// Number of policy tags in this taxonomy.
  final int? policyTagCount;
  /// Identity of the service which owns the Taxonomy. This field is only populated when the taxonomy is created by a Google Cloud service. Currently only 'DATAPLEX' is supported.
  final GoogleCloudDatacatalogV1TaxonomyServiceResponse? service;
  /// Creation and modification timestamps of this taxonomy.
  final GoogleCloudDatacatalogV1SystemTimestampsResponse? taxonomyTimestamps;

  /// Creates a new [GetTaxonomyResult].
  /// [activatedPolicyTypes] Optional. A list of policy types that are activated for this taxonomy. If not set, defaults to an empty list.
  /// [description] Optional. Description of this taxonomy. If not set, defaults to empty. The description must contain only Unicode characters, tabs, newlines, carriage returns, and page breaks, and be at most 2000 bytes long when encoded in UTF-8.
  /// [displayName] User-defined name of this taxonomy. The name can't start or end with spaces, must contain only Unicode letters, numbers, underscores, dashes, and spaces, and be at most 200 bytes long when encoded in UTF-8. The taxonomy display name must be unique within an organization.
  /// [name] Resource name of this taxonomy in URL format. Note: Policy tag manager generates unique taxonomy IDs.
  /// [policyTagCount] Number of policy tags in this taxonomy.
  /// [service] Identity of the service which owns the Taxonomy. This field is only populated when the taxonomy is created by a Google Cloud service. Currently only 'DATAPLEX' is supported.
  /// [taxonomyTimestamps] Creation and modification timestamps of this taxonomy.
  const GetTaxonomyResult({
    this.activatedPolicyTypes,
    this.description,
    this.displayName,
    this.name,
    this.policyTagCount,
    this.service,
    this.taxonomyTimestamps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activatedPolicyTypes': ?activatedPolicyTypes,
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'policyTagCount': ?policyTagCount,
      'service': ?service?.toMap(),
      'taxonomyTimestamps': ?taxonomyTimestamps?.toMap(),
    };
  }

  factory GetTaxonomyResult.fromMap(Map<String, dynamic> map) {
    return GetTaxonomyResult(
      activatedPolicyTypes: (() { final guardedValue = map['activatedPolicyTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyTagCount: (() { final guardedValue = map['policyTagCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return GoogleCloudDatacatalogV1TaxonomyServiceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      taxonomyTimestamps: (() { final guardedValue = map['taxonomyTimestamps']; if (guardedValue == null) return null; return GoogleCloudDatacatalogV1SystemTimestampsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
