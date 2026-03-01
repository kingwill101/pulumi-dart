// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_insights_account_args_doc}
/// Arguments for getInsightsAccount.
/// {@endtemplate}
/// {@macro pulumi_index_get_insights_account_args_doc}
class GetInsightsAccountArgs {
  final pulumi.Input<String> accountName;
  final pulumi.Input<String> organizationName;

  /// Creates a new [GetInsightsAccountArgs].
  /// [accountName] Required.
  /// [organizationName] Required.
  GetInsightsAccountArgs({
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> organizationName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      organizationName = pulumi.Input.asInput<String>(organizationName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'organizationName': organizationName,
    };
  }

  factory GetInsightsAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetInsightsAccountArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      organizationName: pulumi.Output.create<String>(map['organizationName'] as String),
    );
  }
}

