// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ase_v3_networking_configuration_response.dart';
import 'custom_dns_suffix_configuration_response.dart';
import 'name_value_pair_response.dart';
import 'system_data_response.dart';
import 'virtual_network_profile_response.dart';

/// Result data returned by getAppServiceEnvironment.
class GetAppServiceEnvironmentResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Custom settings for changing the behavior of the App Service Environment.
  final List<NameValuePairResponse>? clusterSettings;
  /// Full view of the custom domain suffix configuration for ASEv3.
  final CustomDnsSuffixConfigurationResponse? customDnsSuffixConfiguration;
  /// Dedicated Host Count
  final int? dedicatedHostCount;
  /// DNS suffix of the App Service Environment.
  final String? dnsSuffix;
  /// Scale factor for front-ends.
  final int? frontEndScaleFactor;
  /// Flag that displays whether an ASE has linux workers or not
  final bool? hasLinuxWorkers;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Specifies which endpoints to serve internally in the Virtual Network for the App Service Environment.
  final String? internalLoadBalancingMode;
  /// Number of IP SSL addresses reserved for the App Service Environment.
  final int? ipsslAddressCount;
  /// Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  final String? kind;
  /// The geo-location where the resource lives
  final String? location;
  /// Maximum number of VMs in the App Service Environment.
  final int? maximumNumberOfMachines;
  /// Number of front-end instances.
  final int? multiRoleCount;
  /// Front-end VM size, e.g. "Medium", "Large".
  final String? multiSize;
  /// The name of the resource
  final String? name;
  /// Full view of networking configuration for an ASE.
  final AseV3NetworkingConfigurationResponse? networkingConfiguration;
  /// Provisioning state of the App Service Environment.
  final String? provisioningState;
  /// Current status of the App Service Environment.
  final String? status;
  /// &lt;code&gt;true&lt;/code&gt; if the App Service Environment is suspended; otherwise, &lt;code&gt;false&lt;/code&gt;. The environment can be suspended, e.g. when the management endpoint is no longer available
  /// (most likely because NSG blocked the incoming traffic).
  final bool? suspended;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Whether an upgrade is available for this App Service Environment.
  final String? upgradeAvailability;
  /// Upgrade Preference
  final String? upgradePreference;
  /// User added ip ranges to whitelist on ASE db
  final List<String>? userWhitelistedIpRanges;
  /// Description of the Virtual Network.
  final VirtualNetworkProfileResponse? virtualNetwork;
  /// Whether or not this App Service Environment is zone-redundant.
  final bool? zoneRedundant;

  /// Creates a new [GetAppServiceEnvironmentResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [clusterSettings] Custom settings for changing the behavior of the App Service Environment.
  /// [customDnsSuffixConfiguration] Full view of the custom domain suffix configuration for ASEv3.
  /// [dedicatedHostCount] Dedicated Host Count
  /// [dnsSuffix] DNS suffix of the App Service Environment.
  /// [frontEndScaleFactor] Scale factor for front-ends.
  /// [hasLinuxWorkers] Flag that displays whether an ASE has linux workers or not
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [internalLoadBalancingMode] Specifies which endpoints to serve internally in the Virtual Network for the App Service Environment.
  /// [ipsslAddressCount] Number of IP SSL addresses reserved for the App Service Environment.
  /// [kind] Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  /// [location] The geo-location where the resource lives
  /// [maximumNumberOfMachines] Maximum number of VMs in the App Service Environment.
  /// [multiRoleCount] Number of front-end instances.
  /// [multiSize] Front-end VM size, e.g. "Medium", "Large".
  /// [name] The name of the resource
  /// [networkingConfiguration] Full view of networking configuration for an ASE.
  /// [provisioningState] Provisioning state of the App Service Environment.
  /// [status] Current status of the App Service Environment.
  /// [suspended] &lt;code&gt;true&lt;/code&gt; if the App Service Environment is suspended; otherwise, &lt;code&gt;false&lt;/code&gt;. The environment can be suspended, e.g. when the management endpoint is no longer available
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [upgradeAvailability] Whether an upgrade is available for this App Service Environment.
  /// [upgradePreference] Upgrade Preference
  /// [userWhitelistedIpRanges] User added ip ranges to whitelist on ASE db
  /// [virtualNetwork] Description of the Virtual Network.
  /// [zoneRedundant] Whether or not this App Service Environment is zone-redundant.
  GetAppServiceEnvironmentResult({
    this.azureApiVersion,
    this.clusterSettings,
    this.customDnsSuffixConfiguration,
    this.dedicatedHostCount,
    this.dnsSuffix,
    this.frontEndScaleFactor,
    this.hasLinuxWorkers,
    this.id,
    this.internalLoadBalancingMode,
    this.ipsslAddressCount,
    this.kind,
    this.location,
    this.maximumNumberOfMachines,
    this.multiRoleCount,
    this.multiSize,
    this.name,
    this.networkingConfiguration,
    this.provisioningState,
    this.status,
    this.suspended,
    this.systemData,
    this.tags,
    this.type,
    this.upgradeAvailability,
    String? upgradePreference,
    this.userWhitelistedIpRanges,
    this.virtualNetwork,
    this.zoneRedundant,
  }) : upgradePreference = upgradePreference ?? 'None';

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'clusterSettings': ?(() { final guardedValue = clusterSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<NameValuePairResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'customDnsSuffixConfiguration': ?customDnsSuffixConfiguration?.toMap(),
      'dedicatedHostCount': ?dedicatedHostCount,
      'dnsSuffix': ?dnsSuffix,
      'frontEndScaleFactor': ?frontEndScaleFactor,
      'hasLinuxWorkers': ?hasLinuxWorkers,
      'id': ?id,
      'internalLoadBalancingMode': ?internalLoadBalancingMode,
      'ipsslAddressCount': ?ipsslAddressCount,
      'kind': ?kind,
      'location': ?location,
      'maximumNumberOfMachines': ?maximumNumberOfMachines,
      'multiRoleCount': ?multiRoleCount,
      'multiSize': ?multiSize,
      'name': ?name,
      'networkingConfiguration': ?networkingConfiguration?.toMap(),
      'provisioningState': ?provisioningState,
      'status': ?status,
      'suspended': ?suspended,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'upgradeAvailability': ?upgradeAvailability,
      'upgradePreference': ?upgradePreference,
      'userWhitelistedIpRanges': ?userWhitelistedIpRanges,
      'virtualNetwork': ?virtualNetwork?.toMap(),
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory GetAppServiceEnvironmentResult.fromMap(Map<String, dynamic> map) {
    return GetAppServiceEnvironmentResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterSettings: (() { final guardedValue = map['clusterSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<NameValuePairResponse>(guardedValue, (value) => NameValuePairResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      customDnsSuffixConfiguration: (() { final guardedValue = map['customDnsSuffixConfiguration']; if (guardedValue == null) return null; return CustomDnsSuffixConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      dedicatedHostCount: (() { final guardedValue = map['dedicatedHostCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      dnsSuffix: (() { final guardedValue = map['dnsSuffix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      frontEndScaleFactor: (() { final guardedValue = map['frontEndScaleFactor']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      hasLinuxWorkers: (() { final guardedValue = map['hasLinuxWorkers']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      internalLoadBalancingMode: (() { final guardedValue = map['internalLoadBalancingMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipsslAddressCount: (() { final guardedValue = map['ipsslAddressCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maximumNumberOfMachines: (() { final guardedValue = map['maximumNumberOfMachines']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      multiRoleCount: (() { final guardedValue = map['multiRoleCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      multiSize: (() { final guardedValue = map['multiSize']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkingConfiguration: (() { final guardedValue = map['networkingConfiguration']; if (guardedValue == null) return null; return AseV3NetworkingConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      suspended: (() { final guardedValue = map['suspended']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      upgradeAvailability: (() { final guardedValue = map['upgradeAvailability']; if (guardedValue == null) return null; return guardedValue as String; })(),
      upgradePreference: (() { final guardedValue = map['upgradePreference']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userWhitelistedIpRanges: (() { final guardedValue = map['userWhitelistedIpRanges']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      virtualNetwork: (() { final guardedValue = map['virtualNetwork']; if (guardedValue == null) return null; return VirtualNetworkProfileResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      zoneRedundant: (() { final guardedValue = map['zoneRedundant']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
