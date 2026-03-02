// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDeploymentWebApplicationFirewallStatusThreatCampaignsPackage {
  final pulumi.Input<String> revisionDatetime;
  final pulumi.Input<String> version;

  /// Creates a new [GetDeploymentWebApplicationFirewallStatusThreatCampaignsPackage].
  /// [revisionDatetime] Required.
  /// [version] Required.
  GetDeploymentWebApplicationFirewallStatusThreatCampaignsPackage({
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
      revisionDatetime: (map['revisionDatetime'] as String).input(),
      version: (map['version'] as String).input(),
    );
  }
}

