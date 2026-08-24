// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_access_tag_access_tag_args_doc}
/// The set of arguments for AccessTag.
/// {@endtemplate}
/// {@macro pulumi_index_access_tag_access_tag_args_doc}
class AccessTagArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// The name of the tag
  final pulumi.Input<String> name;

  /// Creates a new [AccessTagArgs].
  /// [accountId] Identifier.
  /// [name] The name of the tag
  const AccessTagArgs({
    required this.accountId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'name': name,
    };
  }

  factory AccessTagArgs.fromMap(Map<String, dynamic> map) {
    return AccessTagArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
