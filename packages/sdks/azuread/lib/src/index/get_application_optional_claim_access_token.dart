// ignore_for_file: unused_element, unnecessary_cast


class GetApplicationOptionalClaimAccessToken {
  /// List of Additional Properties of the claim. If a property exists in this list, it modifies the behaviour of the optional claim.
  final List<String>? additionalProperties;
  /// Whether the claim specified by the client is necessary to ensure a smooth authorization experience.
  final bool? essential;
  /// The name of the optional claim.
  final String name;
  /// The source of the claim. If `source` is absent, the claim is a predefined optional claim. If `source` is `user`, the value of `name` is the extension property from the user object.
  final String? source;

  /// Creates a new [GetApplicationOptionalClaimAccessToken].
  /// [additionalProperties] List of Additional Properties of the claim. If a property exists in this list, it modifies the behaviour of the optional claim.
  /// [essential] Whether the claim specified by the client is necessary to ensure a smooth authorization experience.
  /// [name] The name of the optional claim.
  /// [source] The source of the claim. If `source` is absent, the claim is a predefined optional claim. If `source` is `user`, the value of `name` is the extension property from the user object.
  GetApplicationOptionalClaimAccessToken({
    this.additionalProperties,
    this.essential,
    required this.name,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'essential': ?essential,
      'name': name,
      'source': ?source,
    };
  }

  factory GetApplicationOptionalClaimAccessToken.fromMap(Map<String, dynamic> map) {
    return GetApplicationOptionalClaimAccessToken(
      additionalProperties: map['additionalProperties'] == null ? null : (map['additionalProperties'] as List).cast<String>(),
      essential: map['essential'] == null ? null : map['essential'] as bool,
      name: map['name'] as String,
      source: map['source'] == null ? null : map['source'] as String,
    );
  }
}

