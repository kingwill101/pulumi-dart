// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workload_identity_pool_inline_trust_config_additional_trust_bundle_trust_anchor.dart';

class GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle {
  /// List of Trust Anchors to be used while performing validation against a given
  /// 'TrustStore'. The incoming end entity's certificate must be chained up to one of the
  /// trust anchors here.
  final pulumi.Input<List<GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchor>> trustAnchors;
  /// If set to True, the trust bundle will include the private ca managed identity regional root
  /// public certificates.
  ///
  /// &gt; **Note** 'trust_default_shared_ca' is only supported for managed identity trust domain
  /// resource.
  final pulumi.Input<bool> trustDefaultSharedCa;
  final pulumi.Input<String> trustDomain;

  /// Creates a new [GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle].
  /// [trustAnchors] List of Trust Anchors to be used while performing validation against a given
  /// [trustDefaultSharedCa] If set to True, the trust bundle will include the private ca managed identity regional root
  /// [trustDomain] Required.
  const GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle({
    required this.trustAnchors,
    required this.trustDefaultSharedCa,
    required this.trustDomain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'trustAnchors': pulumi.Input.mapInputValue<List<GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchor>, List<Map<String, dynamic>>>(trustAnchors, (value) => pulumi.Input.encodeList<GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trustDefaultSharedCa': trustDefaultSharedCa,
      'trustDomain': trustDomain,
    };
  }

  factory GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle(
      trustAnchors: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchor>(map['trustAnchors']!, (value) => GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchor.fromMap((value as Map).cast<String, dynamic>()))),
      trustDefaultSharedCa: pulumi.Input.fromValue(map['trustDefaultSharedCa'] as bool),
      trustDomain: pulumi.Input.fromValue(map['trustDomain'] as String),
    );
  }
}
