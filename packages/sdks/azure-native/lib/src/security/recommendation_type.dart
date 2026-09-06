import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of IoT Security recommendation.
enum RecommendationType implements pulumi.PulumiEnum<String> {
  ioTACRAuthentication("IoT_ACRAuthentication"),
  ioTAgentSendsUnutilizedMessages("IoT_AgentSendsUnutilizedMessages"),
  ioTBaseline("IoT_Baseline"),
  ioTEdgeHubMemOptimize("IoT_EdgeHubMemOptimize"),
  ioTEdgeLoggingOptions("IoT_EdgeLoggingOptions"),
  ioTInconsistentModuleSettings("IoT_InconsistentModuleSettings"),
  ioTInstallAgent("IoT_InstallAgent"),
  ioTIPFilterDenyAll("IoT_IPFilter_DenyAll"),
  ioTIPFilterPermissiveRule("IoT_IPFilter_PermissiveRule"),
  ioTOpenPorts("IoT_OpenPorts"),
  ioTPermissiveFirewallPolicy("IoT_PermissiveFirewallPolicy"),
  ioTPermissiveInputFirewallRules("IoT_PermissiveInputFirewallRules"),
  ioTPermissiveOutputFirewallRules("IoT_PermissiveOutputFirewallRules"),
  ioTPrivilegedDockerOptions("IoT_PrivilegedDockerOptions"),
  ioTSharedCredentials("IoT_SharedCredentials"),
  ioTVulnerableTLSCipherSuite("IoT_VulnerableTLSCipherSuite");

  const RecommendationType(this.wireValue);
  @override
  final String wireValue;

  static RecommendationType fromValue(String value) {
    for (final item in RecommendationType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown RecommendationType value: $value');
  }
}
