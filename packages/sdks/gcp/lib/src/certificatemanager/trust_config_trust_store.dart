// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'trust_config_trust_store_intermediate_ca.dart';
import 'trust_config_trust_store_trust_anchor.dart';

class TrustConfigTrustStore {
  /// Set of intermediate CA certificates used for the path building phase of chain validation.
  /// The field is currently not supported if trust config is used for the workload certificate feature.
  /// Structure is documented below.
  final pulumi.Input<List<TrustConfigTrustStoreIntermediateCa>?>? intermediateCas;
  /// List of Trust Anchors to be used while performing validation against a given TrustStore.
  /// Structure is documented below.
  final pulumi.Input<List<TrustConfigTrustStoreTrustAnchor>?>? trustAnchors;

  /// Creates a new [TrustConfigTrustStore].
  /// [intermediateCas] Set of intermediate CA certificates used for the path building phase of chain validation.
  /// [trustAnchors] List of Trust Anchors to be used while performing validation against a given TrustStore.
  const TrustConfigTrustStore({
    this.intermediateCas,
    this.trustAnchors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intermediateCas': ?pulumi.Input.mapOptionalInputValue<List<TrustConfigTrustStoreIntermediateCa>, List<Map<String, dynamic>>>(intermediateCas, (value) => pulumi.Input.encodeList<TrustConfigTrustStoreIntermediateCa, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trustAnchors': ?pulumi.Input.mapOptionalInputValue<List<TrustConfigTrustStoreTrustAnchor>, List<Map<String, dynamic>>>(trustAnchors, (value) => pulumi.Input.encodeList<TrustConfigTrustStoreTrustAnchor, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TrustConfigTrustStore.fromMap(Map<String, dynamic> map) {
    return TrustConfigTrustStore(
      intermediateCas: (() { final guardedValue = map['intermediateCas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TrustConfigTrustStoreIntermediateCa>(guardedValue, (value) => TrustConfigTrustStoreIntermediateCa.fromMap((value as Map).cast<String, dynamic>()))); })(),
      trustAnchors: (() { final guardedValue = map['trustAnchors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TrustConfigTrustStoreTrustAnchor>(guardedValue, (value) => TrustConfigTrustStoreTrustAnchor.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
