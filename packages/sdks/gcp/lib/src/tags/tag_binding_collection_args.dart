// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_tags_tag_binding_collection_tag_binding_collection_args_doc}
/// The set of arguments for TagBindingCollection.
/// {@endtemplate}
/// {@macro pulumi_tags_tag_binding_collection_tag_binding_collection_args_doc}
class TagBindingCollectionArgs {
  /// The full resource name of the resource to which the tags are bound. E.g. //cloudresourcemanager.googleapis.com/projects/123
  final pulumi.Input<String> fullResourceName;
  /// The location of the TagBindingCollection.
  final pulumi.Input<String?>? location;
  /// A map of tag keys to values directly bound to this resource, specified in namespaced format.
  /// For example:
  /// "123/environment": "production"
  /// Keys must be namespaced names of TagKeys, and values must be short names of TagValues.
  /// This field is non-authoritative. Terraform will only manage the precise tags present in this map.
  final pulumi.Input<Map<String, String>> tags;

  /// Creates a new [TagBindingCollectionArgs].
  /// [fullResourceName] The full resource name of the resource to which the tags are bound. E.g. //cloudresourcemanager.googleapis.com/projects/123
  /// [location] The location of the TagBindingCollection.
  /// [tags] A map of tag keys to values directly bound to this resource, specified in namespaced format.
  const TagBindingCollectionArgs({
    required this.fullResourceName,
    this.location,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fullResourceName': fullResourceName,
      'location': ?location,
      'tags': tags,
    };
  }

  factory TagBindingCollectionArgs.fromMap(Map<String, dynamic> map) {
    return TagBindingCollectionArgs(
      fullResourceName: pulumi.Input.fromValue(map['fullResourceName'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
    );
  }
}
