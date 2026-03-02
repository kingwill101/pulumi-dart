// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MetadataSupport {
  /// The email address of the support contact.
  final pulumi.Input<String>? email;
  /// The link for support help.
  final pulumi.Input<String>? link;
  /// The name of the support contact.
  final pulumi.Input<String>? name;
  /// The type of support for content item. Possible values are `Microsoft`, `Partner` and `Community`.
  final pulumi.Input<String> tier;

  /// Creates a new [MetadataSupport].
  /// [email] The email address of the support contact.
  /// [link] The link for support help.
  /// [name] The name of the support contact.
  /// [tier] The type of support for content item. Possible values are `Microsoft`, `Partner` and `Community`.
  MetadataSupport({
    this.email,
    this.link,
    this.name,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'link': ?link,
      'name': ?name,
      'tier': tier,
    };
  }

  factory MetadataSupport.fromMap(Map<String, dynamic> map) {
    return MetadataSupport(
      email: map['email'] == null ? null : (map['email'] as String).input(),
      link: map['link'] == null ? null : (map['link'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      tier: (map['tier'] as String).input(),
    );
  }
}

