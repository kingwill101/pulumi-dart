// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ServiceAssociationLink resource.
class ServiceAssociationLink {
  /// Resource ID.
  final pulumi.Input<String>? id;

  /// Link to the external resource.
  final pulumi.Input<String>? link;

  /// Resource type of the linked resource.
  final pulumi.Input<String>? linkedResourceType;

  /// Name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;

  /// Creates a new [ServiceAssociationLink].
  /// [id] Resource ID.
  /// [link] Link to the external resource.
  /// [linkedResourceType] Resource type of the linked resource.
  /// [name] Name of the resource that is unique within a resource group. This name can be used to access the resource.
  ServiceAssociationLink({
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

  factory ServiceAssociationLink.fromMap(Map<String, dynamic> map) {
    return ServiceAssociationLink(
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      link: (() {
        final guardedValue = map['link'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      linkedResourceType: (() {
        final guardedValue = map['linkedResourceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
