// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_dls_prefix_binding_dls_prefix_binding_args_doc}
/// The set of arguments for DlsPrefixBinding.
/// {@endtemplate}
/// {@macro pulumi_index_dls_prefix_binding_dls_prefix_binding_args_doc}
class DlsPrefixBindingArgs {
  /// Identifier of a Cloudflare account.
  final pulumi.Input<String> accountId;
  /// IP prefix in CIDR notation to bind.
  final pulumi.Input<String> cidr;
  /// The ID of the parent IP prefix that contains the CIDR.
  final pulumi.Input<String> prefixId;
  /// Region key from managed regions (e.g., "us", "eu").
  final pulumi.Input<String> regionKey;

  /// Creates a new [DlsPrefixBindingArgs].
  /// [accountId] Identifier of a Cloudflare account.
  /// [cidr] IP prefix in CIDR notation to bind.
  /// [prefixId] The ID of the parent IP prefix that contains the CIDR.
  /// [regionKey] Region key from managed regions (e.g., "us", "eu").
  const DlsPrefixBindingArgs({
    required this.accountId,
    required this.cidr,
    required this.prefixId,
    required this.regionKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'cidr': cidr,
      'prefixId': prefixId,
      'regionKey': regionKey,
    };
  }

  factory DlsPrefixBindingArgs.fromMap(Map<String, dynamic> map) {
    return DlsPrefixBindingArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      cidr: pulumi.Input.fromValue(map['cidr'] as String),
      prefixId: pulumi.Input.fromValue(map['prefixId'] as String),
      regionKey: pulumi.Input.fromValue(map['regionKey'] as String),
    );
  }
}
