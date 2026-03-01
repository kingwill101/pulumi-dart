// ignore_for_file: unused_element, unnecessary_cast


class WorkloadAttributesBusinessOwner {
  /// Contact's name.
  final String? displayName;
  /// Email address of the contacts.
  final String email;

  /// Creates a new [WorkloadAttributesBusinessOwner].
  /// [displayName] Contact's name.
  /// [email] Email address of the contacts.
  WorkloadAttributesBusinessOwner({
    this.displayName,
    required this.email,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'email': email,
    };
  }

  factory WorkloadAttributesBusinessOwner.fromMap(Map<String, dynamic> map) {
    return WorkloadAttributesBusinessOwner(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      email: map['email'] as String,
    );
  }
}

