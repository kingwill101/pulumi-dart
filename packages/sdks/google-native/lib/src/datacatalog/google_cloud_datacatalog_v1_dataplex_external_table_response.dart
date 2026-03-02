// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// External table registered by Dataplex. Dataplex publishes data discovered from an asset into multiple other systems (BigQuery, DPMS) in form of tables. We call them "external tables". External tables are also synced into the Data Catalog. This message contains pointers to those external tables (fully qualified name, resource name et cetera) within the Data Catalog.
class GoogleCloudDatacatalogV1DataplexExternalTableResponse {
  /// Name of the Data Catalog entry representing the external table.
  final pulumi.Input<String> dataCatalogEntry;
  /// Fully qualified name (FQN) of the external table.
  final pulumi.Input<String> fullyQualifiedName;
  /// Google Cloud resource name of the external table.
  final pulumi.Input<String> googleCloudResource;
  /// Service in which the external table is registered.
  final pulumi.Input<String> system;

  /// Creates a new [GoogleCloudDatacatalogV1DataplexExternalTableResponse].
  /// [dataCatalogEntry] Name of the Data Catalog entry representing the external table.
  /// [fullyQualifiedName] Fully qualified name (FQN) of the external table.
  /// [googleCloudResource] Google Cloud resource name of the external table.
  /// [system] Service in which the external table is registered.
  GoogleCloudDatacatalogV1DataplexExternalTableResponse({
    required this.dataCatalogEntry,
    required this.fullyQualifiedName,
    required this.googleCloudResource,
    required this.system,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCatalogEntry': dataCatalogEntry,
      'fullyQualifiedName': fullyQualifiedName,
      'googleCloudResource': googleCloudResource,
      'system': system,
    };
  }

  factory GoogleCloudDatacatalogV1DataplexExternalTableResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDatacatalogV1DataplexExternalTableResponse(
      dataCatalogEntry: (map['dataCatalogEntry'] as String).input(),
      fullyQualifiedName: (map['fullyQualifiedName'] as String).input(),
      googleCloudResource: (map['googleCloudResource'] as String).input(),
      system: (map['system'] as String).input(),
    );
  }
}

