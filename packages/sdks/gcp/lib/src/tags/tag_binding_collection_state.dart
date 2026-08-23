// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TagBindingCollection resources.
class TagBindingCollectionState {
  /// (Output) The most recent state of all direct tags on the resource, as reported by the API.
  /// This includes the tags configured through Terraform, Google system tags, and tags attached by other clients.
  final pulumi.Input<Map<String, String>>? activeTags;
  /// The full resource name of the resource to which the tags are bound. E.g. //cloudresourcemanager.googleapis.com/projects/123
  final pulumi.Input<String>? fullResourceName;
  /// The location of the TagBindingCollection.
  final pulumi.Input<String>? location;
  /// The name of the TagBindingCollection, in the format:
  /// locations/{location}/tagBindingCollections/{encoded_full_resource_name}
  final pulumi.Input<String>? name;
  /// A map of tag keys to values directly bound to this resource, specified in namespaced format.
  /// For example:
  /// "123/environment": "production"
  /// Keys must be namespaced names of TagKeys, and values must be short names of TagValues.
  /// This field is non-authoritative. Terraform will only manage the precise tags present in this map.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [TagBindingCollectionState].
  /// [activeTags] (Output) The most recent state of all direct tags on the resource, as reported by the API.
  /// [fullResourceName] The full resource name of the resource to which the tags are bound. E.g. //cloudresourcemanager.googleapis.com/projects/123
  /// [location] The location of the TagBindingCollection.
  /// [name] The name of the TagBindingCollection, in the format:
  /// [tags] A map of tag keys to values directly bound to this resource, specified in namespaced format.
  const TagBindingCollectionState({
    this.activeTags,
    this.fullResourceName,
    this.location,
    this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeTags': ?activeTags,
      'fullResourceName': ?fullResourceName,
      'location': ?location,
      'name': ?name,
      'tags': ?tags,
    };
  }

  factory TagBindingCollectionState.fromMap(Map<String, dynamic> map) {
    return TagBindingCollectionState(
      activeTags: (() { final guardedValue = map['activeTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      fullResourceName: (() { final guardedValue = map['fullResourceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
