// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_get_storage_account_args_doc}
/// Arguments for getStorageAccount.
/// {@endtemplate}
/// {@macro pulumi_storage_get_storage_account_args_doc}
class GetStorageAccountArgs {
  /// The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  final pulumi.Input<String> accountName;
  /// May be used to expand the properties within account's properties. By default, data is not included when fetching properties. Currently we only support geoReplicationStats and blobRestoreStatus.
  final pulumi.Input<String>? expand;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetStorageAccountArgs].
  /// [accountName] The name of the storage account within the specified resource group. Storage account names must be between 3 and 24 characters in length and use numbers and lower-case letters only.
  /// [expand] May be used to expand the properties within account's properties. By default, data is not included when fetching properties. Currently we only support geoReplicationStats and blobRestoreStatus.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  GetStorageAccountArgs({
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? expand,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      expand = pulumi.Input.asOptionalInput<String>(expand),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'expand': ?expand,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetStorageAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetStorageAccountArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      expand: map['expand'] == null ? null : pulumi.Output.create<String>(map['expand'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

