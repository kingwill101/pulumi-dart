// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_flagship_app_flagship_app_args_doc}
/// The set of arguments for FlagshipApp.
/// {@endtemplate}
/// {@macro pulumi_index_flagship_app_flagship_app_args_doc}
class FlagshipAppArgs {
  /// Cloudflare account ID that owns the Flagship app.
  final pulumi.Input<String> accountId;
  /// Name of the Flagship app (1–64 letters, numbers, hyphens, or underscores).
  final pulumi.Input<String> name;

  /// Creates a new [FlagshipAppArgs].
  /// [accountId] Cloudflare account ID that owns the Flagship app.
  /// [name] Name of the Flagship app (1–64 letters, numbers, hyphens, or underscores).
  const FlagshipAppArgs({
    required this.accountId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'name': name,
    };
  }

  factory FlagshipAppArgs.fromMap(Map<String, dynamic> map) {
    return FlagshipAppArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
