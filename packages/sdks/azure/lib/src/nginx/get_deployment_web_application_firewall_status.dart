// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_deployment_web_application_firewall_status_attack_signatures_package.dart';
import 'get_deployment_web_application_firewall_status_bot_signatures_package.dart';
import 'get_deployment_web_application_firewall_status_component_version.dart';
import 'get_deployment_web_application_firewall_status_threat_campaigns_package.dart';

class GetDeploymentWebApplicationFirewallStatus {
  /// Indicates the version of the attack signatures package used by NGINX App Protect.
  final pulumi.Input<List<GetDeploymentWebApplicationFirewallStatusAttackSignaturesPackage>> attackSignaturesPackages;
  /// Indicates the version of the bot signatures package used by NGINX App Protect.
  final pulumi.Input<List<GetDeploymentWebApplicationFirewallStatusBotSignaturesPackage>> botSignaturesPackages;
  /// Indicates the version of the WAF Engine and Nginx WAF Module used by NGINX App Protect.
  final pulumi.Input<List<GetDeploymentWebApplicationFirewallStatusComponentVersion>> componentVersions;
  /// Indicates the version of the threat campaigns package used by NGINX App Protect.
  final pulumi.Input<List<GetDeploymentWebApplicationFirewallStatusThreatCampaignsPackage>> threatCampaignsPackages;

  /// Creates a new [GetDeploymentWebApplicationFirewallStatus].
  /// [attackSignaturesPackages] Indicates the version of the attack signatures package used by NGINX App Protect.
  /// [botSignaturesPackages] Indicates the version of the bot signatures package used by NGINX App Protect.
  /// [componentVersions] Indicates the version of the WAF Engine and Nginx WAF Module used by NGINX App Protect.
  /// [threatCampaignsPackages] Indicates the version of the threat campaigns package used by NGINX App Protect.
  GetDeploymentWebApplicationFirewallStatus({
    required this.attackSignaturesPackages,
    required this.botSignaturesPackages,
    required this.componentVersions,
    required this.threatCampaignsPackages,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attackSignaturesPackages': pulumi.Input.mapInputValue<List<GetDeploymentWebApplicationFirewallStatusAttackSignaturesPackage>, List<Map<String, dynamic>>>(attackSignaturesPackages, (value) => pulumi.Input.encodeList<GetDeploymentWebApplicationFirewallStatusAttackSignaturesPackage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'botSignaturesPackages': pulumi.Input.mapInputValue<List<GetDeploymentWebApplicationFirewallStatusBotSignaturesPackage>, List<Map<String, dynamic>>>(botSignaturesPackages, (value) => pulumi.Input.encodeList<GetDeploymentWebApplicationFirewallStatusBotSignaturesPackage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'componentVersions': pulumi.Input.mapInputValue<List<GetDeploymentWebApplicationFirewallStatusComponentVersion>, List<Map<String, dynamic>>>(componentVersions, (value) => pulumi.Input.encodeList<GetDeploymentWebApplicationFirewallStatusComponentVersion, Map<String, dynamic>>(value, (value) => value.toMap())),
      'threatCampaignsPackages': pulumi.Input.mapInputValue<List<GetDeploymentWebApplicationFirewallStatusThreatCampaignsPackage>, List<Map<String, dynamic>>>(threatCampaignsPackages, (value) => pulumi.Input.encodeList<GetDeploymentWebApplicationFirewallStatusThreatCampaignsPackage, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDeploymentWebApplicationFirewallStatus.fromMap(Map<String, dynamic> map) {
    return GetDeploymentWebApplicationFirewallStatus(
      attackSignaturesPackages: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDeploymentWebApplicationFirewallStatusAttackSignaturesPackage>(map['attackSignaturesPackages']!, (value) => GetDeploymentWebApplicationFirewallStatusAttackSignaturesPackage.fromMap((value as Map).cast<String, dynamic>()))),
      botSignaturesPackages: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDeploymentWebApplicationFirewallStatusBotSignaturesPackage>(map['botSignaturesPackages']!, (value) => GetDeploymentWebApplicationFirewallStatusBotSignaturesPackage.fromMap((value as Map).cast<String, dynamic>()))),
      componentVersions: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDeploymentWebApplicationFirewallStatusComponentVersion>(map['componentVersions']!, (value) => GetDeploymentWebApplicationFirewallStatusComponentVersion.fromMap((value as Map).cast<String, dynamic>()))),
      threatCampaignsPackages: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDeploymentWebApplicationFirewallStatusThreatCampaignsPackage>(map['threatCampaignsPackages']!, (value) => GetDeploymentWebApplicationFirewallStatusThreatCampaignsPackage.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

