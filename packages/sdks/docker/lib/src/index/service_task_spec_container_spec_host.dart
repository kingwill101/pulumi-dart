// ignore_for_file: unused_element, unnecessary_cast


class ServiceTaskSpecContainerSpecHost {
  /// The name of the host
  final String host;
  /// The ip of the host
  final String ip;

  /// Creates a new [ServiceTaskSpecContainerSpecHost].
  /// [host] The name of the host
  /// [ip] The ip of the host
  ServiceTaskSpecContainerSpecHost({
    required this.host,
    required this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
      'ip': ip,
    };
  }

  factory ServiceTaskSpecContainerSpecHost.fromMap(Map<String, dynamic> map) {
    return ServiceTaskSpecContainerSpecHost(
      host: map['host'] as String,
      ip: map['ip'] as String,
    );
  }
}

