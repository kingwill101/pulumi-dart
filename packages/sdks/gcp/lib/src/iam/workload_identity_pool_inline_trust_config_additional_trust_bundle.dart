// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_identity_pool_inline_trust_config_additional_trust_bundle_trust_anchor.dart';

class WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle {
  /// List of Trust Anchors to be used while performing validation against a given
  /// `TrustStore`. The incoming end entity's certificate must be chained up to one of the
  /// trust anchors here.
  /// Structure is documented below.
  final pulumi.Input<List<WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchor>> trustAnchors;
  /// If set to True, the trust bundle will include the private ca managed identity regional root
  /// public certificates.
  /// &gt; **Note** `trustDefaultSharedCa` is only supported for managed identity trust domain
  /// resource.
  final pulumi.Input<bool?>? trustDefaultSharedCa;
  /// The identifier for this object. Format specified above.
  final pulumi.Input<String> trustDomain;

  /// Creates a new [WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle].
  /// [trustAnchors] List of Trust Anchors to be used while performing validation against a given
  /// [trustDefaultSharedCa] If set to True, the trust bundle will include the private ca managed identity regional root
  /// [trustDomain] The identifier for this object. Format specified above.
  const WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle({
    required this.trustAnchors,
    this.trustDefaultSharedCa,
    required this.trustDomain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'trustAnchors': pulumi.Input.mapInputValue<List<WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchor>, List<Map<String, dynamic>>>(trustAnchors, (value) => pulumi.Input.encodeList<WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchor, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trustDefaultSharedCa': ?trustDefaultSharedCa,
      'trustDomain': trustDomain,
    };
  }

  factory WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle(
      trustAnchors: pulumi.Input.fromValue(pulumi.Input.decodeList<WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchor>(map['trustAnchors']!, (value) => WorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchor.fromMap((value as Map).cast<String, dynamic>()))),
      trustDefaultSharedCa: (() { final guardedValue = map['trustDefaultSharedCa']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      trustDomain: pulumi.Input.fromValue(map['trustDomain'] as String),
    );
  }
}
