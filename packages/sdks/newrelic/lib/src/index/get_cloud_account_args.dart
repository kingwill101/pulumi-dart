// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_cloud_account_get_cloud_account_args_doc}
/// Arguments for getCloudAccount.
/// {@endtemplate}
/// {@macro pulumi_index_get_cloud_account_get_cloud_account_args_doc}
class GetCloudAccountArgs {
  /// The account ID in New Relic.
  final pulumi.Input<String>? accountId;
  /// The cloud provider of the account (aws, gcp, azure, etc)
  final pulumi.Input<String> cloudProvider;
  /// The cloud account name in New Relic.
  final pulumi.Input<String> name;

  /// Creates a new [GetCloudAccountArgs].
  /// [accountId] The account ID in New Relic.
  /// [cloudProvider] The cloud provider of the account (aws, gcp, azure, etc)
  /// [name] The cloud account name in New Relic.
  GetCloudAccountArgs({
    pulumi.Output<String>? accountId,
    required pulumi.Output<String> cloudProvider,
    required pulumi.Output<String> name,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      cloudProvider = pulumi.Input.asInput<String>(cloudProvider),
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'cloudProvider': cloudProvider,
      'name': name,
    };
  }

  factory GetCloudAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetCloudAccountArgs(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      cloudProvider: pulumi.Output.create<String>(map['cloudProvider'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

