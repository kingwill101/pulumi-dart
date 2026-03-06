// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_subject_flowcontrol_apiserver_k8s_io_v1beta1.dart';
import 'service_account_subject_flowcontrol_apiserver_k8s_io_v1beta1.dart';
import 'user_subject_flowcontrol_apiserver_k8s_io_v1beta1.dart';

/// Subject matches the originator of a request, as identified by the request authentication system. There are three ways of matching an originator; by user, group, or service account.
class SubjectFlowcontrolApiserverK8sIoV1beta1 {
  final pulumi.Input<GroupSubjectFlowcontrolApiserverK8sIoV1beta1>? group;
  /// Required
  final pulumi.Input<String> kind;
  final pulumi.Input<ServiceAccountSubjectFlowcontrolApiserverK8sIoV1beta1>? serviceAccount;
  final pulumi.Input<UserSubjectFlowcontrolApiserverK8sIoV1beta1>? user;

  /// Creates a new [SubjectFlowcontrolApiserverK8sIoV1beta1].
  /// [group] Optional.
  /// [kind] Required
  /// [serviceAccount] Optional.
  /// [user] Optional.
  const SubjectFlowcontrolApiserverK8sIoV1beta1({
    this.group,
    required this.kind,
    this.serviceAccount,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': ?pulumi.Input.mapOptionalInputValue<GroupSubjectFlowcontrolApiserverK8sIoV1beta1, Map<String, dynamic>>(group, (value) => value.toMap()),
      'kind': kind,
      'serviceAccount': ?pulumi.Input.mapOptionalInputValue<ServiceAccountSubjectFlowcontrolApiserverK8sIoV1beta1, Map<String, dynamic>>(serviceAccount, (value) => value.toMap()),
      'user': ?pulumi.Input.mapOptionalInputValue<UserSubjectFlowcontrolApiserverK8sIoV1beta1, Map<String, dynamic>>(user, (value) => value.toMap()),
    };
  }

  factory SubjectFlowcontrolApiserverK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return SubjectFlowcontrolApiserverK8sIoV1beta1(
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupSubjectFlowcontrolApiserverK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceAccountSubjectFlowcontrolApiserverK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserSubjectFlowcontrolApiserverK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

