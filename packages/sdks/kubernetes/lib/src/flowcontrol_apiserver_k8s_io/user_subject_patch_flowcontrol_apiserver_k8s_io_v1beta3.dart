// ignore_for_file: unused_element, unnecessary_cast


/// UserSubject holds detailed information for user-kind subject.
class UserSubjectPatchFlowcontrolApiserverK8sIoV1beta3 {
  /// `name` is the username that matches, or "*" to match all usernames. Required.
  final String? name;

  /// Creates a new [UserSubjectPatchFlowcontrolApiserverK8sIoV1beta3].
  /// [name] `name` is the username that matches, or "*" to match all usernames. Required.
  UserSubjectPatchFlowcontrolApiserverK8sIoV1beta3({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory UserSubjectPatchFlowcontrolApiserverK8sIoV1beta3.fromMap(Map<String, dynamic> map) {
    return UserSubjectPatchFlowcontrolApiserverK8sIoV1beta3(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

