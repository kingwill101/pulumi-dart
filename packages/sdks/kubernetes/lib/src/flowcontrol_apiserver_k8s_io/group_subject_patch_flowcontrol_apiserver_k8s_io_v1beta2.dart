// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// GroupSubject holds detailed information for group-kind subject.
class GroupSubjectPatchFlowcontrolApiserverK8sIoV1beta2 {
  /// name is the user group that matches, or "*" to match all user groups. See https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for some well-known group names. Required.
  final pulumi.Input<String?>? name;

  /// Creates a new [GroupSubjectPatchFlowcontrolApiserverK8sIoV1beta2].
  /// [name] name is the user group that matches, or "*" to match all user groups. See https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for some well-known group names. Required.
  const GroupSubjectPatchFlowcontrolApiserverK8sIoV1beta2({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory GroupSubjectPatchFlowcontrolApiserverK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return GroupSubjectPatchFlowcontrolApiserverK8sIoV1beta2(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
