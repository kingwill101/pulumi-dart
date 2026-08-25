// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatascanDataDiscoverySpecBigqueryPublishingConfig {
  /// The BigQuery connection used to create BigLake tables. Must be in the form `projects/{projectId}/locations/{locationId}/connections/{connection_id}`.
  final pulumi.Input<String?>? connection;
  /// The location of the BigQuery dataset to publish BigLake external or non-BigLake external tables to.
  final pulumi.Input<String?>? location;
  /// The project of the BigQuery dataset to publish BigLake external or non-BigLake external tables to. If not specified, the project of the Cloud Storage bucket will be used. The format is "projects/{project_id_or_number}".
  final pulumi.Input<String?>? project;
  /// Determines whether to publish discovered tables as BigLake external tables or non-BigLake external tables.
  /// Possible values are: `TABLE_TYPE_UNSPECIFIED`, `EXTERNAL`, `BIGLAKE`.
  final pulumi.Input<String?>? tableType;

  /// Creates a new [DatascanDataDiscoverySpecBigqueryPublishingConfig].
  /// [connection] The BigQuery connection used to create BigLake tables. Must be in the form `projects/{projectId}/locations/{locationId}/connections/{connection_id}`.
  /// [location] The location of the BigQuery dataset to publish BigLake external or non-BigLake external tables to.
  /// [project] The project of the BigQuery dataset to publish BigLake external or non-BigLake external tables to. If not specified, the project of the Cloud Storage bucket will be used. The format is "projects/{project_id_or_number}".
  /// [tableType] Determines whether to publish discovered tables as BigLake external tables or non-BigLake external tables.
  const DatascanDataDiscoverySpecBigqueryPublishingConfig({
    this.connection,
    this.location,
    this.project,
    this.tableType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connection': ?connection,
      'location': ?location,
      'project': ?project,
      'tableType': ?tableType,
    };
  }

  factory DatascanDataDiscoverySpecBigqueryPublishingConfig.fromMap(Map<String, dynamic> map) {
    return DatascanDataDiscoverySpecBigqueryPublishingConfig(
      connection: (() { final guardedValue = map['connection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tableType: (() { final guardedValue = map['tableType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
