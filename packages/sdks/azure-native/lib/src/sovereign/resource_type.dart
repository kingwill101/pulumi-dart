import 'package:pulumi/pulumi.dart' as pulumi;

/// The type of the resource.
enum ResourceType implements pulumi.PulumiEnum<String> {
  azureFirewalls("azureFirewalls"),
  workspaces("workspaces"),
  automationAccounts("automationAccounts"),
  dashboards("dashboards"),
  userAssignedIdentities("userAssignedIdentities"),
  bastionHosts("bastionHosts"),
  ddosProtectionPlans("ddosProtectionPlans"),
  networkSecurityGroups("networkSecurityGroups"),
  virtualNetworks("virtualNetworks"),
  routeTables("routeTables");

  const ResourceType(this.wireValue);
  @override
  final String wireValue;

  static ResourceType fromValue(String value) {
    for (final item in ResourceType.values) {
      if (item.wireValue == value) {
        return item;
      }
    }
    throw ArgumentError('Unknown ResourceType value: $value');
  }
}
