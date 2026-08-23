// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_identity_pool_inline_trust_config_additional_trust_bundle.dart';

class WorkloadIdentityPoolInlineTrustConfig {
  /// Maps specific trust domains (e.g., "example.com") to their corresponding `TrustStore`
  /// objects, which contain the trusted root certificates for that domain. There can be a
  /// maximum of `10` trust domain entries in this map.
  /// Note that a trust domain automatically trusts itself and don't need to be specified here.
  /// If however, this `WorkloadIdentityPool`'s trust domain contains any trust anchors in the
  /// `additionalTrustBundles` map, those trust anchors will be *appended to* the Trust Bundle
  /// automatically derived from your `InlineCertificateIssuanceConfig`'s `caPools`.
  /// Structure is documented below.
  final pulumi.Input<List<WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle>>? additionalTrustBundles;

  /// Creates a new [WorkloadIdentityPoolInlineTrustConfig].
  /// [additionalTrustBundles] Maps specific trust domains (e.g., "example.com") to their corresponding `TrustStore`
  const WorkloadIdentityPoolInlineTrustConfig({
    this.additionalTrustBundles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalTrustBundles': ?pulumi.Input.mapOptionalInputValue<List<WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle>, List<Map<String, dynamic>>>(additionalTrustBundles, (value) => pulumi.Input.encodeList<WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WorkloadIdentityPoolInlineTrustConfig.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityPoolInlineTrustConfig(
      additionalTrustBundles: (() { final guardedValue = map['additionalTrustBundles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle>(guardedValue, (value) => WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
