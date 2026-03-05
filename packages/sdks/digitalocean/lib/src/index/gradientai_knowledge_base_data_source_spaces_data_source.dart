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
      bucketName: (() { final guardedValue = map['bucketName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      itemPath: (() { final guardedValue = map['itemPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

