// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCustomPageAssetsResult {
  /// A short description of the custom asset.
  final pulumi.Input<String> description;
  /// The unique name of the custom asset. Can only contain letters (A-Z, a-z), numbers (0-9), and underscores (_).
  final pulumi.Input<String> id;
  final pulumi.Input<String> lastUpdated;
  /// The unique name of the custom asset. Can only contain letters (A-Z, a-z), numbers (0-9), and underscores (_).
  final pulumi.Input<String> name;
  /// The size of the asset content in bytes.
  final pulumi.Input<int> sizeBytes;
  /// The URL where the asset content is fetched from.
  final pulumi.Input<String> url;

  /// Creates a new [GetCustomPageAssetsResult].
  /// [description] A short description of the custom asset.
  /// [id] The unique name of the custom asset. Can only contain letters (A-Z, a-z), numbers (0-9), and underscores (_).
  /// [lastUpdated] Required.
  /// [name] The unique name of the custom asset. Can only contain letters (A-Z, a-z), numbers (0-9), and underscores (_).
  /// [sizeBytes] The size of the asset content in bytes.
  /// [url] The URL where the asset content is fetched from.
  const GetCustomPageAssetsResult({
    required this.description,
    required this.id,
    required this.lastUpdated,
    required this.name,
    required this.sizeBytes,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'id': id,
      'lastUpdated': lastUpdated,
      'name': name,
      'sizeBytes': sizeBytes,
      'url': url,
    };
  }

  factory GetCustomPageAssetsResult.fromMap(Map<String, dynamic> map) {
    return GetCustomPageAssetsResult(
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      lastUpdated: pulumi.Input.fromValue(map['lastUpdated'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      sizeBytes: pulumi.Input.fromValue((map['sizeBytes'] as num).toInt()),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
