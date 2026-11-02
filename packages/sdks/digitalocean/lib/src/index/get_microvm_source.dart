// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMicrovmSource {
  /// The ID of the checkpoint the MicroVM was restored from.
  final pulumi.Input<String?>? checkpointId;
  /// The OCI reference of the workload container image.
  final pulumi.Input<String?>? ociRef;

  /// Creates a new [GetMicrovmSource].
  /// [checkpointId] The ID of the checkpoint the MicroVM was restored from.
  /// [ociRef] The OCI reference of the workload container image.
  const GetMicrovmSource({
    this.checkpointId,
    this.ociRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkpointId': ?checkpointId,
      'ociRef': ?ociRef,
    };
  }

  factory GetMicrovmSource.fromMap(Map<String, dynamic> map) {
    return GetMicrovmSource(
      checkpointId: (() { final guardedValue = map['checkpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ociRef: (() { final guardedValue = map['ociRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
