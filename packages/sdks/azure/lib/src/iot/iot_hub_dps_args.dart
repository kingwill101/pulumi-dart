// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iot_hub_dps_ip_filter_rule.dart';
import 'iot_hub_dps_linked_hub.dart';
import 'iot_hub_dps_sku.dart';

/// {@template pulumi_iot_iot_hub_dps_iot_hub_dps_args_doc}
/// The set of arguments for IotHubDps.
/// {@endtemplate}
/// {@macro pulumi_iot_iot_hub_dps_iot_hub_dps_args_doc}
class IotHubDpsArgs {
  /// The allocation policy of the IoT Device Provisioning Service (`Hashed`, `GeoLatency` or `Static`). Defaults to `Hashed`.
  final pulumi.Input<String>? allocationPolicy;
  /// Specifies if the IoT Device Provisioning Service has data residency enabled, removing the cross geo-pair disaster recovery. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? dataResidencyEnabled;
  /// An `ip_filter_rule` block as defined below.
  final pulumi.Input<List<IotHubDpsIpFilterRule>>? ipFilterRules;
  /// A `linked_hub` block as defined below.
  final pulumi.Input<List<IotHubDpsLinkedHub>>? linkedHubs;
  /// Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Iot Device Provisioning Service resource. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Whether requests from Public Network are allowed. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// The name of the resource group under which the Iot Device Provisioning Service resource has to be created. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `sku` block as defined below.
  final pulumi.Input<IotHubDpsSku> sku;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IotHubDpsArgs].
  /// [allocationPolicy] The allocation policy of the IoT Device Provisioning Service (`Hashed`, `GeoLatency` or `Static`). Defaults to `Hashed`.
  /// [dataResidencyEnabled] Specifies if the IoT Device Provisioning Service has data residency enabled, removing the cross geo-pair disaster recovery. Defaults to `false`. Changing this forces a new resource to be created.
  /// [ipFilterRules] An `ip_filter_rule` block as defined below.
  /// [linkedHubs] A `linked_hub` block as defined below.
  /// [location] Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Iot Device Provisioning Service resource. Changing this forces a new resource to be created.
  /// [publicNetworkAccessEnabled] Whether requests from Public Network are allowed. Defaults to `true`.
  /// [resourceGroupName] The name of the resource group under which the Iot Device Provisioning Service resource has to be created. Changing this forces a new resource to be created.
  /// [sku] A `sku` block as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  IotHubDpsArgs({
    pulumi.Output<String>? allocationPolicy,
    pulumi.Output<bool>? dataResidencyEnabled,
    pulumi.Output<List<IotHubDpsIpFilterRule>>? ipFilterRules,
    pulumi.Output<List<IotHubDpsLinkedHub>>? linkedHubs,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<IotHubDpsSku> sku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      allocationPolicy = pulumi.Input.asOptionalInput<String>(allocationPolicy),
      dataResidencyEnabled = pulumi.Input.asOptionalInput<bool>(dataResidencyEnabled),
      ipFilterRules = pulumi.Input.asOptionalInput<List<IotHubDpsIpFilterRule>>(ipFilterRules),
      linkedHubs = pulumi.Input.asOptionalInput<List<IotHubDpsLinkedHub>>(linkedHubs),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asInput<IotHubDpsSku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationPolicy': ?allocationPolicy,
      'dataResidencyEnabled': ?dataResidencyEnabled,
      'ipFilterRules': ?pulumi.Input.mapOptionalInputValue<List<IotHubDpsIpFilterRule>, List<Map<String, dynamic>>>(ipFilterRules, (value) => pulumi.Input.encodeList<IotHubDpsIpFilterRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'linkedHubs': ?pulumi.Input.mapOptionalInputValue<List<IotHubDpsLinkedHub>, List<Map<String, dynamic>>>(linkedHubs, (value) => pulumi.Input.encodeList<IotHubDpsLinkedHub, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': resourceGroupName,
      'sku': pulumi.Input.mapInputValue<IotHubDpsSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory IotHubDpsArgs.fromMap(Map<String, dynamic> map) {
    return IotHubDpsArgs(
      allocationPolicy: map['allocationPolicy'] == null ? null : pulumi.Output.create<String>(map['allocationPolicy'] as String),
      dataResidencyEnabled: map['dataResidencyEnabled'] == null ? null : pulumi.Output.create<bool>(map['dataResidencyEnabled'] as bool),
      ipFilterRules: map['ipFilterRules'] == null ? null : pulumi.Output.create<List<IotHubDpsIpFilterRule>>(pulumi.Input.decodeList<IotHubDpsIpFilterRule>(map['ipFilterRules'], (value) => IotHubDpsIpFilterRule.fromMap((value as Map).cast<String, dynamic>()))),
      linkedHubs: map['linkedHubs'] == null ? null : pulumi.Output.create<List<IotHubDpsLinkedHub>>(pulumi.Input.decodeList<IotHubDpsLinkedHub>(map['linkedHubs'], (value) => IotHubDpsLinkedHub.fromMap((value as Map).cast<String, dynamic>()))),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: pulumi.Output.create<IotHubDpsSku>(IotHubDpsSku.fromMap((map['sku'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

