// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_custom_image_custom_image_args_doc}
/// The set of arguments for CustomImage.
/// {@endtemplate}
/// {@macro pulumi_index_custom_image_custom_image_args_doc}
class CustomImageArgs {
  /// An optional description for the image.
  final pulumi.Input<String>? description;
  /// An optional distribution name for the image. Valid values are documented [here](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Images/operation/images_create_custom)
  final pulumi.Input<String>? distribution;
  /// A name for the Custom Image.
  final pulumi.Input<String>? name;
  /// A list of regions. (Currently only one is supported).
  final pulumi.Input<List<String>> regions;
  /// A list of optional tags for the image.
  final pulumi.Input<List<String>>? tags;
  /// A URL from which the custom Linux virtual machine image may be retrieved.
  final pulumi.Input<String> url;

  /// Creates a new [CustomImageArgs].
  /// [description] An optional description for the image.
  /// [distribution] An optional distribution name for the image. Valid values are documented [here](https://docs.digitalocean.com/reference/api/digitalocean/#tag/Images/operation/images_create_custom)
  /// [name] A name for the Custom Image.
  /// [regions] A list of regions. (Currently only one is supported).
  /// [tags] A list of optional tags for the image.
  /// [url] A URL from which the custom Linux virtual machine image may be retrieved.
  CustomImageArgs({
    this.description,
    this.distribution,
    this.name,
    required this.regions,
    this.tags,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'distribution': ?distribution,
      'name': ?name,
      'regions': regions,
      'tags': ?tags,
      'url': url,
    };
  }

  factory CustomImageArgs.fromMap(Map<String, dynamic> map) {
    return CustomImageArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      distribution: (() { final guardedValue = map['distribution']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regions: pulumi.Input.fromValue((map['regions'] as List).cast<String>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

