// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Support information for the content item.
class MetadataSupport {
  /// Email of support contact
  final pulumi.Input<String>? email;
  /// Link for support help, like to support page to open a ticket etc.
  final pulumi.Input<String>? link;
  /// Name of the support contact. Company or person.
  final pulumi.Input<String>? name;
  /// Type of support for content item
  final pulumi.Input<String> tier;

  /// Creates a new [MetadataSupport].
  /// [email] Email of support contact
  /// [link] Link for support help, like to support page to open a ticket etc.
  /// [name] Name of the support contact. Company or person.
  /// [tier] Type of support for content item
  const MetadataSupport({
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
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      link: (() { final guardedValue = map['link']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tier: pulumi.Input.fromValue(map['tier'] as String),
    );
  }
}

