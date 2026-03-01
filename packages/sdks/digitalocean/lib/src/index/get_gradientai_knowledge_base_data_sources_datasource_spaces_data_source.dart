// ignore_for_file: unused_element, unnecessary_cast


class GetGradientaiKnowledgeBaseDataSourcesDatasourceSpacesDataSource {
  /// The name of the Spaces bucket
  final String? bucketName;
  /// The path to the item in the bucket
  final String? itemPath;
  /// The region of the Spaces bucket
  final String? region;

  /// Creates a new [GetGradientaiKnowledgeBaseDataSourcesDatasourceSpacesDataSource].
  /// [bucketName] The name of the Spaces bucket
  /// [itemPath] The path to the item in the bucket
  /// [region] The region of the Spaces bucket
  GetGradientaiKnowledgeBaseDataSourcesDatasourceSpacesDataSource({
    this.bucketName,
    this.itemPath,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucketName': ?bucketName,
      'itemPath': ?itemPath,
      'region': ?region,
    };
  }

  factory GetGradientaiKnowledgeBaseDataSourcesDatasourceSpacesDataSource.fromMap(Map<String, dynamic> map) {
    return GetGradientaiKnowledgeBaseDataSourcesDatasourceSpacesDataSource(
      bucketName: map['bucketName'] == null ? null : map['bucketName'] as String,
      itemPath: map['itemPath'] == null ? null : map['itemPath'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

