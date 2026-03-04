// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workload_identity_pool_inline_trust_config_additional_trust_bundle_trust_anchor.dart';

class GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle {
  /// List of Trust Anchors to be used while performing validation against a given
  /// 'TrustStore'. The incoming end entity's certificate must be chained up to one of the
  /// trust anchors here.
  final pulumi.Input<
    List<
      GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchor
    >
  >
  trustAnchors;
  final pulumi.Input<String> trustDomain;

  /// Creates a new [GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle].
  /// [trustAnchors] List of Trust Anchors to be used while performing validation against a given
  /// [trustDomain] Required.
  GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle({
    required this.trustAnchors,
    required this.trustDomain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'trustAnchors':
          pulumi.Input.mapInputValue<
            List<
              GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchor
            >,
            List<Map<String, dynamic>>
          >(
            trustAnchors,
            (value) =>
                pulumi.Input.encodeList<
                  GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchor,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'trustDomain': trustDomain,
    };
  }

  factory GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundle(
      trustAnchors: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchor
        >(
          map['trustAnchors']!,
          (value) =>
              GetWorkloadIdentityPoolInlineTrustConfigAdditionalTrustBundleTrustAnchor.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      trustDomain: pulumi.Input.fromValue(map['trustDomain'] as String),
    );
  }
}
