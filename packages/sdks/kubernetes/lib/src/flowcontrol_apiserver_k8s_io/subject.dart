// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_subject.dart';
import 'service_account_subject.dart';
import 'user_subject.dart';

/// Subject matches the originator of a request, as identified by the request authentication system. There are three ways of matching an originator; by user, group, or service account.
class Subject {
  /// `group` matches based on user group name.
  final pulumi.Input<GroupSubject>? group;
  /// `kind` indicates which one of the other fields is non-empty. Required
  final pulumi.Input<String> kind;
  /// `serviceAccount` matches ServiceAccounts.
  final pulumi.Input<ServiceAccountSubject>? serviceAccount;
  /// `user` matches based on username.
  final pulumi.Input<UserSubject>? user;

  /// Creates a new [Subject].
  /// [group] `group` matches based on user group name.
  /// [kind] `kind` indicates which one of the other fields is non-empty. Required
  /// [serviceAccount] `serviceAccount` matches ServiceAccounts.
  /// [user] `user` matches based on username.
  const Subject({
    this.group,
    required this.kind,
    this.serviceAccount,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': ?pulumi.Input.mapOptionalInputValue<GroupSubject, Map<String, dynamic>>(group, (value) => value.toMap()),
      'kind': kind,
      'serviceAccount': ?pulumi.Input.mapOptionalInputValue<ServiceAccountSubject, Map<String, dynamic>>(serviceAccount, (value) => value.toMap()),
      'user': ?pulumi.Input.mapOptionalInputValue<UserSubject, Map<String, dynamic>>(user, (value) => value.toMap()),
    };
  }

  factory Subject.fromMap(Map<String, dynamic> map) {
    return Subject(
      group: (() { final guardedValue = map['group']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GroupSubject.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceAccountSubject.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserSubject.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
