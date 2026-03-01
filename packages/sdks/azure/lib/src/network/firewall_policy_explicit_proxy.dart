// ignore_for_file: unused_element, unnecessary_cast


class FirewallPolicyExplicitProxy {
  /// Whether the pac file port and url need to be provided.
  final bool? enablePacFile;
  /// Whether the explicit proxy is enabled for this Firewall Policy.
  final bool? enabled;
  /// The port number for explicit http protocol.
  final int? httpPort;
  /// The port number for explicit proxy https protocol.
  final int? httpsPort;
  /// Specifies a SAS URL for PAC file.
  final String? pacFile;
  /// Specifies a port number for firewall to serve PAC file.
  final int? pacFilePort;

  /// Creates a new [FirewallPolicyExplicitProxy].
  /// [enablePacFile] Whether the pac file port and url need to be provided.
  /// [enabled] Whether the explicit proxy is enabled for this Firewall Policy.
  /// [httpPort] The port number for explicit http protocol.
  /// [httpsPort] The port number for explicit proxy https protocol.
  /// [pacFile] Specifies a SAS URL for PAC file.
  /// [pacFilePort] Specifies a port number for firewall to serve PAC file.
  FirewallPolicyExplicitProxy({
    this.enablePacFile,
    this.enabled,
    this.httpPort,
    this.httpsPort,
    this.pacFile,
    this.pacFilePort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enablePacFile': ?enablePacFile,
      'enabled': ?enabled,
      'httpPort': ?httpPort,
      'httpsPort': ?httpsPort,
      'pacFile': ?pacFile,
      'pacFilePort': ?pacFilePort,
    };
  }

  factory FirewallPolicyExplicitProxy.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyExplicitProxy(
      enablePacFile: map['enablePacFile'] == null ? null : map['enablePacFile'] as bool,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      httpPort: map['httpPort'] == null ? null : map['httpPort'] as int,
      httpsPort: map['httpsPort'] == null ? null : map['httpsPort'] as int,
      pacFile: map['pacFile'] == null ? null : map['pacFile'] as String,
      pacFilePort: map['pacFilePort'] == null ? null : map['pacFilePort'] as int,
    );
  }
}

