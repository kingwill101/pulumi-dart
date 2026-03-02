// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_users_get_users_args_doc}
/// Arguments for getUsers.
/// {@endtemplate}
/// {@macro pulumi_index_get_users_get_users_args_doc}
class GetUsersArgs {
  /// The employee identifiers assigned to the users by the organisation.
  final pulumi.Input<List<String>>? employeeIds;
  /// Ignore missing users and return users that were found. The data source will still fail if no users are found. Cannot be specified with `return_all`. Defaults to `false`.
  final pulumi.Input<bool>? ignoreMissing;
  /// The email aliases of the users.
  ///
  /// > **Note:** `mail_nicknames` are not a unique identifier for users. If multiple users share the same `mail_nickname`, all matching users will be returned.
  final pulumi.Input<List<String>>? mailNicknames;
  /// The SMTP email addresses of the users.
  final pulumi.Input<List<String>>? mails;
  /// The object IDs of the users.
  final pulumi.Input<List<String>>? objectIds;
  /// When `true`, the data source will return all users. Cannot be used with `ignore_missing`. Defaults to `false`.
  final pulumi.Input<bool>? returnAll;
  /// The user principal names (UPNs) of the users.
  ///
  /// > Either `return_all`, or one of `user_principal_names`, `object_ids`, `mail_nicknames`, `mails`, or `employee_ids` must be specified. These _may_ be specified as an empty list, in which case no results will be returned.
  final pulumi.Input<List<String>>? userPrincipalNames;

  /// Creates a new [GetUsersArgs].
  /// [employeeIds] The employee identifiers assigned to the users by the organisation.
  /// [ignoreMissing] Ignore missing users and return users that were found. The data source will still fail if no users are found. Cannot be specified with `return_all`. Defaults to `false`.
  /// [mailNicknames] The email aliases of the users.
  /// [mails] The SMTP email addresses of the users.
  /// [objectIds] The object IDs of the users.
  /// [returnAll] When `true`, the data source will return all users. Cannot be used with `ignore_missing`. Defaults to `false`.
  /// [userPrincipalNames] The user principal names (UPNs) of the users.
  GetUsersArgs({
    this.employeeIds,
    this.ignoreMissing,
    this.mailNicknames,
    this.mails,
    this.objectIds,
    this.returnAll,
    this.userPrincipalNames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'employeeIds': ?employeeIds,
      'ignoreMissing': ?ignoreMissing,
      'mailNicknames': ?mailNicknames,
      'mails': ?mails,
      'objectIds': ?objectIds,
      'returnAll': ?returnAll,
      'userPrincipalNames': ?userPrincipalNames,
    };
  }

  factory GetUsersArgs.fromMap(Map<String, dynamic> map) {
    return GetUsersArgs(
      employeeIds: map['employeeIds'] == null ? null : ((map['employeeIds']! as List).cast<String>()).input(),
      ignoreMissing: map['ignoreMissing'] == null ? null : (map['ignoreMissing']! as bool).input(),
      mailNicknames: map['mailNicknames'] == null ? null : ((map['mailNicknames']! as List).cast<String>()).input(),
      mails: map['mails'] == null ? null : ((map['mails']! as List).cast<String>()).input(),
      objectIds: map['objectIds'] == null ? null : ((map['objectIds']! as List).cast<String>()).input(),
      returnAll: map['returnAll'] == null ? null : (map['returnAll']! as bool).input(),
      userPrincipalNames: map['userPrincipalNames'] == null ? null : ((map['userPrincipalNames']! as List).cast<String>()).input(),
    );
  }
}

