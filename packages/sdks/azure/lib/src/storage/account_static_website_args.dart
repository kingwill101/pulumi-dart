// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_account_static_website_account_static_website_args_doc}
/// The set of arguments for AccountStaticWebsite.
/// {@endtemplate}
/// {@macro pulumi_storage_account_static_website_account_static_website_args_doc}
class AccountStaticWebsiteArgs {
  /// The absolute path to a custom webpage that should be used when a request is made which does not correspond to an existing file.
  final pulumi.Input<String>? error404Document;
  /// The webpage that Azure Storage serves for requests to the root of a website or any subfolder. For example, index.html.
  final pulumi.Input<String>? indexDocument;
  /// The ID of the Storage Account to set Static Website on. Changing this forces a new resource to be created.
  final pulumi.Input<String> storageAccountId;

  /// Creates a new [AccountStaticWebsiteArgs].
  /// [error404Document] The absolute path to a custom webpage that should be used when a request is made which does not correspond to an existing file.
  /// [indexDocument] The webpage that Azure Storage serves for requests to the root of a website or any subfolder. For example, index.html.
  /// [storageAccountId] The ID of the Storage Account to set Static Website on. Changing this forces a new resource to be created.
  const AccountStaticWebsiteArgs({
    this.error404Document,
    this.indexDocument,
    required this.storageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error404Document': ?error404Document,
      'indexDocument': ?indexDocument,
      'storageAccountId': storageAccountId,
    };
  }

  factory AccountStaticWebsiteArgs.fromMap(Map<String, dynamic> map) {
    return AccountStaticWebsiteArgs(
      error404Document: (() { final guardedValue = map['error404Document']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      indexDocument: (() { final guardedValue = map['indexDocument']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountId: pulumi.Input.fromValue(map['storageAccountId'] as String),
    );
  }
}

