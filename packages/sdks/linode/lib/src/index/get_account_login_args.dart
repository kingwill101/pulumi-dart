// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_account_login_get_account_login_args_doc}
/// Arguments for getAccountLogin.
/// {@endtemplate}
/// {@macro pulumi_index_get_account_login_get_account_login_args_doc}
class GetAccountLoginArgs {
  /// The unique ID of this login object.
  final pulumi.Input<int> id;

  /// Creates a new [GetAccountLoginArgs].
  /// [id] The unique ID of this login object.
  GetAccountLoginArgs({required this.id});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id};
  }

  factory GetAccountLoginArgs.fromMap(Map<String, dynamic> map) {
    return GetAccountLoginArgs(id: pulumi.Input.fromValue(map['id'] as int));
  }
}
