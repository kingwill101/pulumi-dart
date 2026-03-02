// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_web_application_firewall_status_attack_signatures_package.dart';
import 'deployment_web_application_firewall_status_bot_signatures_package.dart';
import 'deployment_web_application_firewall_status_component_version.dart';
import 'deployment_web_application_firewall_status_threat_campaigns_package.dart';

class DeploymentWebApplicationFirewallStatus {
  /// One or more `attack_signatures_package` blocks as defined below.
  final pulumi.Input<List<DeploymentWebApplicationFirewallStatusAttackSignaturesPackage>>? attackSignaturesPackages;
  /// One or more `bot_signatures_package` blocks as defined below.
  final pulumi.Input<List<DeploymentWebApplicationFirewallStatusBotSignaturesPackage>>? botSignaturesPackages;
  /// One or more `component_versions` blocks as defined below.
  final pulumi.Input<List<DeploymentWebApplicationFirewallStatusComponentVersion>>? componentVersions;
  /// One or more `threat_campaigns_package` blocks as defined below.
  final pulumi.Input<List<DeploymentWebApplicationFirewallStatusThreatCampaignsPackage>>? threatCampaignsPackages;

  /// Creates a new [DeploymentWebApplicationFirewallStatus].
  /// [attackSignaturesPackages] One or more `attack_signatures_package` blocks as defined below.
  /// [botSignaturesPackages] One or more `bot_signatures_package` blocks as defined below.
  /// [componentVersions] One or more `component_versions` blocks as defined below.
  /// [threatCampaignsPackages] One or more `threat_campaigns_package` blocks as defined below.
  DeploymentWebApplicationFirewallStatus({
    this.attackSignaturesPackages,
    this.botSignaturesPackages,
    this.componentVersions,
    this.threatCampaignsPackages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attackSignaturesPackages': ?pulumi.Input.mapOptionalInputValue<List<DeploymentWebApplicationFirewallStatusAttackSignaturesPackage>, List<Map<String, dynamic>>>(attackSignaturesPackages, (value) => pulumi.Input.encodeList<DeploymentWebApplicationFirewallStatusAttackSignaturesPackage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'botSignaturesPackages': ?pulumi.Input.mapOptionalInputValue<List<DeploymentWebApplicationFirewallStatusBotSignaturesPackage>, List<Map<String, dynamic>>>(botSignaturesPackages, (value) => pulumi.Input.encodeList<DeploymentWebApplicationFirewallStatusBotSignaturesPackage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'componentVersions': ?pulumi.Input.mapOptionalInputValue<List<DeploymentWebApplicationFirewallStatusComponentVersion>, List<Map<String, dynamic>>>(componentVersions, (value) => pulumi.Input.encodeList<DeploymentWebApplicationFirewallStatusComponentVersion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'threatCampaignsPackages': ?pulumi.Input.mapOptionalInputValue<List<DeploymentWebApplicationFirewallStatusThreatCampaignsPackage>, List<Map<String, dynamic>>>(threatCampaignsPackages, (value) => pulumi.Input.encodeList<DeploymentWebApplicationFirewallStatusThreatCampaignsPackage, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DeploymentWebApplicationFirewallStatus.fromMap(Map<String, dynamic> map) {
    return DeploymentWebApplicationFirewallStatus(
      attackSignaturesPackages: map['attackSignaturesPackages'] == null ? null : (pulumi.Input.decodeList<DeploymentWebApplicationFirewallStatusAttackSignaturesPackage>(map['attackSignaturesPackages'], (value) => DeploymentWebApplicationFirewallStatusAttackSignaturesPackage.fromMap((value as Map).cast<String, dynamic>()))).input(),
      botSignaturesPackages: map['botSignaturesPackages'] == null ? null : (pulumi.Input.decodeList<DeploymentWebApplicationFirewallStatusBotSignaturesPackage>(map['botSignaturesPackages'], (value) => DeploymentWebApplicationFirewallStatusBotSignaturesPackage.fromMap((value as Map).cast<String, dynamic>()))).input(),
      componentVersions: map['componentVersions'] == null ? null : (pulumi.Input.decodeList<DeploymentWebApplicationFirewallStatusComponentVersion>(map['componentVersions'], (value) => DeploymentWebApplicationFirewallStatusComponentVersion.fromMap((value as Map).cast<String, dynamic>()))).input(),
      threatCampaignsPackages: map['threatCampaignsPackages'] == null ? null : (pulumi.Input.decodeList<DeploymentWebApplicationFirewallStatusThreatCampaignsPackage>(map['threatCampaignsPackages'], (value) => DeploymentWebApplicationFirewallStatusThreatCampaignsPackage.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

