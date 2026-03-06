// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters for SharedKey.
class SharedKeyPropertiesResponse {
  /// The provisioning state of the SharedKey resource.
  final pulumi.Input<String> provisioningState;
  /// The value of the shared key for the vpn link connection.
  final pulumi.Input<String>? sharedKey;
  /// The length of the shared key for the vpn link connection.
  final pulumi.Input<int>? sharedKeyLength;

  /// Creates a new [SharedKeyPropertiesResponse].
  /// [provisioningState] The provisioning state of the SharedKey resource.
  /// [sharedKey] The value of the shared key for the vpn link connection.
  /// [sharedKeyLength] The length of the shared key for the vpn link connection.
  const SharedKeyPropertiesResponse({
    required this.provisioningState,
    this.sharedKey,
    this.sharedKeyLength,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisioningState': provisioningState,
      'sharedKey': ?sharedKey,
      'sharedKeyLength': ?sharedKeyLength,
    };
  }

  factory SharedKeyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SharedKeyPropertiesResponse(
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      sharedKey: (() { final guardedValue = map['sharedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharedKeyLength: (() { final guardedValue = map['sharedKeyLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

