// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_purview_list_feature_account_args_doc}
/// Arguments for listFeatureAccount.
/// {@endtemplate}
/// {@macro pulumi_purview_list_feature_account_args_doc}
class ListFeatureAccountArgs {
  /// The name of the account.
  final pulumi.Input<String> accountName;
  /// Set of features
  final pulumi.Input<List<String>?>? features;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListFeatureAccountArgs].
  /// [accountName] The name of the account.
  /// [features] Set of features
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const ListFeatureAccountArgs({
    required this.accountName,
    this.features,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'features': ?features,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListFeatureAccountArgs.fromMap(Map<String, dynamic> map) {
    return ListFeatureAccountArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
