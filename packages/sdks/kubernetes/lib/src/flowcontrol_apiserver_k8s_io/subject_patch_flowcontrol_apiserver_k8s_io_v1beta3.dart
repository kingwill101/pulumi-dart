// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_subject_patch_flowcontrol_apiserver_k8s_io_v1beta3.dart';
import 'service_account_subject_patch_flowcontrol_apiserver_k8s_io_v1beta3.dart';
import 'user_subject_patch_flowcontrol_apiserver_k8s_io_v1beta3.dart';

/// Subject matches the originator of a request, as identified by the request authentication system. There are three ways of matching an originator; by user, group, or service account.
class SubjectPatchFlowcontrolApiserverK8sIoV1beta3 {
  /// `group` matches based on user group name.
  final pulumi.Input<GroupSubjectPatchFlowcontrolApiserverK8sIoV1beta3>? group;
  /// `kind` indicates which one of the other fields is non-empty. Required
  final pulumi.Input<String>? kind;
  /// `serviceAccount` matches ServiceAccounts.
  final pulumi.Input<ServiceAccountSubjectPatchFlowcontrolApiserverK8sIoV1beta3>? serviceAccount;
  /// `user` matches based on username.
  final pulumi.Input<UserSubjectPatchFlowcontrolApiserverK8sIoV1beta3>? user;

  /// Creates a new [SubjectPatchFlowcontrolApiserverK8sIoV1beta3].
  /// [group] `group` matches based on user group name.
  /// [kind] `kind` indicates which one of the other fields is non-empty. Required
  /// [serviceAccount] `serviceAccount` matches ServiceAccounts.
  /// [user] `user` matches based on username.
  const SubjectPatchFlowcontrolApiserverK8sIoV1beta3({
    this.group,
    this.kind,
    this.serviceAccount,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': ?pulumi.Input.mapOptionalInputValue<GroupSubjectPatchFlowcontrolApiserverK8sIoV1beta3, Map<String, dynamic>>(group, (value) => value.toMap()),
      'kind': ?kind,
      'serviceAccount': ?pulumi.Input.mapOptionalInputValue<ServiceAccountSubjectPatchFlowcontrolApiserverK8sIoV1beta3, Map<String, dynamic>>(serviceAccount, (value) => value.toMap()),
      'user': ?pulumi.Input.mapOptionalInputValue<UserSubjectPatchFlowcontrolApiserverK8sIoV1beta3, Map<String, dynamic>>(user, (value) => value.toMap()),
    };
  }

  factory SubjectPatchFlowcontrolApiserverK8sIoV1beta3.fromMap(Map<String, dynamic> map) {
    return SubjectPatchFlowcontrolApiserverK8sIoV1beta3(
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupSubjectPatchFlowcontrolApiserverK8sIoV1beta3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceAccountSubjectPatchFlowcontrolApiserverK8sIoV1beta3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserSubjectPatchFlowcontrolApiserverK8sIoV1beta3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

