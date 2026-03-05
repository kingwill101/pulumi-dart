// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_workload_identity_pool_provider_x509_trust_store.dart';

class GetWorkloadIdentityPoolProviderX509 {
  /// A Trust store, use this trust store as a wrapper to config the trust
  /// anchor and optional intermediate cas to help build the trust chain for
  /// the incoming end entity certificate. Follow the x509 guidelines to
  /// define those PEM encoded certs. Only 1 trust store is currently
  /// supported.
  final pulumi.Input<List<GetWorkloadIdentityPoolProviderX509TrustStore>> trustStores;

  /// Creates a new [GetWorkloadIdentityPoolProviderX509].
  /// [trustStores] A Trust store, use this trust store as a wrapper to config the trust
  GetWorkloadIdentityPoolProviderX509({
    required this.trustStores,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'trustStores': pulumi.Input.mapInputValue<List<GetWorkloadIdentityPoolProviderX509TrustStore>, List<Map<String, dynamic>>>(trustStores, (value) => pulumi.Input.encodeList<GetWorkloadIdentityPoolProviderX509TrustStore, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetWorkloadIdentityPoolProviderX509.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolProviderX509(
      trustStores: pulumi.Input.fromValue(pulumi.Input.decodeList<GetWorkloadIdentityPoolProviderX509TrustStore>(map['trustStores']!, (value) => GetWorkloadIdentityPoolProviderX509TrustStore.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

