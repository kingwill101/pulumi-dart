// ignore_for_file: unused_element, unnecessary_cast


class DeploymentWebApplicationFirewallStatusThreatCampaignsPackage {
  /// The revision date and time of the threat campaigns package.
  final String? revisionDatetime;
  /// The version of the threat campaigns package.
  final String? version;

  /// Creates a new [DeploymentWebApplicationFirewallStatusThreatCampaignsPackage].
  /// [revisionDatetime] The revision date and time of the threat campaigns package.
  /// [version] The version of the threat campaigns package.
  DeploymentWebApplicationFirewallStatusThreatCampaignsPackage({
    this.revisionDatetime,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'revisionDatetime': ?revisionDatetime,
      'version': ?version,
    };
  }

  factory DeploymentWebApplicationFirewallStatusThreatCampaignsPackage.fromMap(Map<String, dynamic> map) {
    return DeploymentWebApplicationFirewallStatusThreatCampaignsPackage(
      revisionDatetime: map['revisionDatetime'] == null ? null : map['revisionDatetime'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

