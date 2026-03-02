// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_storage_account_static_website_args_doc}
/// The set of arguments for StorageAccountStaticWebsite.
/// {@endtemplate}
/// {@macro pulumi_storage_storage_account_static_website_args_doc}
class StorageAccountStaticWebsiteArgs {
  /// The name of the storage account within the specified resource group.
  final pulumi.Input<String> accountName;
  /// The absolute path to a custom webpage that should be used when a request is made which does not correspond to an existing file.
  final pulumi.Input<String>? error404Document;
  /// The webpage that Azure Storage serves for requests to the root of a website or any sub-folder. For example, 'index.html'. The value is case-sensitive.
  final pulumi.Input<String>? indexDocument;
  /// The name of the resource group within the user's subscription. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [StorageAccountStaticWebsiteArgs].
  /// [accountName] The name of the storage account within the specified resource group.
  /// [error404Document] The absolute path to a custom webpage that should be used when a request is made which does not correspond to an existing file.
  /// [indexDocument] The webpage that Azure Storage serves for requests to the root of a website or any sub-folder. For example, 'index.html'. The value is case-sensitive.
  /// [resourceGroupName] The name of the resource group within the user's subscription. The name is case insensitive.
  StorageAccountStaticWebsiteArgs({
    required this.accountName,
    this.error404Document,
    this.indexDocument,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'error404Document': ?error404Document,
      'indexDocument': ?indexDocument,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory StorageAccountStaticWebsiteArgs.fromMap(Map<String, dynamic> map) {
    return StorageAccountStaticWebsiteArgs(
      accountName: (map['accountName'] as String).input(),
      error404Document: map['error404Document'] == null ? null : (map['error404Document'] as String).input(),
      indexDocument: map['indexDocument'] == null ? null : (map['indexDocument'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

