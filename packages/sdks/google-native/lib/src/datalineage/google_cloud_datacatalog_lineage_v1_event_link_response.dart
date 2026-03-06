// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_lineage_v1_entity_reference_response.dart';

/// A lineage between source and target entities.
class GoogleCloudDatacatalogLineageV1EventLinkResponse {
  /// Reference to the source entity
  final pulumi.Input<GoogleCloudDatacatalogLineageV1EntityReferenceResponse> source;
  /// Reference to the target entity
  final pulumi.Input<GoogleCloudDatacatalogLineageV1EntityReferenceResponse> target;

  /// Creates a new [GoogleCloudDatacatalogLineageV1EventLinkResponse].
  /// [source] Reference to the source entity
  /// [target] Reference to the target entity
  const GoogleCloudDatacatalogLineageV1EventLinkResponse({
    required this.source,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'source': pulumi.Input.mapInputValue<GoogleCloudDatacatalogLineageV1EntityReferenceResponse, Map<String, dynamic>>(source, (value) => value.toMap()),
      'target': pulumi.Input.mapInputValue<GoogleCloudDatacatalogLineageV1EntityReferenceResponse, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDatacatalogLineageV1EventLinkResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogLineageV1EventLinkResponse(
      source: pulumi.Input.fromValue(GoogleCloudDatacatalogLineageV1EntityReferenceResponse.fromMap((map['source']! as Map).cast<String, dynamic>())),
      target: pulumi.Input.fromValue(GoogleCloudDatacatalogLineageV1EntityReferenceResponse.fromMap((map['target']! as Map).cast<String, dynamic>())),
    );
  }
}

