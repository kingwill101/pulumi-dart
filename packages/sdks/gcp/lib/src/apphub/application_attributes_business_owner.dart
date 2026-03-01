// ignore_for_file: unused_element, unnecessary_cast


class ApplicationAttributesBusinessOwner {
  /// Optional. Contact's name.
  final String? displayName;
  /// Required. Email address of the contacts.
  final String email;

  /// Creates a new [ApplicationAttributesBusinessOwner].
  /// [displayName] Optional. Contact's name.
  /// [email] Required. Email address of the contacts.
  ApplicationAttributesBusinessOwner({
    this.displayName,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'email': email,
    };
  }

  factory ApplicationAttributesBusinessOwner.fromMap(Map<String, dynamic> map) {
    return ApplicationAttributesBusinessOwner(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      email: map['email'] as String,
    );
  }
}

