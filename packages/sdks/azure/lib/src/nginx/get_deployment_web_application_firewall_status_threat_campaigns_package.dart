// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDeploymentWebApplicationFirewallStatusThreatCampaignsPackage {
  final pulumi.Input<String> revisionDatetime;
  final pulumi.Input<String> version;

  /// Creates a new [GetDeploymentWebApplicationFirewallStatusThreatCampaignsPackage].
  /// [revisionDatetime] Required.
  /// [version] Required.
  const GetDeploymentWebApplicationFirewallStatusThreatCampaignsPackage({
    required this.revisionDatetime,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'revisionDatetime': revisionDatetime,
      'version': version,
    };
  }

  factory GetDeploymentWebApplicationFirewallStatusThreatCampaignsPackage.fromMap(Map<String, dynamic> map) {
    return GetDeploymentWebApplicationFirewallStatusThreatCampaignsPackage(
      revisionDatetime: pulumi.Input.fromValue(map['revisionDatetime'] as String),
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}

