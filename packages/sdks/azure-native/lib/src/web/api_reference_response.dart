// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiReferenceResponse {
  /// Brand color
  final pulumi.Input<String>? brandColor;
  /// The custom API description
  final pulumi.Input<String>? description;
  /// The display name
  final pulumi.Input<String>? displayName;
  /// The icon URI
  final pulumi.Input<String>? iconUri;
  /// Resource reference id
  final pulumi.Input<String>? id;
  /// The name of the API
  final pulumi.Input<String>? name;
  /// The JSON representation of the swagger
  final pulumi.Input<dynamic>? swagger;
  /// Resource reference type
  final pulumi.Input<String>? type;

  /// Creates a new [ApiReferenceResponse].
  /// [brandColor] Brand color
  /// [description] The custom API description
  /// [displayName] The display name
  /// [iconUri] The icon URI
  /// [id] Resource reference id
  /// [name] The name of the API
  /// [swagger] The JSON representation of the swagger
  /// [type] Resource reference type
  ApiReferenceResponse({
    this.brandColor,
    this.description,
    this.displayName,
    this.iconUri,
    this.id,
    this.name,
    this.swagger,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brandColor': ?brandColor,
      'description': ?description,
      'displayName': ?displayName,
      'iconUri': ?iconUri,
      'id': ?id,
      'name': ?name,
      'swagger': ?swagger,
      'type': ?type,
    };
  }

  factory ApiReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ApiReferenceResponse(
      brandColor: map['brandColor'] == null ? null : (map['brandColor']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      iconUri: map['iconUri'] == null ? null : (map['iconUri']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      swagger: map['swagger'] == null ? null : (map['swagger']!).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

