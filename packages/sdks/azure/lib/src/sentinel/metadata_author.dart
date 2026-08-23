// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MetadataAuthor {
  /// The email address of the author contact.
  final pulumi.Input<String>? email;
  /// The link for author/vendor page.
  final pulumi.Input<String>? link;
  /// The name of the author, company or person.
  final pulumi.Input<String>? name;

  /// Creates a new [MetadataAuthor].
  /// [email] The email address of the author contact.
  /// [link] The link for author/vendor page.
  /// [name] The name of the author, company or person.
  const MetadataAuthor({
    this.email,
    this.link,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'email': ?email,
      'link': ?link,
      'name': ?name,
    };
  }

  factory MetadataAuthor.fromMap(Map<String, dynamic> map) {
    return MetadataAuthor(
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      link: (() { final guardedValue = map['link']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
