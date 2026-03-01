// ignore_for_file: unused_element, unnecessary_cast


/// Parameters for SharedKey.
class SharedKeyPropertiesResponse {
  /// The provisioning state of the SharedKey resource.
  final String provisioningState;
  /// The value of the shared key for the vpn link connection.
  final String? sharedKey;
  /// The length of the shared key for the vpn link connection.
  final int? sharedKeyLength;

  /// Creates a new [SharedKeyPropertiesResponse].
  /// [provisioningState] The provisioning state of the SharedKey resource.
  /// [sharedKey] The value of the shared key for the vpn link connection.
  /// [sharedKeyLength] The length of the shared key for the vpn link connection.
  SharedKeyPropertiesResponse({
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
      provisioningState: map['provisioningState'] as String,
      sharedKey: map['sharedKey'] == null ? null : map['sharedKey'] as String,
      sharedKeyLength: map['sharedKeyLength'] == null ? null : map['sharedKeyLength'] as int,
    );
  }
}

