// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccountConnectionAccountKey resources.
class AccountConnectionAccountKeyState {
  /// The account key used for authentication.
  final pulumi.Input<String?>? accountKey;
  /// The category of the connection. The only possible value is `AzureStorageAccount`. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? category;
  /// The ID of the Cognitive Services Account. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? cognitiveAccountId;
  /// A mapping of metadata key-value pairs for the connection.
  ///
  /// &gt; **Note:** The `metadata` map must include `ResourceId` when `category` is `AzureStorageAccount`. To check any additional metadata returned by Azure, create an equivalent connection in the Foundry portal and inspect it with `az rest --method get --url "{connection_resource_id}?api-version=2026-03-01"`.
  final pulumi.Input<Map<String, String>?>? metadata;
  /// The name of the Cognitive Services Account Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The target endpoint or resource for the connection.
  ///
  /// &gt; **Note:** `target` must be an absolute HTTPS URL when `category` is `AzureStorageAccount`.
  final pulumi.Input<String?>? target;

  /// Creates a new [AccountConnectionAccountKeyState].
  /// [accountKey] The account key used for authentication.
  /// [category] The category of the connection. The only possible value is `AzureStorageAccount`. Changing this forces a new resource to be created.
  /// [cognitiveAccountId] The ID of the Cognitive Services Account. Changing this forces a new resource to be created.
  /// [metadata] A mapping of metadata key-value pairs for the connection.
  /// [name] The name of the Cognitive Services Account Connection. Changing this forces a new resource to be created.
  /// [target] The target endpoint or resource for the connection.
  const AccountConnectionAccountKeyState({
    this.accountKey,
    this.category,
    this.cognitiveAccountId,
    this.metadata,
    this.name,
    this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': ?accountKey,
      'category': ?category,
      'cognitiveAccountId': ?cognitiveAccountId,
      'metadata': ?metadata,
      'name': ?name,
      'target': ?target,
    };
  }

  factory AccountConnectionAccountKeyState.fromMap(Map<String, dynamic> map) {
    return AccountConnectionAccountKeyState(
      accountKey: (() { final guardedValue = map['accountKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cognitiveAccountId: (() { final guardedValue = map['cognitiveAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
