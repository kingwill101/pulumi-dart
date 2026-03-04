// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_subject_patch.dart';
import 'service_account_subject_patch.dart';
import 'user_subject_patch.dart';

/// Subject matches the originator of a request, as identified by the request authentication system. There are three ways of matching an originator; by user, group, or service account.
class SubjectPatch {
  /// `group` matches based on user group name.
  final pulumi.Input<GroupSubjectPatch>? group;

  /// `kind` indicates which one of the other fields is non-empty. Required
  final pulumi.Input<String>? kind;

  /// `serviceAccount` matches ServiceAccounts.
  final pulumi.Input<ServiceAccountSubjectPatch>? serviceAccount;

  /// `user` matches based on username.
  final pulumi.Input<UserSubjectPatch>? user;

  /// Creates a new [SubjectPatch].
  /// [group] `group` matches based on user group name.
  /// [kind] `kind` indicates which one of the other fields is non-empty. Required
  /// [serviceAccount] `serviceAccount` matches ServiceAccounts.
  /// [user] `user` matches based on username.
  SubjectPatch({this.group, this.kind, this.serviceAccount, this.user});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group':
          ?pulumi.Input.mapOptionalInputValue<
            GroupSubjectPatch,
            Map<String, dynamic>
          >(group, (value) => value.toMap()),
      'kind': ?kind,
      'serviceAccount':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceAccountSubjectPatch,
            Map<String, dynamic>
          >(serviceAccount, (value) => value.toMap()),
      'user':
          ?pulumi.Input.mapOptionalInputValue<
            UserSubjectPatch,
            Map<String, dynamic>
          >(user, (value) => value.toMap()),
    };
  }

  factory SubjectPatch.fromMap(Map<String, dynamic> map) {
    return SubjectPatch(
      group: (() {
        final guardedValue = map['group'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          GroupSubjectPatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serviceAccount: (() {
        final guardedValue = map['serviceAccount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceAccountSubjectPatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      user: (() {
        final guardedValue = map['user'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          UserSubjectPatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
