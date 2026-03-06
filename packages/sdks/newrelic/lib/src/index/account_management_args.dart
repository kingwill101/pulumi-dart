// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_account_management_account_management_args_doc}
/// The set of arguments for AccountManagement.
/// {@endtemplate}
/// {@macro pulumi_index_account_management_account_management_args_doc}
class AccountManagementArgs {
  /// The name of the Account.
  final pulumi.Input<String>? name;
  /// The region code of the account.  One of: `us01`, `eu01`.
  final pulumi.Input<String> region;

  /// Creates a new [AccountManagementArgs].
  /// [name] The name of the Account.
  /// [region] The region code of the account.  One of: `us01`, `eu01`.
  const AccountManagementArgs({
    this.name,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': region,
    };
  }

  factory AccountManagementArgs.fromMap(Map<String, dynamic> map) {
    return AccountManagementArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}

