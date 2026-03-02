// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datacatalog_lineage_v1_entity_reference.dart';

/// A lineage between source and target entities.
class GoogleCloudDatacatalogLineageV1EventLink {
  /// Reference to the source entity
  final pulumi.Input<GoogleCloudDatacatalogLineageV1EntityReference> source;
  /// Reference to the target entity
  final pulumi.Input<GoogleCloudDatacatalogLineageV1EntityReference> target;

  /// Creates a new [GoogleCloudDatacatalogLineageV1EventLink].
  /// [source] Reference to the source entity
  /// [target] Reference to the target entity
  GoogleCloudDatacatalogLineageV1EventLink({
    required this.source,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'source': pulumi.Input.mapInputValue<GoogleCloudDatacatalogLineageV1EntityReference, Map<String, dynamic>>(source, (value) => value.toMap()),
      'target': pulumi.Input.mapInputValue<GoogleCloudDatacatalogLineageV1EntityReference, Map<String, dynamic>>(target, (value) => value.toMap()),
    };
  }

  factory GoogleCloudDatacatalogLineageV1EventLink.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogLineageV1EventLink(
      source: (GoogleCloudDatacatalogLineageV1EntityReference.fromMap((map['source'] as Map).cast<String, dynamic>())).input(),
      target: (GoogleCloudDatacatalogLineageV1EntityReference.fromMap((map['target'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

