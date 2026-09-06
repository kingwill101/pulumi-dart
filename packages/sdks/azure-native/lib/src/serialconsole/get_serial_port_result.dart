// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSerialPort.
class GetSerialPortResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource Id
  final String? id;
  /// Resource name
  final String? name;
  /// Specifies whether the port is enabled for a serial console connection.
  final String? state;
  /// Resource type
  final String? type;

  /// Creates a new [GetSerialPortResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource Id
  /// [name] Resource name
  /// [state] Specifies whether the port is enabled for a serial console connection.
  /// [type] Resource type
  const GetSerialPortResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.state,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'state': ?state,
      'type': ?type,
    };
  }

  factory GetSerialPortResult.fromMap(Map<String, dynamic> map) {
    return GetSerialPortResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
