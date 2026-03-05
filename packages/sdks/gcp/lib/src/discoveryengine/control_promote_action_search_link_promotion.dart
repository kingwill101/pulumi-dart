// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ControlPromoteActionSearchLinkPromotion {
  /// The description of the promoted link.
  final pulumi.Input<String>? description;
  /// The document to promote.
  final pulumi.Input<String>? document;
  /// Return promotions for basic site search.
  final pulumi.Input<bool>? enabled;
  /// The image URI of the promoted link.
  final pulumi.Input<String>? imageUri;
  /// The title of the promoted link.
  final pulumi.Input<String> title;
  /// The URI to promote.
  final pulumi.Input<String>? uri;

  /// Creates a new [ControlPromoteActionSearchLinkPromotion].
  /// [description] The description of the promoted link.
  /// [document] The document to promote.
  /// [enabled] Return promotions for basic site search.
  /// [imageUri] The image URI of the promoted link.
  /// [title] The title of the promoted link.
  /// [uri] The URI to promote.
  ControlPromoteActionSearchLinkPromotion({
    this.description,
    this.document,
    this.enabled,
    this.imageUri,
    required this.title,
    this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'document': ?document,
      'enabled': ?enabled,
      'imageUri': ?imageUri,
      'title': title,
      'uri': ?uri,
    };
  }

  factory ControlPromoteActionSearchLinkPromotion.fromMap(Map<String, dynamic> map) {
    return ControlPromoteActionSearchLinkPromotion(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      document: (() { final guardedValue = map['document']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      imageUri: (() { final guardedValue = map['imageUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      title: pulumi.Input.fromValue(map['title'] as String),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

