// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_insights_accounts_args_doc}
/// Arguments for getInsightsAccounts.
/// {@endtemplate}
/// {@macro pulumi_index_get_insights_accounts_args_doc}
class GetInsightsAccountsArgs {
  final pulumi.Input<String> organizationName;

  /// Creates a new [GetInsightsAccountsArgs].
  /// [organizationName] Required.
  GetInsightsAccountsArgs({
    required pulumi.Output<String> organizationName,
  }) :
      organizationName = pulumi.Input.asInput<String>(organizationName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'organizationName': organizationName,
    };
  }

  factory GetInsightsAccountsArgs.fromMap(Map<String, dynamic> map) {
    return GetInsightsAccountsArgs(
      organizationName: pulumi.Output.create<String>(map['organizationName'] as String),
    );
  }
}

