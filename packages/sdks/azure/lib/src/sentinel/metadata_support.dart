// ignore_for_file: unused_element, unnecessary_cast


class MetadataSupport {
  /// The email address of the support contact.
  final String? email;
  /// The link for support help.
  final String? link;
  /// The name of the support contact.
  final String? name;
  /// The type of support for content item. Possible values are `Microsoft`, `Partner` and `Community`.
  final String tier;

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
      email: map['email'] == null ? null : map['email'] as String,
      link: map['link'] == null ? null : map['link'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      tier: map['tier'] as String,
    );
  }
}

