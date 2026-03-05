// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentWebApplicationFirewallStatusComponentVersion {
  /// The version of the WAF Engine.
  final pulumi.Input<String>? wafEngineVersion;
  /// The version of the WAF Nginx module.
  final pulumi.Input<String>? wafNginxVersion;

  /// Creates a new [DeploymentWebApplicationFirewallStatusComponentVersion].
  /// [wafEngineVersion] The version of the WAF Engine.
  /// [wafNginxVersion] The version of the WAF Nginx module.
  DeploymentWebApplicationFirewallStatusComponentVersion({
    this.wafEngineVersion,
    this.wafNginxVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'wafEngineVersion': ?wafEngineVersion,
      'wafNginxVersion': ?wafNginxVersion,
    };
  }

  factory DeploymentWebApplicationFirewallStatusComponentVersion.fromMap(Map<String, dynamic> map) {
    return DeploymentWebApplicationFirewallStatusComponentVersion(
      wafEngineVersion: (() { final guardedValue = map['wafEngineVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      wafNginxVersion: (() { final guardedValue = map['wafNginxVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

