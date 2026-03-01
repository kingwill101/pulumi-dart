// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ase_v3_networking_configuration.dart';
import 'custom_dns_suffix_configuration.dart';
import 'name_value_pair.dart';
import 'virtual_network_profile.dart';

/// {@template pulumi_web_app_service_environment_args_doc}
/// The set of arguments for AppServiceEnvironment.
/// {@endtemplate}
/// {@macro pulumi_web_app_service_environment_args_doc}
class AppServiceEnvironmentArgs {
  /// Custom settings for changing the behavior of the App Service Environment.
  final pulumi.Input<List<NameValuePair>>? clusterSettings;
  /// Full view of the custom domain suffix configuration for ASEv3.
  final pulumi.Input<CustomDnsSuffixConfiguration>? customDnsSuffixConfiguration;
  /// Dedicated Host Count
  final pulumi.Input<int>? dedicatedHostCount;
  /// DNS suffix of the App Service Environment.
  final pulumi.Input<String>? dnsSuffix;
  /// Scale factor for front-ends.
  final pulumi.Input<int>? frontEndScaleFactor;
  /// Specifies which endpoints to serve internally in the Virtual Network for the App Service Environment.
  final pulumi.Input<String>? internalLoadBalancingMode;
  /// Number of IP SSL addresses reserved for the App Service Environment.
  final pulumi.Input<int>? ipsslAddressCount;
  /// Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  final pulumi.Input<String>? kind;
  /// Resource Location.
  final pulumi.Input<String>? location;
  /// Front-end VM size, e.g. "Medium", "Large".
  final pulumi.Input<String>? multiSize;
  /// Name of the App Service Environment.
  final pulumi.Input<String>? name;
  /// Full view of networking configuration for an ASE.
  final pulumi.Input<AseV3NetworkingConfiguration>? networkingConfiguration;
  /// Name of the resource group to which the resource belongs.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// Upgrade Preference
  final pulumi.Input<String>? upgradePreference;
  /// User added ip ranges to whitelist on ASE db
  final pulumi.Input<List<String>>? userWhitelistedIpRanges;
  /// Description of the Virtual Network.
  final pulumi.Input<VirtualNetworkProfile> virtualNetwork;
  /// Whether or not this App Service Environment is zone-redundant.
  final pulumi.Input<bool>? zoneRedundant;

