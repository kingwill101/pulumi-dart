// ignore_for_file: unused_element, unnecessary_cast


/// GroupSubject holds detailed information for group-kind subject.
class GroupSubject {
  /// name is the user group that matches, or "*" to match all user groups. See https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for some well-known group names. Required.
  final String name;

  /// Creates a new [GroupSubject].
  /// [name] name is the user group that matches, or "*" to match all user groups. See https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for some well-known group names. Required.
  GroupSubject({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GroupSubject.fromMap(Map<String, dynamic> map) {
    return GroupSubject(
      name: map['name'] as String,
    );
  }
}

