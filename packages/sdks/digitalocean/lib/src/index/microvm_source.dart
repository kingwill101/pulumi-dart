// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MicrovmSource {
  /// The ID of a checkpoint to restore.
  final pulumi.Input<String?>? checkpointId;
  /// The OCI reference of the workload container image, such as `docker.io/library/nginx:latest`.
  final pulumi.Input<String?>? ociRef;

  /// Creates a new [MicrovmSource].
  /// [checkpointId] The ID of a checkpoint to restore.
  /// [ociRef] The OCI reference of the workload container image, such as `docker.io/library/nginx:latest`.
  const MicrovmSource({
    this.checkpointId,
    this.ociRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkpointId': ?checkpointId,
      'ociRef': ?ociRef,
    };
  }

  factory MicrovmSource.fromMap(Map<String, dynamic> map) {
    return MicrovmSource(
      checkpointId: (() { final guardedValue = map['checkpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ociRef: (() { final guardedValue = map['ociRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
