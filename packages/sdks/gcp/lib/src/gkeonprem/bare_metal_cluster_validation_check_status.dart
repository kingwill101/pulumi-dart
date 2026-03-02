// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bare_metal_cluster_validation_check_status_result.dart';

class BareMetalClusterValidationCheckStatus {
  /// (Output)
  /// Individual checks which failed as part of the Preflight check execution.
  /// Structure is documented below.
  final pulumi.Input<List<BareMetalClusterValidationCheckStatusResult>>? results;

  /// Creates a new [BareMetalClusterValidationCheckStatus].
  /// [results] (Output)
  BareMetalClusterValidationCheckStatus({
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'results': ?pulumi.Input.mapOptionalInputValue<List<BareMetalClusterValidationCheckStatusResult>, List<Map<String, dynamic>>>(results, (value) => pulumi.Input.encodeList<BareMetalClusterValidationCheckStatusResult, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory BareMetalClusterValidationCheckStatus.fromMap(Map<String, dynamic> map) {
    return BareMetalClusterValidationCheckStatus(
      results: map['results'] == null ? null : (pulumi.Input.decodeList<BareMetalClusterValidationCheckStatusResult>(map['results']!, (value) => BareMetalClusterValidationCheckStatusResult.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

