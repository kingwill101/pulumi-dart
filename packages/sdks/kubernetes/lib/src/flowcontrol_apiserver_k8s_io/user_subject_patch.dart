// ignore_for_file: unused_element, unnecessary_cast


/// UserSubject holds detailed information for user-kind subject.
class UserSubjectPatch {
  /// `name` is the username that matches, or "*" to match all usernames. Required.
  final String? name;

  /// Creates a new [UserSubjectPatch].
  /// [name] `name` is the username that matches, or "*" to match all usernames. Required.
  UserSubjectPatch({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory UserSubjectPatch.fromMap(Map<String, dynamic> map) {
    return UserSubjectPatch(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

