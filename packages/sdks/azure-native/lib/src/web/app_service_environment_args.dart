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
    this.clusterSettings,
    this.customDnsSuffixConfiguration,
    this.dedicatedHostCount,
    this.dnsSuffix,
    this.frontEndScaleFactor,
    this.internalLoadBalancingMode,
    this.ipsslAddressCount,
    this.kind,
    this.location,
    this.multiSize,
    this.name,
    this.networkingConfiguration,
    required this.resourceGroupName,
    this.tags,
    this.upgradePreference,
    this.userWhitelistedIpRanges,
    required this.virtualNetwork,
    this.zoneRedundant,
  });

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
      clusterSettings: (() { final guardedValue = map['clusterSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NameValuePair>(guardedValue, (value) => NameValuePair.fromMap((value as Map).cast<String, dynamic>()))); })(),
      customDnsSuffixConfiguration: (() { final guardedValue = map['customDnsSuffixConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CustomDnsSuffixConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dedicatedHostCount: (() { final guardedValue = map['dedicatedHostCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dnsSuffix: (() { final guardedValue = map['dnsSuffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      frontEndScaleFactor: (() { final guardedValue = map['frontEndScaleFactor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      internalLoadBalancingMode: (() { final guardedValue = map['internalLoadBalancingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipsslAddressCount: (() { final guardedValue = map['ipsslAddressCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      multiSize: (() { final guardedValue = map['multiSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkingConfiguration: (() { final guardedValue = map['networkingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AseV3NetworkingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      upgradePreference: (() { final guardedValue = map['upgradePreference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userWhitelistedIpRanges: (() { final guardedValue = map['userWhitelistedIpRanges']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      virtualNetwork: pulumi.Input.fromValue(VirtualNetworkProfile.fromMap((map['virtualNetwork']! as Map).cast<String, dynamic>())),
      zoneRedundant: (() { final guardedValue = map['zoneRedundant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

