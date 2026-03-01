// ignore_for_file: unused_element, unnecessary_cast

import 'group_subject.dart';
import 'service_account_subject.dart';
import 'user_subject.dart';

/// Subject matches the originator of a request, as identified by the request authentication system. There are three ways of matching an originator; by user, group, or service account.
class Subject {
  /// `group` matches based on user group name.
  final GroupSubject? group;
  /// `kind` indicates which one of the other fields is non-empty. Required
  final String kind;
  /// `serviceAccount` matches ServiceAccounts.
  final ServiceAccountSubject? serviceAccount;
  /// `user` matches based on username.
  final UserSubject? user;

  /// Creates a new [Subject].
  /// [group] `group` matches based on user group name.
  /// [kind] `kind` indicates which one of the other fields is non-empty. Required
  /// [serviceAccount] `serviceAccount` matches ServiceAccounts.
  /// [user] `user` matches based on username.
  Subject({
    this.group,
    required this.kind,
    this.serviceAccount,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': ?group == null ? null : group!.toMap(),
      'kind': kind,
      'serviceAccount': ?serviceAccount == null ? null : serviceAccount!.toMap(),
      'user': ?user == null ? null : user!.toMap(),
    };
  }

  factory Subject.fromMap(Map<String, dynamic> map) {
    return Subject(
      group: map['group'] == null ? null : GroupSubject.fromMap((map['group'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      serviceAccount: map['serviceAccount'] == null ? null : ServiceAccountSubject.fromMap((map['serviceAccount'] as Map).cast<String, dynamic>()),
      user: map['user'] == null ? null : UserSubject.fromMap((map['user'] as Map).cast<String, dynamic>()),
    );
  }
}

