// ignore_for_file: unused_element, unnecessary_cast


/// Specifies how metastore metadata should be integrated with the Dataplex service.
class DataplexConfigMetastoreV1beta {
  /// A reference to the Lake resources that this metastore service is attached to. The key is the lake resource name. Example: projects/{project_number}/locations/{location_id}/lakes/{lake_id}.
  final Map<String, String>? lakeResources;

  /// Creates a new [DataplexConfigMetastoreV1beta].
  /// [lakeResources] A reference to the Lake resources that this metastore service is attached to. The key is the lake resource name. Example: projects/{project_number}/locations/{location_id}/lakes/{lake_id}.
  DataplexConfigMetastoreV1beta({
    this.lakeResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lakeResources': ?lakeResources,
    };
  }

  factory DataplexConfigMetastoreV1beta.fromMap(Map<String, dynamic> map) {
    return DataplexConfigMetastoreV1beta(
      lakeResources: map['lakeResources'] == null ? null : (map['lakeResources'] as Map).cast<String, String>(),
    );
  }
}

