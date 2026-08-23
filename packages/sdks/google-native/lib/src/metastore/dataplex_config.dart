// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies how metastore metadata should be integrated with the Dataplex service.
class DataplexConfig {
  /// A reference to the Lake resources that this metastore service is attached to. The key is the lake resource name. Example: projects/{project_number}/locations/{location_id}/lakes/{lake_id}.
  final pulumi.Input<Map<String, String>>? lakeResources;

  /// Creates a new [DataplexConfig].
  /// [lakeResources] A reference to the Lake resources that this metastore service is attached to. The key is the lake resource name. Example: projects/{project_number}/locations/{location_id}/lakes/{lake_id}.
  const DataplexConfig({
    this.lakeResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lakeResources': ?lakeResources,
    };
  }

  factory DataplexConfig.fromMap(Map<String, dynamic> map) {
    return DataplexConfig(
      lakeResources: (() { final guardedValue = map['lakeResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
