// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_zero_trust_cws_rego_metadata_zero_trust_cws_rego_metadata_args_doc}
/// The set of arguments for ZeroTrustCwsRegoMetadata.
/// {@endtemplate}
/// {@macro pulumi_index_zero_trust_cws_rego_metadata_zero_trust_cws_rego_metadata_args_doc}
class ZeroTrustCwsRegoMetadataArgs {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String> accountId;
  final pulumi.Input<String> data;
  /// Unique Rego import path in the form metadata.\n\n, with one alphanumeric or underscore segment. Reference it as data.\n\n.
  final pulumi.Input<String> importPath;
  /// Name of the rego metadata document (unique per account)
  final pulumi.Input<String> name;

  /// Creates a new [ZeroTrustCwsRegoMetadataArgs].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [data] Required.
  /// [importPath] Unique Rego import path in the form metadata.\n\n, with one alphanumeric or underscore segment. Reference it as data.\n\n.
  /// [name] Name of the rego metadata document (unique per account)
  const ZeroTrustCwsRegoMetadataArgs({
    required this.accountId,
    required this.data,
    required this.importPath,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'data': data,
      'importPath': importPath,
      'name': name,
    };
  }

  factory ZeroTrustCwsRegoMetadataArgs.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCwsRegoMetadataArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      data: pulumi.Input.fromValue(map['data'] as String),
      importPath: pulumi.Input.fromValue(map['importPath'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
