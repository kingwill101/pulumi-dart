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
      enablePacFile: (() { final guardedValue = map['enablePacFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      httpPort: (() { final guardedValue = map['httpPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      httpsPort: (() { final guardedValue = map['httpsPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pacFile: (() { final guardedValue = map['pacFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pacFilePort: (() { final guardedValue = map['pacFilePort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

