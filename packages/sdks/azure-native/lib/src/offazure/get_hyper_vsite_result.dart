// ignore_for_file: unused_element, unnecessary_cast

import 'site_properties_response.dart';
import 'system_data_response.dart';

/// Result data returned by getHyperVSite.
class GetHyperVSiteResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// eTag for concurrency control.
  final String? eTag;
  /// Resource Id.
  final String id;
  /// Azure location in which Sites is created.
  final String? location;
  /// Name of the Hyper-V site.
  final String? name;
  /// Nested properties of Hyper-V site.
  final SitePropertiesResponse properties;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  final Map<String, String>? tags;
  /// Type of resource. Type = Microsoft.OffAzure/HyperVSites.
  final String type;

  /// Creates a new [GetHyperVSiteResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [eTag] eTag for concurrency control.
  /// [id] Resource Id.
  /// [location] Azure location in which Sites is created.
  /// [name] Name of the Hyper-V site.
  /// [properties] Nested properties of Hyper-V site.
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Optional.
  /// [type] Type of resource. Type = Microsoft.OffAzure/HyperVSites.
  GetHyperVSiteResult({
    required this.azureApiVersion,
    this.eTag,
    required this.id,
    this.location,
    this.name,
    required this.properties,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'eTag': ?eTag,
      'id': id,
      'location': ?location,
      'name': ?name,
      'properties': properties.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetHyperVSiteResult.fromMap(Map<String, dynamic> map) {
    return GetHyperVSiteResult(
      azureApiVersion: map['azureApiVersion'] as String,
      eTag: map['eTag'] == null ? null : map['eTag']! as String,
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location']! as String,
      name: map['name'] == null ? null : map['name']! as String,
      properties: SitePropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

