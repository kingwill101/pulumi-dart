// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentWebApplicationFirewallStatusBotSignaturesPackage {
  /// The revision date and time of the threat campaigns package.
  final pulumi.Input<String>? revisionDatetime;
  /// The version of the threat campaigns package.
  final pulumi.Input<String>? version;

  /// Creates a new [DeploymentWebApplicationFirewallStatusBotSignaturesPackage].
  /// [revisionDatetime] The revision date and time of the threat campaigns package.
  /// [version] The version of the threat campaigns package.
  const DeploymentWebApplicationFirewallStatusBotSignaturesPackage({
    this.revisionDatetime,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'revisionDatetime': ?revisionDatetime,
      'version': ?version,
    };
  }

  factory DeploymentWebApplicationFirewallStatusBotSignaturesPackage.fromMap(Map<String, dynamic> map) {
    return DeploymentWebApplicationFirewallStatusBotSignaturesPackage(
      revisionDatetime: (() { final guardedValue = map['revisionDatetime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
