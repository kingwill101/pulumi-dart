// ignore_for_file: unused_element, unnecessary_cast


class NetworkIpTftp {
  /// Defines the root directory for TFTP services provided by the network.
  final String? root;

  /// Creates a new [NetworkIpTftp].
  /// [root] Defines the root directory for TFTP services provided by the network.
  NetworkIpTftp({
    this.root,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'root': ?root,
    };
  }

  factory NetworkIpTftp.fromMap(Map<String, dynamic> map) {
    return NetworkIpTftp(
      root: map['root'] == null ? null : map['root'] as String,
    );
  }
}

