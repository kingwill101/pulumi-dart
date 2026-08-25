// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getInstanceSerialPort.
class GetInstanceSerialPortResult {
  /// The output of the serial port. Serial port output is available only when the VM instance is running, and logs are limited to the most recent 1 MB of output per port.
  final String? contents;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? instance;
  final int? port;
  final String? project;
  final String? zone;

  /// Creates a new [GetInstanceSerialPortResult].
  /// [contents] The output of the serial port. Serial port output is available only when the VM instance is running, and logs are limited to the most recent 1 MB of output per port.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instance] Optional.
  /// [port] Optional.
  /// [project] Optional.
  /// [zone] Optional.
  const GetInstanceSerialPortResult({
    this.contents,
    this.id,
    this.instance,
    this.port,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contents': ?contents,
      'id': ?id,
      'instance': ?instance,
      'port': ?port,
      'project': ?project,
      'zone': ?zone,
    };
  }

  factory GetInstanceSerialPortResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceSerialPortResult(
      contents: (() { final guardedValue = map['contents']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return guardedValue as String; })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
