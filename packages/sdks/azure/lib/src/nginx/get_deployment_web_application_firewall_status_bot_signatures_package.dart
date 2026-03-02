// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDeploymentWebApplicationFirewallStatusBotSignaturesPackage {
  final pulumi.Input<String> revisionDatetime;
  final pulumi.Input<String> version;

  /// Creates a new [GetDeploymentWebApplicationFirewallStatusBotSignaturesPackage].
  /// [revisionDatetime] Required.
  /// [version] Required.
  GetDeploymentWebApplicationFirewallStatusBotSignaturesPackage({
    required this.revisionDatetime,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'revisionDatetime': revisionDatetime,
      'version': version,
    };
  }

  factory GetDeploymentWebApplicationFirewallStatusBotSignaturesPackage.fromMap(Map<String, dynamic> map) {
    return GetDeploymentWebApplicationFirewallStatusBotSignaturesPackage(
      revisionDatetime: (map['revisionDatetime'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

