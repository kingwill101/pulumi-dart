// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_r2_custom_domain_get_r2_custom_domain_args_doc}
/// Arguments for getR2CustomDomain.
/// {@endtemplate}
/// {@macro pulumi_index_get_r2_custom_domain_get_r2_custom_domain_args_doc}
class GetR2CustomDomainArgs {
  /// Cloudflare account ID that owns the R2 resource.
  final pulumi.Input<String> accountId;
  /// Name of the bucket.
  final pulumi.Input<String> bucketName;
  /// Name of the custom domain.
  final pulumi.Input<String> domain;

  /// Creates a new [GetR2CustomDomainArgs].
  /// [accountId] Cloudflare account ID that owns the R2 resource.
  /// [bucketName] Name of the bucket.
  /// [domain] Name of the custom domain.
  const GetR2CustomDomainArgs({
    required this.accountId,
    required this.bucketName,
    required this.domain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'bucketName': bucketName,
      'domain': domain,
    };
  }

  factory GetR2CustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetR2CustomDomainArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      domain: pulumi.Input.fromValue(map['domain'] as String),
    );
  }
}
