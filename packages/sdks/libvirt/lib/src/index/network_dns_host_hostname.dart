// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NetworkDnsHostHostname {
  /// Sets the value of each hostname in the DNS configuration, allowing for individual identification.
  final pulumi.Input<String> hostname;

  /// Creates a new [NetworkDnsHostHostname].
  /// [hostname] Sets the value of each hostname in the DNS configuration, allowing for individual identification.
  NetworkDnsHostHostname({
    required this.hostname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': hostname,
    };
  }

  factory NetworkDnsHostHostname.fromMap(Map<String, dynamic> map) {
    return NetworkDnsHostHostname(
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
    );
  }
}

