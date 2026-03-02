// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A reference to a Compute Engine instance.
class InstanceReferenceResponse {
  /// The unique identifier of the Compute Engine instance.
  final pulumi.Input<String> instanceId;
  /// The user-friendly name of the Compute Engine instance.
  final pulumi.Input<String> instanceName;
  /// The public ECIES key used for sharing data with this instance.
  final pulumi.Input<String> publicEciesKey;
  /// The public RSA key used for sharing data with this instance.
  final pulumi.Input<String> publicKey;

  /// Creates a new [InstanceReferenceResponse].
  /// [instanceId] The unique identifier of the Compute Engine instance.
  /// [instanceName] The user-friendly name of the Compute Engine instance.
  /// [publicEciesKey] The public ECIES key used for sharing data with this instance.
  /// [publicKey] The public RSA key used for sharing data with this instance.
  InstanceReferenceResponse({
    required this.instanceId,
    required this.instanceName,
    required this.publicEciesKey,
    required this.publicKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'instanceName': instanceName,
      'publicEciesKey': publicEciesKey,
      'publicKey': publicKey,
    };
  }

  factory InstanceReferenceResponse.fromMap(Map<String, dynamic> map) {
    return InstanceReferenceResponse(
      instanceId: (map['instanceId'] as String).input(),
      instanceName: (map['instanceName'] as String).input(),
      publicEciesKey: (map['publicEciesKey'] as String).input(),
      publicKey: (map['publicKey'] as String).input(),
    );
  }
}

