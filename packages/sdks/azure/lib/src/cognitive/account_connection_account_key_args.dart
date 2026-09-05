// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognitive_account_connection_account_key_account_connection_account_key_args_doc}
/// The set of arguments for AccountConnectionAccountKey.
/// {@endtemplate}
/// {@macro pulumi_cognitive_account_connection_account_key_account_connection_account_key_args_doc}
class AccountConnectionAccountKeyArgs {
  /// The account key used for authentication.
  final pulumi.Input<String> accountKey;
  /// The category of the connection. The only possible value is `AzureStorageAccount`. Changing this forces a new resource to be created.
  final pulumi.Input<String> category;
  /// The ID of the Cognitive Services Account. Changing this forces a new resource to be created.
  final pulumi.Input<String> cognitiveAccountId;
  /// A mapping of metadata key-value pairs for the connection.
  ///
  /// &gt; **Note:** The `metadata` map must include `ResourceId` when `category` is `AzureStorageAccount`. To check any additional metadata returned by Azure, create an equivalent connection in the Foundry portal and inspect it with `az rest --method get --url "{connection_resource_id}?api-version=2026-03-01"`.
  final pulumi.Input<Map<String, String>> metadata;
  /// The name of the Cognitive Services Account Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The target endpoint or resource for the connection.
  ///
  /// &gt; **Note:** `target` must be an absolute HTTPS URL when `category` is `AzureStorageAccount`.
  final pulumi.Input<String> target;

  /// Creates a new [AccountConnectionAccountKeyArgs].
  /// [accountKey] The account key used for authentication.
  /// [category] The category of the connection. The only possible value is `AzureStorageAccount`. Changing this forces a new resource to be created.
  /// [cognitiveAccountId] The ID of the Cognitive Services Account. Changing this forces a new resource to be created.
  /// [metadata] A mapping of metadata key-value pairs for the connection.
  /// [name] The name of the Cognitive Services Account Connection. Changing this forces a new resource to be created.
  /// [target] The target endpoint or resource for the connection.
  const AccountConnectionAccountKeyArgs({
    required this.accountKey,
    required this.category,
    required this.cognitiveAccountId,
    required this.metadata,
    this.name,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': accountKey,
      'category': category,
      'cognitiveAccountId': cognitiveAccountId,
      'metadata': metadata,
      'name': ?name,
      'target': target,
    };
  }

  factory AccountConnectionAccountKeyArgs.fromMap(Map<String, dynamic> map) {
    return AccountConnectionAccountKeyArgs(
      accountKey: pulumi.Input.fromValue(map['accountKey'] as String),
      category: pulumi.Input.fromValue(map['category'] as String),
      cognitiveAccountId: pulumi.Input.fromValue(map['cognitiveAccountId'] as String),
      metadata: pulumi.Input.fromValue((map['metadata'] as Map).cast<String, String>()),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      target: pulumi.Input.fromValue(map['target'] as String),
    );
  }
}
