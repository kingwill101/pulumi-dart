// ignore_for_file: unused_element, unnecessary_cast


class GetRegionInstanceGroupInstanceNamedPort {
  /// The name of the instance group.  One of `name` or `self_link` must be provided.
  final String name;
  /// Integer port number
  final int port;

  /// Creates a new [GetRegionInstanceGroupInstanceNamedPort].
  /// [name] The name of the instance group.  One of `name` or `self_link` must be provided.
  /// [port] Integer port number
  GetRegionInstanceGroupInstanceNamedPort({
    required this.name,
    required this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'port': port,
    };
  }

  factory GetRegionInstanceGroupInstanceNamedPort.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceGroupInstanceNamedPort(
      name: map['name'] as String,
      port: map['port'] as int,
    );
  }
}

