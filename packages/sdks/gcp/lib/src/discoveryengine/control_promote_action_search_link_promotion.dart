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
      description: map['description'] == null ? null : (map['description']! as String).input(),
      document: map['document'] == null ? null : (map['document']! as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      imageUri: map['imageUri'] == null ? null : (map['imageUri']! as String).input(),
      title: (map['title'] as String).input(),
      uri: map['uri'] == null ? null : (map['uri']! as String).input(),
    );
  }
}

