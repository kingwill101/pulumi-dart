// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Support information for the content item.
class MetadataSupportResponse {
  /// Email of support contact
  final pulumi.Input<String>? email;
  /// Link for support help, like to support page to open a ticket etc.
  final pulumi.Input<String>? link;
  /// Name of the support contact. Company or person.
  final pulumi.Input<String>? name;
  /// Type of support for content item
  final pulumi.Input<String> tier;

  /// Creates a new [MetadataSupportResponse].
  /// [email] Email of support contact
  /// [link] Link for support help, like to support page to open a ticket etc.
  /// [name] Name of the support contact. Company or person.
  /// [tier] Type of support for content item
  MetadataSupportResponse({
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

  factory MetadataSupportResponse.fromMap(Map<String, dynamic> map) {
    return MetadataSupportResponse(
      email: map['email'] == null ? null : (map['email']! as String).input(),
      link: map['link'] == null ? null : (map['link']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      tier: (map['tier'] as String).input(),
    );
  }
}

