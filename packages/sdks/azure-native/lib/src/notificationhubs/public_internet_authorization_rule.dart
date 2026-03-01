// ignore_for_file: unused_element, unnecessary_cast


/// A default (public Internet) network authorization rule, which contains rights if no other network rule matches.
class PublicInternetAuthorizationRule {
  /// List of access rights.
  final List<String> rights;

  /// Creates a new [PublicInternetAuthorizationRule].
  /// [rights] List of access rights.
  PublicInternetAuthorizationRule({
    required this.rights,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rights': rights,
    };
  }

  factory PublicInternetAuthorizationRule.fromMap(Map<String, dynamic> map) {
    return PublicInternetAuthorizationRule(
      rights: (map['rights'] as List).cast<String>(),
    );
  }
}

