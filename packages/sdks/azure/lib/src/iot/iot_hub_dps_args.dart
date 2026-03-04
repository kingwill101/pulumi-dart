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
    this.allocationPolicy,
    this.dataResidencyEnabled,
    this.ipFilterRules,
    this.linkedHubs,
    this.location,
    this.name,
    this.publicNetworkAccessEnabled,
    required this.resourceGroupName,
    required this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationPolicy': ?allocationPolicy,
      'dataResidencyEnabled': ?dataResidencyEnabled,
      'ipFilterRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<IotHubDpsIpFilterRule>,
            List<Map<String, dynamic>>
          >(
            ipFilterRules,
            (value) =>
                pulumi.Input.encodeList<
                  IotHubDpsIpFilterRule,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'linkedHubs':
          ?pulumi.Input.mapOptionalInputValue<
            List<IotHubDpsLinkedHub>,
            List<Map<String, dynamic>>
          >(
            linkedHubs,
            (value) =>
                pulumi.Input.encodeList<
                  IotHubDpsLinkedHub,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'location': ?location,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': resourceGroupName,
      'sku': pulumi.Input.mapInputValue<IotHubDpsSku, Map<String, dynamic>>(
        sku,
        (value) => value.toMap(),
      ),
      'tags': ?tags,
    };
  }

  factory IotHubDpsArgs.fromMap(Map<String, dynamic> map) {
    return IotHubDpsArgs(
      allocationPolicy: (() {
        final guardedValue = map['allocationPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataResidencyEnabled: (() {
        final guardedValue = map['dataResidencyEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ipFilterRules: (() {
        final guardedValue = map['ipFilterRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<IotHubDpsIpFilterRule>(
            guardedValue,
            (value) => IotHubDpsIpFilterRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      linkedHubs: (() {
        final guardedValue = map['linkedHubs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<IotHubDpsLinkedHub>(
            guardedValue,
            (value) => IotHubDpsLinkedHub.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      publicNetworkAccessEnabled: (() {
        final guardedValue = map['publicNetworkAccessEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      sku: pulumi.Input.fromValue(
        IotHubDpsSku.fromMap((map['sku']! as Map).cast<String, dynamic>()),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
