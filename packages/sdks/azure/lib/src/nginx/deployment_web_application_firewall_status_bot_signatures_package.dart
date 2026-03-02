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
  DeploymentWebApplicationFirewallStatusBotSignaturesPackage({
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
      revisionDatetime: map['revisionDatetime'] == null ? null : (map['revisionDatetime']! as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

