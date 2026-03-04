// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'intermediate_caresponse.dart';
import 'trust_anchor_response.dart';

/// Defines a trust store.
class TrustStoreResponse {
  /// Set of intermediate CA certificates used for the path building phase of chain validation. The field is currently not supported if TrustConfig is used for the workload certificate feature.
  final pulumi.Input<List<IntermediateCAResponse>> intermediateCas;

  /// List of Trust Anchors to be used while performing validation against a given TrustStore.
  final pulumi.Input<List<TrustAnchorResponse>> trustAnchors;

  /// Creates a new [TrustStoreResponse].
  /// [intermediateCas] Set of intermediate CA certificates used for the path building phase of chain validation. The field is currently not supported if TrustConfig is used for the workload certificate feature.
  /// [trustAnchors] List of Trust Anchors to be used while performing validation against a given TrustStore.
  TrustStoreResponse({
    required this.intermediateCas,
    required this.trustAnchors,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intermediateCas':
          pulumi.Input.mapInputValue<
            List<IntermediateCAResponse>,
            List<Map<String, dynamic>>
          >(
            intermediateCas,
            (value) =>
                pulumi.Input.encodeList<
                  IntermediateCAResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'trustAnchors':
          pulumi.Input.mapInputValue<
            List<TrustAnchorResponse>,
            List<Map<String, dynamic>>
          >(
            trustAnchors,
            (value) =>
                pulumi.Input.encodeList<
                  TrustAnchorResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory TrustStoreResponse.fromMap(Map<String, dynamic> map) {
    return TrustStoreResponse(
      intermediateCas: pulumi.Input.fromValue(
        pulumi.Input.decodeList<IntermediateCAResponse>(
          map['intermediateCas']!,
          (value) => IntermediateCAResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      trustAnchors: pulumi.Input.fromValue(
        pulumi.Input.decodeList<TrustAnchorResponse>(
          map['trustAnchors']!,
          (value) => TrustAnchorResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
