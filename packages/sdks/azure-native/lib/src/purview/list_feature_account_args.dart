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
  final pulumi.Input<List<String>>? features;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [ListFeatureAccountArgs].
  /// [accountName] The name of the account.
  /// [features] Set of features
  /// [resourceGroupName] The resource group name.
  ListFeatureAccountArgs({
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
      accountName: (map['accountName'] as String).input(),
      features: map['features'] == null ? null : ((map['features'] as List).cast<String>()).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

