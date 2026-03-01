// ignore_for_file: unused_element, unnecessary_cast


class GroupExposedPort {
  /// The port number the container will expose. Changing this forces a new resource to be created.
  final int? port;
  /// The network protocol associated with port. Possible values are `TCP` & `UDP`. Changing this forces a new resource to be created. Defaults to `TCP`.
  ///
  /// > **Note:** Removing all `exposed_port` blocks requires setting `exposed_port = []`.
  final String? protocol;

  /// Creates a new [GroupExposedPort].
  /// [port] The port number the container will expose. Changing this forces a new resource to be created.
  /// [protocol] The network protocol associated with port. Possible values are `TCP` & `UDP`. Changing this forces a new resource to be created. Defaults to `TCP`.
  GroupExposedPort({
    this.port,
    this.protocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'port': ?port,
      'protocol': ?protocol,
    };
  }

  factory GroupExposedPort.fromMap(Map<String, dynamic> map) {
    return GroupExposedPort(
      port: map['port'] == null ? null : map['port'] as int,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
    );
  }
}

