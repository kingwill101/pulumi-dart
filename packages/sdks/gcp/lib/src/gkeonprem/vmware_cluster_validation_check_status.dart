// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmware_cluster_validation_check_status_result.dart';

class VMwareClusterValidationCheckStatus {
  /// (Output)
  /// Individual checks which failed as part of the Preflight check execution.
  /// Structure is documented below.
  final pulumi.Input<List<VMwareClusterValidationCheckStatusResult>?>? results;

  /// Creates a new [VMwareClusterValidationCheckStatus].
  /// [results] (Output)
  const VMwareClusterValidationCheckStatus({
    this.results,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'results': ?pulumi.Input.mapOptionalInputValue<List<VMwareClusterValidationCheckStatusResult>, List<Map<String, dynamic>>>(results, (value) => pulumi.Input.encodeList<VMwareClusterValidationCheckStatusResult, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory VMwareClusterValidationCheckStatus.fromMap(Map<String, dynamic> map) {
    return VMwareClusterValidationCheckStatus(
      results: (() { final guardedValue = map['results']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VMwareClusterValidationCheckStatusResult>(guardedValue, (value) => VMwareClusterValidationCheckStatusResult.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
