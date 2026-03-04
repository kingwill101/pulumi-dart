// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_subject_flowcontrol_apiserver_k8s_io_v1beta2.dart';
import 'service_account_subject_flowcontrol_apiserver_k8s_io_v1beta2.dart';
import 'user_subject_flowcontrol_apiserver_k8s_io_v1beta2.dart';

/// Subject matches the originator of a request, as identified by the request authentication system. There are three ways of matching an originator; by user, group, or service account.
class SubjectFlowcontrolApiserverK8sIoV1beta2 {
  /// `group` matches based on user group name.
  final pulumi.Input<GroupSubjectFlowcontrolApiserverK8sIoV1beta2>? group;

  /// `kind` indicates which one of the other fields is non-empty. Required
  final pulumi.Input<String> kind;

  /// `serviceAccount` matches ServiceAccounts.
  final pulumi.Input<ServiceAccountSubjectFlowcontrolApiserverK8sIoV1beta2>?
  serviceAccount;

  /// `user` matches based on username.
  final pulumi.Input<UserSubjectFlowcontrolApiserverK8sIoV1beta2>? user;

  /// Creates a new [SubjectFlowcontrolApiserverK8sIoV1beta2].
  /// [group] `group` matches based on user group name.
  /// [kind] `kind` indicates which one of the other fields is non-empty. Required
  /// [serviceAccount] `serviceAccount` matches ServiceAccounts.
  /// [user] `user` matches based on username.
  SubjectFlowcontrolApiserverK8sIoV1beta2({
    this.group,
    required this.kind,
    this.serviceAccount,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group':
          ?pulumi.Input.mapOptionalInputValue<
            GroupSubjectFlowcontrolApiserverK8sIoV1beta2,
            Map<String, dynamic>
          >(group, (value) => value.toMap()),
      'kind': kind,
      'serviceAccount':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceAccountSubjectFlowcontrolApiserverK8sIoV1beta2,
            Map<String, dynamic>
          >(serviceAccount, (value) => value.toMap()),
      'user':
          ?pulumi.Input.mapOptionalInputValue<
            UserSubjectFlowcontrolApiserverK8sIoV1beta2,
            Map<String, dynamic>
          >(user, (value) => value.toMap()),
    };
  }

  factory SubjectFlowcontrolApiserverK8sIoV1beta2.fromMap(
    Map<String, dynamic> map,
  ) {
    return SubjectFlowcontrolApiserverK8sIoV1beta2(
      group: (() {
        final guardedValue = map['group'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GroupSubjectFlowcontrolApiserverK8sIoV1beta2.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      serviceAccount: (() {
        final guardedValue = map['serviceAccount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceAccountSubjectFlowcontrolApiserverK8sIoV1beta2.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      user: (() {
        final guardedValue = map['user'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          UserSubjectFlowcontrolApiserverK8sIoV1beta2.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
