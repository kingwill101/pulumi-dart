// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ase_v3_networking_configuration_response.dart';
import 'custom_dns_suffix_configuration_response.dart';
import 'name_value_pair_response.dart';
import 'virtual_network_profile_response.dart';

/// Result data returned by getAppServiceEnvironment.
class GetAppServiceEnvironmentResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
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
  final bool hasLinuxWorkers;
  /// Resource Id.
  final String id;
  /// Specifies which endpoints to serve internally in the Virtual Network for the App Service Environment.
  final String? internalLoadBalancingMode;
  /// Number of IP SSL addresses reserved for the App Service Environment.
  final int? ipsslAddressCount;
  /// Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  final String? kind;
  /// Resource Location.
  final String location;
  /// Maximum number of VMs in the App Service Environment.
  final int maximumNumberOfMachines;
  /// Number of front-end instances.
  final int multiRoleCount;
  /// Front-end VM size, e.g. "Medium", "Large".
  final String? multiSize;
  /// Resource Name.
  final String name;
  /// Full view of networking configuration for an ASE.
  final AseV3NetworkingConfigurationResponse? networkingConfiguration;
  /// Provisioning state of the App Service Environment.
  final String provisioningState;
  /// Current status of the App Service Environment.
  final String status;
  /// <code>true</code> if the App Service Environment is suspended; otherwise, <code>false</code>. The environment can be suspended, e.g. when the management endpoint is no longer available
  /// (most likely because NSG blocked the incoming traffic).
  final bool suspended;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String type;
  /// Whether an upgrade is available for this App Service Environment.
  final String upgradeAvailability;
  /// Upgrade Preference
  final String? upgradePreference;
  /// User added ip ranges to whitelist on ASE db
  final List<String>? userWhitelistedIpRanges;
  /// Description of the Virtual Network.
  final VirtualNetworkProfileResponse virtualNetwork;
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
  /// [id] Resource Id.
  /// [internalLoadBalancingMode] Specifies which endpoints to serve internally in the Virtual Network for the App Service Environment.
  /// [ipsslAddressCount] Number of IP SSL addresses reserved for the App Service Environment.
  /// [kind] Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  /// [location] Resource Location.
  /// [maximumNumberOfMachines] Maximum number of VMs in the App Service Environment.
  /// [multiRoleCount] Number of front-end instances.
  /// [multiSize] Front-end VM size, e.g. "Medium", "Large".
  /// [name] Resource Name.
  /// [networkingConfiguration] Full view of networking configuration for an ASE.
  /// [provisioningState] Provisioning state of the App Service Environment.
  /// [status] Current status of the App Service Environment.
  /// [suspended] <code>true</code> if the App Service Environment is suspended; otherwise, <code>false</code>. The environment can be suspended, e.g. when the management endpoint is no longer available
  /// [tags] Resource tags.
  /// [type] Resource type.
  /// [upgradeAvailability] Whether an upgrade is available for this App Service Environment.
  /// [upgradePreference] Upgrade Preference
  /// [userWhitelistedIpRanges] User added ip ranges to whitelist on ASE db
  /// [virtualNetwork] Description of the Virtual Network.
  /// [zoneRedundant] Whether or not this App Service Environment is zone-redundant.
  GetAppServiceEnvironmentResult({
    required this.azureApiVersion,
    this.clusterSettings,
    this.customDnsSuffixConfiguration,
    this.dedicatedHostCount,
    this.dnsSuffix,
    this.frontEndScaleFactor,
    required this.hasLinuxWorkers,
    required this.id,
    this.internalLoadBalancingMode,
    this.ipsslAddressCount,
    this.kind,
    required this.location,
    required this.maximumNumberOfMachines,
    required this.multiRoleCount,
    this.multiSize,
    required this.name,
    this.networkingConfiguration,
    required this.provisioningState,
    required this.status,
    required this.suspended,
    this.tags,
    required this.type,
    required this.upgradeAvailability,
    this.upgradePreference,
    this.userWhitelistedIpRanges,
    required this.virtualNetwork,
    this.zoneRedundant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'clusterSettings': ?clusterSettings == null ? null : pulumi.Input.encodeList<NameValuePairResponse, Map<String, dynamic>>(clusterSettings!, (value) => value.toMap()),
      'customDnsSuffixConfiguration': ?customDnsSuffixConfiguration == null ? null : customDnsSuffixConfiguration!.toMap(),
      'dedicatedHostCount': ?dedicatedHostCount,
      'dnsSuffix': ?dnsSuffix,
      'frontEndScaleFactor': ?frontEndScaleFactor,
      'hasLinuxWorkers': hasLinuxWorkers,
      'id': id,
      'internalLoadBalancingMode': ?internalLoadBalancingMode,
      'ipsslAddressCount': ?ipsslAddressCount,
      'kind': ?kind,
      'location': location,
      'maximumNumberOfMachines': maximumNumberOfMachines,
      'multiRoleCount': multiRoleCount,
      'multiSize': ?multiSize,
      'name': name,
      'networkingConfiguration': ?networkingConfiguration == null ? null : networkingConfiguration!.toMap(),
      'provisioningState': provisioningState,
      'status': status,
      'suspended': suspended,
      'tags': ?tags,
      'type': type,
      'upgradeAvailability': upgradeAvailability,
      'upgradePreference': ?upgradePreference,
      'userWhitelistedIpRanges': ?userWhitelistedIpRanges,
      'virtualNetwork': virtualNetwork.toMap(),
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory GetAppServiceEnvironmentResult.fromMap(Map<String, dynamic> map) {
    return GetAppServiceEnvironmentResult(
      azureApiVersion: map['azureApiVersion'] as String,
      clusterSettings: map['clusterSettings'] == null ? null : pulumi.Input.decodeList<NameValuePairResponse>(map['clusterSettings']!, (value) => NameValuePairResponse.fromMap((value as Map).cast<String, dynamic>())),
      customDnsSuffixConfiguration: map['customDnsSuffixConfiguration'] == null ? null : CustomDnsSuffixConfigurationResponse.fromMap((map['customDnsSuffixConfiguration']! as Map).cast<String, dynamic>()),
      dedicatedHostCount: map['dedicatedHostCount'] == null ? null : map['dedicatedHostCount']! as int,
      dnsSuffix: map['dnsSuffix'] == null ? null : map['dnsSuffix']! as String,
      frontEndScaleFactor: map['frontEndScaleFactor'] == null ? null : map['frontEndScaleFactor']! as int,
      hasLinuxWorkers: map['hasLinuxWorkers'] as bool,
      id: map['id'] as String,
      internalLoadBalancingMode: map['internalLoadBalancingMode'] == null ? null : map['internalLoadBalancingMode']! as String,
      ipsslAddressCount: map['ipsslAddressCount'] == null ? null : map['ipsslAddressCount']! as int,
      kind: map['kind'] == null ? null : map['kind']! as String,
      location: map['location'] as String,
      maximumNumberOfMachines: map['maximumNumberOfMachines'] as int,
      multiRoleCount: map['multiRoleCount'] as int,
      multiSize: map['multiSize'] == null ? null : map['multiSize']! as String,
      name: map['name'] as String,
      networkingConfiguration: map['networkingConfiguration'] == null ? null : AseV3NetworkingConfigurationResponse.fromMap((map['networkingConfiguration']! as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] as String,
      status: map['status'] as String,
      suspended: map['suspended'] as bool,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      upgradeAvailability: map['upgradeAvailability'] as String,
      upgradePreference: map['upgradePreference'] == null ? null : map['upgradePreference']! as String,
      userWhitelistedIpRanges: map['userWhitelistedIpRanges'] == null ? null : (map['userWhitelistedIpRanges']! as List).cast<String>(),
      virtualNetwork: VirtualNetworkProfileResponse.fromMap((map['virtualNetwork'] as Map).cast<String, dynamic>()),
      zoneRedundant: map['zoneRedundant'] == null ? null : map['zoneRedundant']! as bool,
    );
  }
}

