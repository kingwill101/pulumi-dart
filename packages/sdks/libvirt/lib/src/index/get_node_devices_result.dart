// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getNodeDevices.
class GetNodeDevicesResult {
  final String? capability;
  final List<String> devices;
  final String id;

  /// Creates a new [GetNodeDevicesResult].
  /// [capability] Optional.
  /// [devices] Required.
  /// [id] Required.
  GetNodeDevicesResult({
    this.capability,
    required this.devices,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capability': ?capability,
      'devices': devices,
      'id': id,
    };
  }

  factory GetNodeDevicesResult.fromMap(Map<String, dynamic> map) {
    return GetNodeDevicesResult(
      capability: (() {
        final guardedValue = map['capability'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      devices: (map['devices'] as List).cast<String>(),
      id: map['id'] as String,
    );
  }
}
