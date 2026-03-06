// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MetastoreFederationBackendMetastore {
  /// The type of the backend metastore.
  /// Possible values are: `METASTORE_TYPE_UNSPECIFIED`, `DATAPROC_METASTORE`, `BIGQUERY`.
  final pulumi.Input<String> metastoreType;
  /// The relative resource name of the metastore that is being federated. The formats of the relative resource names for the currently supported metastores are listed below: Dataplex: projects/{projectId}/locations/{location}/lakes/{lake_id} BigQuery: projects/{projectId} Dataproc Metastore: projects/{projectId}/locations/{location}/services/{serviceId}
  final pulumi.Input<String> name;
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> rank;

  /// Creates a new [MetastoreFederationBackendMetastore].
  /// [metastoreType] The type of the backend metastore.
  /// [name] The relative resource name of the metastore that is being federated. The formats of the relative resource names for the currently supported metastores are listed below: Dataplex: projects/{projectId}/locations/{location}/lakes/{lake_id} BigQuery: projects/{projectId} Dataproc Metastore: projects/{projectId}/locations/{location}/services/{serviceId}
  /// [rank] The identifier for this object. Format specified above.
  const MetastoreFederationBackendMetastore({
    required this.metastoreType,
    required this.name,
    required this.rank,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metastoreType': metastoreType,
      'name': name,
      'rank': rank,
    };
  }

  factory MetastoreFederationBackendMetastore.fromMap(Map<String, dynamic> map) {
    return MetastoreFederationBackendMetastore(
      metastoreType: pulumi.Input.fromValue(map['metastoreType'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      rank: pulumi.Input.fromValue(map['rank'] as String),
    );
  }
}

