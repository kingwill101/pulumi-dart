// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_child_account_get_child_account_args_doc}
/// Arguments for getChildAccount.
/// {@endtemplate}
/// {@macro pulumi_index_get_child_account_get_child_account_args_doc}
class GetChildAccountArgs {
  /// The unique EUUID of this Child Account.
  final pulumi.Input<String> euuid;

  /// Creates a new [GetChildAccountArgs].
  /// [euuid] The unique EUUID of this Child Account.
  GetChildAccountArgs({required this.euuid});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'euuid': euuid};
  }

  factory GetChildAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetChildAccountArgs(
      euuid: pulumi.Input.fromValue(map['euuid'] as String),
    );
  }
}
