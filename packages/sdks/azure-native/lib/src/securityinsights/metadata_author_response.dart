// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Publisher or creator of the content item.
class MetadataAuthorResponse {
  /// Email of author contact
  final pulumi.Input<String>? email;

  /// Link for author/vendor page
  final pulumi.Input<String>? link;

  /// Name of the author. Company or person.
  final pulumi.Input<String>? name;

  /// Creates a new [MetadataAuthorResponse].
  /// [email] Email of author contact
  /// [link] Link for author/vendor page
  /// [name] Name of the author. Company or person.
  MetadataAuthorResponse({this.email, this.link, this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'email': ?email, 'link': ?link, 'name': ?name};
  }

  factory MetadataAuthorResponse.fromMap(Map<String, dynamic> map) {
    return MetadataAuthorResponse(
      email: (() {
        final guardedValue = map['email'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      link: (() {
        final guardedValue = map['link'];
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
