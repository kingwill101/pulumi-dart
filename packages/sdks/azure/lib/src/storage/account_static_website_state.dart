// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccountStaticWebsite resources.
class AccountStaticWebsiteState {
  /// The absolute path to a custom webpage that should be used when a request is made which does not correspond to an existing file.
  final pulumi.Input<String>? error404Document;
  /// The webpage that Azure Storage serves for requests to the root of a website or any subfolder. For example, index.html.
  final pulumi.Input<String>? indexDocument;
  /// The ID of the Storage Account to set Static Website on. Changing this forces a new resource to be created.
  final pulumi.Input<String>? storageAccountId;

  /// Creates a new [AccountStaticWebsiteState].
  /// [error404Document] The absolute path to a custom webpage that should be used when a request is made which does not correspond to an existing file.
  /// [indexDocument] The webpage that Azure Storage serves for requests to the root of a website or any subfolder. For example, index.html.
  /// [storageAccountId] The ID of the Storage Account to set Static Website on. Changing this forces a new resource to be created.
  AccountStaticWebsiteState({
    pulumi.Output<String>? error404Document,
    pulumi.Output<String>? indexDocument,
    pulumi.Output<String>? storageAccountId,
  }) :
      error404Document = pulumi.Input.asOptionalInput<String>(error404Document),
      indexDocument = pulumi.Input.asOptionalInput<String>(indexDocument),
      storageAccountId = pulumi.Input.asOptionalInput<String>(storageAccountId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error404Document': ?error404Document,
      'indexDocument': ?indexDocument,
      'storageAccountId': ?storageAccountId,
    };
  }

  factory AccountStaticWebsiteState.fromMap(Map<String, dynamic> map) {
    return AccountStaticWebsiteState(
      error404Document: map['error404Document'] == null ? null : pulumi.Output.create<String>(map['error404Document'] as String),
      indexDocument: map['indexDocument'] == null ? null : pulumi.Output.create<String>(map['indexDocument'] as String),
      storageAccountId: map['storageAccountId'] == null ? null : pulumi.Output.create<String>(map['storageAccountId'] as String),
    );
  }
}

