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
      brandColor: (() { final guardedValue = map['brandColor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iconUri: (() { final guardedValue = map['iconUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      swagger: (() { final guardedValue = map['swagger']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

