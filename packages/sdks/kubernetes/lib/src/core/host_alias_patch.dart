// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HostAlias holds the mapping between IP and hostnames that will be injected as an entry in the pod's hosts file.
class HostAliasPatch {
  /// Hostnames for the above IP address.
  final pulumi.Input<List<String>?>? hostnames;
  /// IP address of the host file entry.
  final pulumi.Input<String?>? ip;

  /// Creates a new [HostAliasPatch].
  /// [hostnames] Hostnames for the above IP address.
  /// [ip] IP address of the host file entry.
  const HostAliasPatch({
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
      hostnames: (() { final guardedValue = map['hostnames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ip: (() { final guardedValue = map['ip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
