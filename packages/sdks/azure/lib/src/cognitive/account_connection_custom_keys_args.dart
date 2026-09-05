// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognitive_account_connection_custom_keys_account_connection_custom_keys_args_doc}
/// The set of arguments for AccountConnectionCustomKeys.
/// {@endtemplate}
/// {@macro pulumi_cognitive_account_connection_custom_keys_account_connection_custom_keys_args_doc}
class AccountConnectionCustomKeysArgs {
  /// The category of the connection. Possible values are `CustomKeys`, `RemoteA2A`, and `RemoteTool`. Changing this forces a new resource to be created.
  final pulumi.Input<String> category;
  /// The ID of the Cognitive Services Account. Changing this forces a new resource to be created.
  final pulumi.Input<String> cognitiveAccountId;
  /// A mapping of custom keys for authentication. All values in this map are sensitive.
  final pulumi.Input<Map<String, String>> customKeys;
  /// A mapping of metadata key-value pairs for the connection.
  ///
  /// &gt; **Note:** To determine the `metadata` shape for a connection category, create an equivalent connection in the Foundry portal, retrieve its resource ID, then inspect it with `az rest --method get --url "{connection_resource_id}?api-version=2026-03-01"`.
  final pulumi.Input<Map<String, String>?>? metadata;
  /// The name of the Cognitive Services Account Connection. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The target endpoint or resource for the connection.
  final pulumi.Input<String> target;

  /// Creates a new [AccountConnectionCustomKeysArgs].
  /// [category] The category of the connection. Possible values are `CustomKeys`, `RemoteA2A`, and `RemoteTool`. Changing this forces a new resource to be created.
  /// [cognitiveAccountId] The ID of the Cognitive Services Account. Changing this forces a new resource to be created.
  /// [customKeys] A mapping of custom keys for authentication. All values in this map are sensitive.
  /// [metadata] A mapping of metadata key-value pairs for the connection.
  /// [name] The name of the Cognitive Services Account Connection. Changing this forces a new resource to be created.
  /// [target] The target endpoint or resource for the connection.
  const AccountConnectionCustomKeysArgs({
    required this.category,
    required this.cognitiveAccountId,
    required this.customKeys,
    this.metadata,
    this.name,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'category': category,
      'cognitiveAccountId': cognitiveAccountId,
      'customKeys': customKeys,
      'metadata': ?metadata,
      'name': ?name,
      'target': target,
    };
  }

  factory AccountConnectionCustomKeysArgs.fromMap(Map<String, dynamic> map) {
    return AccountConnectionCustomKeysArgs(
      category: pulumi.Input.fromValue(map['category'] as String),
      cognitiveAccountId: pulumi.Input.fromValue(map['cognitiveAccountId'] as String),
      customKeys: pulumi.Input.fromValue((map['customKeys'] as Map).cast<String, String>()),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      target: pulumi.Input.fromValue(map['target'] as String),
    );
  }
}
