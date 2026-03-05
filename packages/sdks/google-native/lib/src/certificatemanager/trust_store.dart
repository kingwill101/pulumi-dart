// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'intermediate_ca.dart';
import 'trust_anchor.dart';

/// Defines a trust store.
class TrustStore {
  /// Set of intermediate CA certificates used for the path building phase of chain validation. The field is currently not supported if TrustConfig is used for the workload certificate feature.
  final pulumi.Input<List<IntermediateCA>>? intermediateCas;
  /// List of Trust Anchors to be used while performing validation against a given TrustStore.
  final pulumi.Input<List<TrustAnchor>>? trustAnchors;

  /// Creates a new [TrustStore].
  /// [intermediateCas] Set of intermediate CA certificates used for the path building phase of chain validation. The field is currently not supported if TrustConfig is used for the workload certificate feature.
  /// [trustAnchors] List of Trust Anchors to be used while performing validation against a given TrustStore.
  TrustStore({
    this.intermediateCas,
    this.trustAnchors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intermediateCas': ?pulumi.Input.mapOptionalInputValue<List<IntermediateCA>, List<Map<String, dynamic>>>(intermediateCas, (value) => pulumi.Input.encodeList<IntermediateCA, Map<String, dynamic>>(value, (value) => value.toMap())),
      'trustAnchors': ?pulumi.Input.mapOptionalInputValue<List<TrustAnchor>, List<Map<String, dynamic>>>(trustAnchors, (value) => pulumi.Input.encodeList<TrustAnchor, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TrustStore.fromMap(Map<String, dynamic> map) {
    return TrustStore(
      intermediateCas: (() { final guardedValue = map['intermediateCas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IntermediateCA>(guardedValue, (value) => IntermediateCA.fromMap((value as Map).cast<String, dynamic>()))); })(),
      trustAnchors: (() { final guardedValue = map['trustAnchors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TrustAnchor>(guardedValue, (value) => TrustAnchor.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

