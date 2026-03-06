// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_identity_pool_provider_x509_trust_store_intermediate_ca.dart';
import 'workload_identity_pool_provider_x509_trust_store_trust_anchor.dart';

class WorkloadIdentityPoolProviderX509TrustStore {
  /// Set of intermediate CA certificates used for building the trust chain to
  /// trust anchor.
  /// IMPORTANT: Intermediate CAs are only supported when configuring x509 federation.
  /// Structure is documented below.
  final pulumi.Input<List<WorkloadIdentityPoolProviderX509TrustStoreIntermediateCa>>? intermediateCas;
  /// List of Trust Anchors to be used while performing validation
  /// against a given TrustStore. The incoming end entity's certificate
  /// must be chained up to one of the trust anchors here.
  /// Structure is documented below.
  final pulumi.Input<List<WorkloadIdentityPoolProviderX509TrustStoreTrustAnchor>> trustAnchors;

  /// Creates a new [WorkloadIdentityPoolProviderX509TrustStore].
  /// [intermediateCas] Set of intermediate CA certificates used for building the trust chain to
  /// [trustAnchors] List of Trust Anchors to be used while performing validation
  const WorkloadIdentityPoolProviderX509TrustStore({
    this.intermediateCas,
    required this.trustAnchors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intermediateCas': ?pulumi.Input.mapOptionalInputValue<List<WorkloadIdentityPoolProviderX509TrustStoreIntermediateCa>, List<Map<String, dynamic>>>(intermediateCas, (value) => pulumi.Input.encodeList<WorkloadIdentityPoolProviderX509TrustStoreIntermediateCa, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trustAnchors': pulumi.Input.mapInputValue<List<WorkloadIdentityPoolProviderX509TrustStoreTrustAnchor>, List<Map<String, dynamic>>>(trustAnchors, (value) => pulumi.Input.encodeList<WorkloadIdentityPoolProviderX509TrustStoreTrustAnchor, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory WorkloadIdentityPoolProviderX509TrustStore.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityPoolProviderX509TrustStore(
      intermediateCas: (() { final guardedValue = map['intermediateCas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkloadIdentityPoolProviderX509TrustStoreIntermediateCa>(guardedValue, (value) => WorkloadIdentityPoolProviderX509TrustStoreIntermediateCa.fromMap((value as Map).cast<String, dynamic>()))); })(),
      trustAnchors: pulumi.Input.fromValue(pulumi.Input.decodeList<WorkloadIdentityPoolProviderX509TrustStoreTrustAnchor>(map['trustAnchors']!, (value) => WorkloadIdentityPoolProviderX509TrustStoreTrustAnchor.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

