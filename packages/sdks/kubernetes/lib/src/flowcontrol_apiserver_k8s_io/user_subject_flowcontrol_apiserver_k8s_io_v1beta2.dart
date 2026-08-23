// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// UserSubject holds detailed information for user-kind subject.
class UserSubjectFlowcontrolApiserverK8sIoV1beta2 {
  /// `name` is the username that matches, or "*" to match all usernames. Required.
  final pulumi.Input<String> name;

  /// Creates a new [UserSubjectFlowcontrolApiserverK8sIoV1beta2].
  /// [name] `name` is the username that matches, or "*" to match all usernames. Required.
  const UserSubjectFlowcontrolApiserverK8sIoV1beta2({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory UserSubjectFlowcontrolApiserverK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return UserSubjectFlowcontrolApiserverK8sIoV1beta2(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
