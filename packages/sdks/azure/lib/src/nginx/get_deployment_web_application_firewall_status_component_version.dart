// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDeploymentWebApplicationFirewallStatusComponentVersion {
  final pulumi.Input<String> wafEngineVersion;
  final pulumi.Input<String> wafNginxVersion;

  /// Creates a new [GetDeploymentWebApplicationFirewallStatusComponentVersion].
  /// [wafEngineVersion] Required.
  /// [wafNginxVersion] Required.
  const GetDeploymentWebApplicationFirewallStatusComponentVersion({
    required this.wafEngineVersion,
    required this.wafNginxVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'wafEngineVersion': wafEngineVersion,
      'wafNginxVersion': wafNginxVersion,
    };
  }

  factory GetDeploymentWebApplicationFirewallStatusComponentVersion.fromMap(Map<String, dynamic> map) {
    return GetDeploymentWebApplicationFirewallStatusComponentVersion(
      wafEngineVersion: pulumi.Input.fromValue(map['wafEngineVersion'] as String),
      wafNginxVersion: pulumi.Input.fromValue(map['wafNginxVersion'] as String),
    );
  }
}

