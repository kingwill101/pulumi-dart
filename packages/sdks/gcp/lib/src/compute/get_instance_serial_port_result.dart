// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getInstanceSerialPort.
class GetInstanceSerialPortResult {
  /// The output of the serial port. Serial port output is available only when the VM instance is running, and logs are limited to the most recent 1 MB of output per port.
  final String contents;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String instance;
  final int port;
  final String project;
  final String zone;

  /// Creates a new [GetInstanceSerialPortResult].
  /// [contents] The output of the serial port. Serial port output is available only when the VM instance is running, and logs are limited to the most recent 1 MB of output per port.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [instance] Required.
  /// [port] Required.
  /// [project] Required.
  /// [zone] Required.
  const GetInstanceSerialPortResult({
    required this.contents,
    required this.id,
    required this.instance,
    required this.port,
    required this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contents': contents,
      'id': id,
      'instance': instance,
      'port': port,
      'project': project,
      'zone': zone,
    };
  }

  factory GetInstanceSerialPortResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceSerialPortResult(
      contents: map['contents'] as String,
      id: map['id'] as String,
      instance: map['instance'] as String,
      port: map['port'] as int,
      project: map['project'] as String,
      zone: map['zone'] as String,
    );
  }
}

