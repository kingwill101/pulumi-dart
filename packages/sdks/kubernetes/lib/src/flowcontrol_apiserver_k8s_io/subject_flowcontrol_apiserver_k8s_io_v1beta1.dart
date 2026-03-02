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
  SubjectFlowcontrolApiserverK8sIoV1beta1({
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
      group: map['group'] == null ? null : (GroupSubjectFlowcontrolApiserverK8sIoV1beta1.fromMap((map['group']! as Map).cast<String, dynamic>())).input(),
      kind: (map['kind'] as String).input(),
      serviceAccount: map['serviceAccount'] == null ? null : (ServiceAccountSubjectFlowcontrolApiserverK8sIoV1beta1.fromMap((map['serviceAccount']! as Map).cast<String, dynamic>())).input(),
      user: map['user'] == null ? null : (UserSubjectFlowcontrolApiserverK8sIoV1beta1.fromMap((map['user']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

