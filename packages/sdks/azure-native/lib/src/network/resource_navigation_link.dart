// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ResourceNavigationLink resource.
class ResourceNavigationLink {
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Link to the external resource
  final pulumi.Input<String>? link;
  /// Resource type of the linked resource.
  final pulumi.Input<String>? linkedResourceType;
  /// Name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;

  /// Creates a new [ResourceNavigationLink].
  /// [id] Resource ID.
  /// [link] Link to the external resource
  /// [linkedResourceType] Resource type of the linked resource.
  /// [name] Name of the resource that is unique within a resource group. This name can be used to access the resource.
  ResourceNavigationLink({
    this.id,
    this.link,
    this.linkedResourceType,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'link': ?link,
      'linkedResourceType': ?linkedResourceType,
      'name': ?name,
    };
  }

  factory ResourceNavigationLink.fromMap(Map<String, dynamic> map) {
    return ResourceNavigationLink(
      id: map['id'] == null ? null : (map['id']! as String).input(),
      link: map['link'] == null ? null : (map['link']! as String).input(),
      linkedResourceType: map['linkedResourceType'] == null ? null : (map['linkedResourceType']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