  /// Creates a new [AppServiceEnvironmentArgs].
  /// [clusterSettings] Custom settings for changing the behavior of the App Service Environment.
  /// [customDnsSuffixConfiguration] Full view of the custom domain suffix configuration for ASEv3.
  /// [dedicatedHostCount] Dedicated Host Count
  /// [dnsSuffix] DNS suffix of the App Service Environment.
  /// [frontEndScaleFactor] Scale factor for front-ends.
  /// [internalLoadBalancingMode] Specifies which endpoints to serve internally in the Virtual Network for the App Service Environment.
  /// [ipsslAddressCount] Number of IP SSL addresses reserved for the App Service Environment.
  /// [kind] Kind of resource. If the resource is an app, you can refer to https://github.com/Azure/app-service-linux-docs/blob/master/Things_You_Should_Know/kind_property.md#app-service-resource-kind-reference for details supported values for kind.
  /// [location] Resource Location.
  /// [multiSize] Front-end VM size, e.g. "Medium", "Large".
  /// [name] Name of the App Service Environment.
  /// [networkingConfiguration] Full view of networking configuration for an ASE.
  /// [resourceGroupName] Name of the resource group to which the resource belongs.
  /// [tags] Resource tags.
  /// [upgradePreference] Upgrade Preference
  /// [userWhitelistedIpRanges] User added ip ranges to whitelist on ASE db
  /// [virtualNetwork] Description of the Virtual Network.
  /// [zoneRedundant] Whether or not this App Service Environment is zone-redundant.
  AppServiceEnvironmentArgs({
    pulumi.Output<List<NameValuePair>>? clusterSettings,
    pulumi.Output<CustomDnsSuffixConfiguration>? customDnsSuffixConfiguration,
    pulumi.Output<int>? dedicatedHostCount,
    pulumi.Output<String>? dnsSuffix,
    pulumi.Output<int>? frontEndScaleFactor,
    pulumi.Output<String>? internalLoadBalancingMode,
    pulumi.Output<int>? ipsslAddressCount,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    pulumi.Output<String>? multiSize,
    pulumi.Output<String>? name,
    pulumi.Output<AseV3NetworkingConfiguration>? networkingConfiguration,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? upgradePreference,
    pulumi.Output<List<String>>? userWhitelistedIpRanges,
    required pulumi.Output<VirtualNetworkProfile> virtualNetwork,
    pulumi.Output<bool>? zoneRedundant,
  }) :
      clusterSettings = pulumi.Input.asOptionalInput<List<NameValuePair>>(clusterSettings),
      customDnsSuffixConfiguration = pulumi.Input.asOptionalInput<CustomDnsSuffixConfiguration>(customDnsSuffixConfiguration),
      dedicatedHostCount = pulumi.Input.asOptionalInput<int>(dedicatedHostCount),
      dnsSuffix = pulumi.Input.asOptionalInput<String>(dnsSuffix),
      frontEndScaleFactor = pulumi.Input.asOptionalInput<int>(frontEndScaleFactor),
      internalLoadBalancingMode = pulumi.Input.asOptionalInput<String>(internalLoadBalancingMode),
      ipsslAddressCount = pulumi.Input.asOptionalInput<int>(ipsslAddressCount),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      multiSize = pulumi.Input.asOptionalInput<String>(multiSize),
      name = pulumi.Input.asOptionalInput<String>(name),
      networkingConfiguration = pulumi.Input.asOptionalInput<AseV3NetworkingConfiguration>(networkingConfiguration),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      upgradePreference = pulumi.Input.asOptionalInput<String>(upgradePreference),
      userWhitelistedIpRanges = pulumi.Input.asOptionalInput<List<String>>(userWhitelistedIpRanges),
      virtualNetwork = pulumi.Input.asInput<VirtualNetworkProfile>(virtualNetwork),
      zoneRedundant = pulumi.Input.asOptionalInput<bool>(zoneRedundant);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterSettings': ?pulumi.Input.mapOptionalInputValue<List<NameValuePair>, List<Map<String, dynamic>>>(clusterSettings, (value) => pulumi.Input.encodeList<NameValuePair, Map<String, dynamic>>(value, (value) => value.toMap())),
      'customDnsSuffixConfiguration': ?pulumi.Input.mapOptionalInputValue<CustomDnsSuffixConfiguration, Map<String, dynamic>>(customDnsSuffixConfiguration, (value) => value.toMap()),
      'dedicatedHostCount': ?dedicatedHostCount,
      'dnsSuffix': ?dnsSuffix,
      'frontEndScaleFactor': ?frontEndScaleFactor,
      'internalLoadBalancingMode': ?internalLoadBalancingMode,
      'ipsslAddressCount': ?ipsslAddressCount,
      'kind': ?kind,
      'location': ?location,
      'multiSize': ?multiSize,
      'name': ?name,
      'networkingConfiguration': ?pulumi.Input.mapOptionalInputValue<AseV3NetworkingConfiguration, Map<String, dynamic>>(networkingConfiguration, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
      'upgradePreference': ?upgradePreference,
      'userWhitelistedIpRanges': ?userWhitelistedIpRanges,
      'virtualNetwork': pulumi.Input.mapInputValue<VirtualNetworkProfile, Map<String, dynamic>>(virtualNetwork, (value) => value.toMap()),
      'zoneRedundant': ?zoneRedundant,
    };
  }

  factory AppServiceEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return AppServiceEnvironmentArgs(
      clusterSettings: map['clusterSettings'] == null ? null : pulumi.Output.create<List<NameValuePair>>(pulumi.Input.decodeList<NameValuePair>(map['clusterSettings'], (value) => NameValuePair.fromMap((value as Map).cast<String, dynamic>()))),
      customDnsSuffixConfiguration: map['customDnsSuffixConfiguration'] == null ? null : pulumi.Output.create<CustomDnsSuffixConfiguration>(CustomDnsSuffixConfiguration.fromMap((map['customDnsSuffixConfiguration'] as Map).cast<String, dynamic>())),
      dedicatedHostCount: map['dedicatedHostCount'] == null ? null : pulumi.Output.create<int>(map['dedicatedHostCount'] as int),
      dnsSuffix: map['dnsSuffix'] == null ? null : pulumi.Output.create<String>(map['dnsSuffix'] as String),
      frontEndScaleFactor: map['frontEndScaleFactor'] == null ? null : pulumi.Output.create<int>(map['frontEndScaleFactor'] as int),
      internalLoadBalancingMode: map['internalLoadBalancingMode'] == null ? null : pulumi.Output.create<String>(map['internalLoadBalancingMode'] as String),
      ipsslAddressCount: map['ipsslAddressCount'] == null ? null : pulumi.Output.create<int>(map['ipsslAddressCount'] as int),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      multiSize: map['multiSize'] == null ? null : pulumi.Output.create<String>(map['multiSize'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      networkingConfiguration: map['networkingConfiguration'] == null ? null : pulumi.Output.create<AseV3NetworkingConfiguration>(AseV3NetworkingConfiguration.fromMap((map['networkingConfiguration'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      upgradePreference: map['upgradePreference'] == null ? null : pulumi.Output.create<String>(map['upgradePreference'] as String),
      userWhitelistedIpRanges: map['userWhitelistedIpRanges'] == null ? null : pulumi.Output.create<List<String>>((map['userWhitelistedIpRanges'] as List).cast<String>()),
      virtualNetwork: pulumi.Output.create<VirtualNetworkProfile>(VirtualNetworkProfile.fromMap((map['virtualNetwork'] as Map).cast<String, dynamic>())),
      zoneRedundant: map['zoneRedundant'] == null ? null : pulumi.Output.create<bool>(map['zoneRedundant'] as bool),
    );
  }
}

