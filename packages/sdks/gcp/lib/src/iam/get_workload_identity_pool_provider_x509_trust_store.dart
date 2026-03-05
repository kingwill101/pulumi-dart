// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workload_identity_pool_provider_x509_trust_store_intermediate_ca.dart';
import 'get_workload_identity_pool_provider_x509_trust_store_trust_anchor.dart';

class GetWorkloadIdentityPoolProviderX509TrustStore {
  /// Set of intermediate CA certificates used for building the trust chain to
  /// trust anchor.
  /// IMPORTANT: Intermediate CAs are only supported when configuring x509 federation.
  final pulumi.Input<List<GetWorkloadIdentityPoolProviderX509TrustStoreIntermediateCa>> intermediateCas;
  /// List of Trust Anchors to be used while performing validation
  /// against a given TrustStore. The incoming end entity's certificate
  /// must be chained up to one of the trust anchors here.
  final pulumi.Input<List<GetWorkloadIdentityPoolProviderX509TrustStoreTrustAnchor>> trustAnchors;

  /// Creates a new [GetWorkloadIdentityPoolProviderX509TrustStore].
  /// [intermediateCas] Set of intermediate CA certificates used for building the trust chain to
  /// [trustAnchors] List of Trust Anchors to be used while performing validation
  GetWorkloadIdentityPoolProviderX509TrustStore({
    required this.intermediateCas,
    required this.trustAnchors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intermediateCas': pulumi.Input.mapInputValue<List<GetWorkloadIdentityPoolProviderX509TrustStoreIntermediateCa>, List<Map<String, dynamic>>>(intermediateCas, (value) => pulumi.Input.encodeList<GetWorkloadIdentityPoolProviderX509TrustStoreIntermediateCa, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trustAnchors': pulumi.Input.mapInputValue<List<GetWorkloadIdentityPoolProviderX509TrustStoreTrustAnchor>, List<Map<String, dynamic>>>(trustAnchors, (value) => pulumi.Input.encodeList<GetWorkloadIdentityPoolProviderX509TrustStoreTrustAnchor, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetWorkloadIdentityPoolProviderX509TrustStore.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolProviderX509TrustStore(
      intermediateCas: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkloadIdentityPoolProviderX509TrustStoreIntermediateCa>(map['intermediateCas']!, (value) => GetWorkloadIdentityPoolProviderX509TrustStoreIntermediateCa.fromMap((value as Map).cast<String, dynamic>()))),
      trustAnchors: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkloadIdentityPoolProviderX509TrustStoreTrustAnchor>(map['trustAnchors']!, (value) => GetWorkloadIdentityPoolProviderX509TrustStoreTrustAnchor.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

