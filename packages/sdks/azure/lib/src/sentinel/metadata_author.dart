// ignore_for_file: unused_element, unnecessary_cast


class MetadataAuthor {
  /// The email address of the author contact.
  final String? email;
  /// The link for author/vendor page.
  final String? link;
  /// The name of the author, company or person.
  final String? name;

  /// Creates a new [MetadataAuthor].
  /// [email] The email address of the author contact.
  /// [link] The link for author/vendor page.
  /// [name] The name of the author, company or person.
  MetadataAuthor({
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
      email: map['email'] == null ? null : map['email'] as String,
      link: map['link'] == null ? null : map['link'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

