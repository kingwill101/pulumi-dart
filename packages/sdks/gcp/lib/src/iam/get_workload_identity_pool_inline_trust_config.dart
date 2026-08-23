// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workload_identity_pool_inline_trust_config_additional_trust_bundle.dart';

class GetWorkloadIdentityPoolInlineTrustConfig {
  /// Maps specific trust domains (e.g., "example.com") to their corresponding 'TrustStore'
  /// objects, which contain the trusted root certificates for that domain. There can be a
  /// maximum of '10' trust domain entries in this map.
  ///
  /// Note that a trust domain automatically trusts itself and don't need to be specified here.
  /// If however, this 'WorkloadIdentityPool''s trust domain contains any trust anchors in the
  /// 'additional_trust_bundles' map, those trust anchors will be *appended to* the Trust Bundle
  /// automatically derived from your 'InlineCertificateIssuanceConfig''s 'ca_pools'.
  final pulumi.Input<List<GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle>> additionalTrustBundles;

  /// Creates a new [GetWorkloadIdentityPoolInlineTrustConfig].
  /// [additionalTrustBundles] Maps specific trust domains (e.g., "example.com") to their corresponding 'TrustStore'
  const GetWorkloadIdentityPoolInlineTrustConfig({
    required this.additionalTrustBundles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalTrustBundles': pulumi.Input.mapInputValue<List<GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle>, List<Map<String, dynamic>>>(additionalTrustBundles, (value) => pulumi.Input.encodeList<GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetWorkloadIdentityPoolInlineTrustConfig.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolInlineTrustConfig(
      additionalTrustBundles: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle>(map['additionalTrustBundles']!, (value) => GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
