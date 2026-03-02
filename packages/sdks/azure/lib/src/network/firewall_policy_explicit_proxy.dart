// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallPolicyExplicitProxy {
  /// Whether the pac file port and url need to be provided.
  final pulumi.Input<bool>? enablePacFile;
  /// Whether the explicit proxy is enabled for this Firewall Policy.
  final pulumi.Input<bool>? enabled;
  /// The port number for explicit http protocol.
  final pulumi.Input<int>? httpPort;
  /// The port number for explicit proxy https protocol.
  final pulumi.Input<int>? httpsPort;
  /// Specifies a SAS URL for PAC file.
  final pulumi.Input<String>? pacFile;
  /// Specifies a port number for firewall to serve PAC file.
  final pulumi.Input<int>? pacFilePort;

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
      enablePacFile: map['enablePacFile'] == null ? null : (map['enablePacFile'] as bool).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      httpPort: map['httpPort'] == null ? null : (map['httpPort'] as int).input(),
      httpsPort: map['httpsPort'] == null ? null : (map['httpsPort'] as int).input(),
      pacFile: map['pacFile'] == null ? null : (map['pacFile'] as String).input(),
      pacFilePort: map['pacFilePort'] == null ? null : (map['pacFilePort'] as int).input(),
    );
  }
}

