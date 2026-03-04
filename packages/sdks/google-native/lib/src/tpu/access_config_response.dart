// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An access config attached to the TPU worker.
class AccessConfigResponse {
  /// An external IP address associated with the TPU worker.
  final pulumi.Input<String> externalIp;

  /// Creates a new [AccessConfigResponse].
  /// [externalIp] An external IP address associated with the TPU worker.
  AccessConfigResponse({required this.externalIp});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'externalIp': externalIp};
  }

  factory AccessConfigResponse.fromMap(Map<String, dynamic> map) {
    return AccessConfigResponse(
      externalIp: pulumi.Input.fromValue(map['externalIp'] as String),
    );
  }
}
