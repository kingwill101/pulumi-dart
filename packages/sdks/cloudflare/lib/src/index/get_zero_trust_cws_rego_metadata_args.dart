// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_cws_rego_metadata_filter.dart';

/// {@template pulumi_index_get_zero_trust_cws_rego_metadata_get_zero_trust_cws_rego_metadata_args_doc}
/// Arguments for getZeroTrustCwsRegoMetadata.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_cws_rego_metadata_get_zero_trust_cws_rego_metadata_args_doc}
class GetZeroTrustCwsRegoMetadataArgs {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String> accountId;
  final pulumi.Input<GetZeroTrustCwsRegoMetadataFilter?>? filter;
  /// ID of the rego metadata document to retrieve
  final pulumi.Input<String?>? regoMetadataId;

  /// Creates a new [GetZeroTrustCwsRegoMetadataArgs].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [filter] Optional.
  /// [regoMetadataId] ID of the rego metadata document to retrieve
  const GetZeroTrustCwsRegoMetadataArgs({
    required this.accountId,
    this.filter,
    this.regoMetadataId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetZeroTrustCwsRegoMetadataFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
      'regoMetadataId': ?regoMetadataId,
    };
  }

  factory GetZeroTrustCwsRegoMetadataArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsRegoMetadataArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZeroTrustCwsRegoMetadataFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      regoMetadataId: (() { final guardedValue = map['regoMetadataId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
