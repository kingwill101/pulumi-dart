// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_dls_prefix_binding_get_dls_prefix_binding_args_doc}
/// Arguments for getDlsPrefixBinding.
/// {@endtemplate}
/// {@macro pulumi_index_get_dls_prefix_binding_get_dls_prefix_binding_args_doc}
class GetDlsPrefixBindingArgs {
  /// Identifier of a Cloudflare account.
  final pulumi.Input<String> accountId;
  /// Unique identifier for the prefix binding.
  final pulumi.Input<String> bindingId;

  /// Creates a new [GetDlsPrefixBindingArgs].
  /// [accountId] Identifier of a Cloudflare account.
  /// [bindingId] Unique identifier for the prefix binding.
  const GetDlsPrefixBindingArgs({
    required this.accountId,
    required this.bindingId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'bindingId': bindingId,
    };
  }

  factory GetDlsPrefixBindingArgs.fromMap(Map<String, dynamic> map) {
    return GetDlsPrefixBindingArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      bindingId: pulumi.Input.fromValue(map['bindingId'] as String),
    );
  }
}
