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
    required pulumi.Output<String> accountName,
    pulumi.Output<List<String>>? features,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      features = pulumi.Input.asOptionalInput<List<String>>(features),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'features': ?features,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory ListFeatureAccountArgs.fromMap(Map<String, dynamic> map) {
    return ListFeatureAccountArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      features: map['features'] == null ? null : pulumi.Output.create<List<String>>((map['features'] as List).cast<String>()),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

