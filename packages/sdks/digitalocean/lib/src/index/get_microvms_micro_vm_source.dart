// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMicrovmsMicroVmSource {
  /// Checkpoint UUID to restore
  final pulumi.Input<String?>? checkpointId;
  /// OCI reference for the workload container
  final pulumi.Input<String?>? ociRef;

  /// Creates a new [GetMicrovmsMicroVmSource].
  /// [checkpointId] Checkpoint UUID to restore
  /// [ociRef] OCI reference for the workload container
  const GetMicrovmsMicroVmSource({
    this.checkpointId,
    this.ociRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkpointId': ?checkpointId,
      'ociRef': ?ociRef,
    };
  }

  factory GetMicrovmsMicroVmSource.fromMap(Map<String, dynamic> map) {
    return GetMicrovmsMicroVmSource(
      checkpointId: (() { final guardedValue = map['checkpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ociRef: (() { final guardedValue = map['ociRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
