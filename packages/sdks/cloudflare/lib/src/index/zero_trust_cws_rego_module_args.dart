// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zero_trust_cws_rego_module_zero_trust_cws_rego_module_args_doc}
/// The set of arguments for ZeroTrustCwsRegoModule.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_cws_rego_module_zero_trust_cws_rego_module_args_doc}
class ZeroTrustCwsRegoModuleArgs {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String> accountId;
  /// Name of the Rego module (unique per account)
  final pulumi.Input<String> name;
  /// Library Rego source with a package beginning with "lib." Maximum 16384 UTF-8 bytes.
  final pulumi.Input<String> regoSource;

  /// Creates a new [ZeroTrustCwsRegoModuleArgs].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [name] Name of the Rego module (unique per account)
  /// [regoSource] Library Rego source with a package beginning with "lib." Maximum 16384 UTF-8 bytes.
  const ZeroTrustCwsRegoModuleArgs({
    required this.accountId,
    required this.name,
    required this.regoSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'name': name,
      'regoSource': regoSource,
    };
  }

  factory ZeroTrustCwsRegoModuleArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCwsRegoModuleArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      regoSource: pulumi.Input.fromValue(map['regoSource'] as String),
    );
  }
}
