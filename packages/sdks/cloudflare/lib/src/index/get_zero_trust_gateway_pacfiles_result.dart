// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetZeroTrustGatewayPacfilesResult {
  final pulumi.Input<String> createdAt;
  /// Detailed description of the PAC file.
  final pulumi.Input<String> description;
  final pulumi.Input<String> id;
  /// Name of the PAC file.
  final pulumi.Input<String> name;
  /// URL-friendly version of the PAC file name.
  final pulumi.Input<String> slug;
  final pulumi.Input<String> updatedAt;
  /// Unique URL to download the PAC file.
  final pulumi.Input<String> url;

  /// Creates a new [GetZeroTrustGatewayPacfilesResult].
  /// [createdAt] Required.
  /// [description] Detailed description of the PAC file.
  /// [id] Required.
  /// [name] Name of the PAC file.
  /// [slug] URL-friendly version of the PAC file name.
  /// [updatedAt] Required.
  /// [url] Unique URL to download the PAC file.
  const GetZeroTrustGatewayPacfilesResult({
    required this.createdAt,
    required this.description,
    required this.id,
    required this.name,
    required this.slug,
    required this.updatedAt,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'description': description,
      'id': id,
      'name': name,
      'slug': slug,
      'updatedAt': updatedAt,
      'url': url,
    };
  }

  factory GetZeroTrustGatewayPacfilesResult.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustGatewayPacfilesResult(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      slug: pulumi.Input.fromValue(map['slug'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}
