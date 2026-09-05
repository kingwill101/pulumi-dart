// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getNodeDevices.
class GetNodeDevicesResult {
  final String? capability;
  final List<String>? devices;
  final String? id;

  /// Creates a new [GetNodeDevicesResult].
  /// [capability] Optional.
  /// [devices] Optional.
  /// [id] Optional.
  const GetNodeDevicesResult({
    this.capability,
    this.devices,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capability': ?capability,
      'devices': ?devices,
      'id': ?id,
    };
  }

  factory GetNodeDevicesResult.fromMap(Map<String, dynamic> map) {
    return GetNodeDevicesResult(
      capability: (() { final guardedValue = map['capability']; if (guardedValue == null) return null; return guardedValue as String; })(),
      devices: (() { final guardedValue = map['devices']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
