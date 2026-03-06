// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An access config attached to the TPU worker.
class AccessConfigResponseTpuV2alpha1 {
  /// An external IP address associated with the TPU worker.
  final pulumi.Input<String> externalIp;

  /// Creates a new [AccessConfigResponseTpuV2alpha1].
  /// [externalIp] An external IP address associated with the TPU worker.
  const AccessConfigResponseTpuV2alpha1({
    required this.externalIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalIp': externalIp,
    };
  }

  factory AccessConfigResponseTpuV2alpha1.fromMap(Map<String, dynamic> map) {
    return AccessConfigResponseTpuV2alpha1(
      externalIp: pulumi.Input.fromValue(map['externalIp'] as String),
    );
  }
}

