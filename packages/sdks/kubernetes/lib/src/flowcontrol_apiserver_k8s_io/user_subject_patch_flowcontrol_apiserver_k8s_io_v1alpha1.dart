// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// UserSubject holds detailed information for user-kind subject.
class UserSubjectPatchFlowcontrolApiserverK8sIoV1alpha1 {
  /// `name` is the username that matches, or "*" to match all usernames. Required.
  final pulumi.Input<String>? name;

  /// Creates a new [UserSubjectPatchFlowcontrolApiserverK8sIoV1alpha1].
  /// [name] `name` is the username that matches, or "*" to match all usernames. Required.
  UserSubjectPatchFlowcontrolApiserverK8sIoV1alpha1({this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name};
  }

  factory UserSubjectPatchFlowcontrolApiserverK8sIoV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return UserSubjectPatchFlowcontrolApiserverK8sIoV1alpha1(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
