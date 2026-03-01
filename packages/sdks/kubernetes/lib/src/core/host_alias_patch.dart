// ignore_for_file: unused_element, unnecessary_cast


/// HostAlias holds the mapping between IP and hostnames that will be injected as an entry in the pod's hosts file.
class HostAliasPatch {
  /// Hostnames for the above IP address.
  final List<String>? hostnames;
  /// IP address of the host file entry.
  final String? ip;

  /// Creates a new [HostAliasPatch].
  /// [hostnames] Hostnames for the above IP address.
  /// [ip] IP address of the host file entry.
  HostAliasPatch({
    this.hostnames,
    this.ip,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostnames': ?hostnames,
      'ip': ?ip,
    };
  }

  factory HostAliasPatch.fromMap(Map<String, dynamic> map) {
    return HostAliasPatch(
      hostnames: map['hostnames'] == null ? null : (map['hostnames'] as List).cast<String>(),
      ip: map['ip'] == null ? null : map['ip'] as String,
    );
  }
}

