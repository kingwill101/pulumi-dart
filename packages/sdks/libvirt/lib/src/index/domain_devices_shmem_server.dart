// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesShmemServer {
  /// Specifies the path for the server related to the shared memory device.
  final String? path;

  /// Creates a new [DomainDevicesShmemServer].
  /// [path] Specifies the path for the server related to the shared memory device.
  DomainDevicesShmemServer({
    this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
    };
  }

  factory DomainDevicesShmemServer.fromMap(Map<String, dynamic> map) {
    return DomainDevicesShmemServer(
      path: map['path'] == null ? null : map['path'] as String,
    );
  }
}

