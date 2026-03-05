// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_subject_patch_flowcontrol_apiserver_k8s_io_v1alpha1.dart';
import 'service_account_subject_patch_flowcontrol_apiserver_k8s_io_v1alpha1.dart';
import 'user_subject_patch_flowcontrol_apiserver_k8s_io_v1alpha1.dart';

/// Subject matches the originator of a request, as identified by the request authentication system. There are three ways of matching an originator; by user, group, or service account.
class SubjectPatchFlowcontrolApiserverK8sIoV1alpha1 {
  final pulumi.Input<GroupSubjectPatchFlowcontrolApiserverK8sIoV1alpha1>? group;
  /// Required
  final pulumi.Input<String>? kind;
  final pulumi.Input<ServiceAccountSubjectPatchFlowcontrolApiserverK8sIoV1alpha1>? serviceAccount;
  final pulumi.Input<UserSubjectPatchFlowcontrolApiserverK8sIoV1alpha1>? user;

  /// Creates a new [SubjectPatchFlowcontrolApiserverK8sIoV1alpha1].
  /// [group] Optional.
  /// [kind] Required
  /// [serviceAccount] Optional.
  /// [user] Optional.
  SubjectPatchFlowcontrolApiserverK8sIoV1alpha1({
    this.group,
    this.kind,
    this.serviceAccount,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': ?pulumi.Input.mapOptionalInputValue<GroupSubjectPatchFlowcontrolApiserverK8sIoV1alpha1, Map<String, dynamic>>(group, (value) => value.toMap()),
      'kind': ?kind,
      'serviceAccount': ?pulumi.Input.mapOptionalInputValue<ServiceAccountSubjectPatchFlowcontrolApiserverK8sIoV1alpha1, Map<String, dynamic>>(serviceAccount, (value) => value.toMap()),
      'user': ?pulumi.Input.mapOptionalInputValue<UserSubjectPatchFlowcontrolApiserverK8sIoV1alpha1, Map<String, dynamic>>(user, (value) => value.toMap()),
    };
  }

  factory SubjectPatchFlowcontrolApiserverK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return SubjectPatchFlowcontrolApiserverK8sIoV1alpha1(
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupSubjectPatchFlowcontrolApiserverK8sIoV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceAccountSubjectPatchFlowcontrolApiserverK8sIoV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserSubjectPatchFlowcontrolApiserverK8sIoV1alpha1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

