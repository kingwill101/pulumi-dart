// ignore_for_file: unused_element, unnecessary_cast


class ApplicationAttributesDeveloperOwner {
  /// Optional. Contact's name.
  final String? displayName;
  /// Required. Email address of the contacts.
  final String email;

  /// Creates a new [ApplicationAttributesDeveloperOwner].
  /// [displayName] Optional. Contact's name.
  /// [email] Required. Email address of the contacts.
  ApplicationAttributesDeveloperOwner({
    this.displayName,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'email': email,
    };
  }

  factory ApplicationAttributesDeveloperOwner.fromMap(Map<String, dynamic> map) {
    return ApplicationAttributesDeveloperOwner(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      email: map['email'] as String,
    );
  }
}

