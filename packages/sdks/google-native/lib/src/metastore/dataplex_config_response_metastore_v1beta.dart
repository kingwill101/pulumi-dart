// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies how metastore metadata should be integrated with the Dataplex service.
class DataplexConfigResponseMetastoreV1beta {
  /// A reference to the Lake resources that this metastore service is attached to. The key is the lake resource name. Example: projects/{project_number}/locations/{location_id}/lakes/{lake_id}.
  final pulumi.Input<Map<String, String>> lakeResources;

  /// Creates a new [DataplexConfigResponseMetastoreV1beta].
  /// [lakeResources] A reference to the Lake resources that this metastore service is attached to. The key is the lake resource name. Example: projects/{project_number}/locations/{location_id}/lakes/{lake_id}.
  const DataplexConfigResponseMetastoreV1beta({
    required this.lakeResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lakeResources': lakeResources,
    };
  }

  factory DataplexConfigResponseMetastoreV1beta.fromMap(Map<String, dynamic> map) {
    return DataplexConfigResponseMetastoreV1beta(
      lakeResources: pulumi.Input.fromValue((map['lakeResources'] as Map).cast<String, String>()),
    );
  }
}

