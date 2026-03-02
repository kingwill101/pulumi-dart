// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GradientaiKnowledgeBaseDataSourceSpacesDataSource {
  /// The name of the Spaces bucket
  final pulumi.Input<String>? bucketName;
  /// The path to the item in the bucket
  final pulumi.Input<String>? itemPath;
  /// The region of the Spaces bucket
  final pulumi.Input<String>? region;

  /// Creates a new [GradientaiKnowledgeBaseDataSourceSpacesDataSource].
  /// [bucketName] The name of the Spaces bucket
  /// [itemPath] The path to the item in the bucket
  /// [region] The region of the Spaces bucket
  GradientaiKnowledgeBaseDataSourceSpacesDataSource({
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

  factory GradientaiKnowledgeBaseDataSourceSpacesDataSource.fromMap(Map<String, dynamic> map) {
    return GradientaiKnowledgeBaseDataSourceSpacesDataSource(
      bucketName: map['bucketName'] == null ? null : (map['bucketName']! as String).input(),
      itemPath: map['itemPath'] == null ? null : (map['itemPath']! as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
    );
  }
}

