// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iot_hub_dps_ip_filter_rule.dart';
import 'iot_hub_dps_linked_hub.dart';
import 'iot_hub_dps_sku.dart';

/// Input properties used for looking up and filtering IotHubDps resources.
class IotHubDpsState {
  /// The allocation policy of the IoT Device Provisioning Service (`Hashed`, `GeoLatency` or `Static`). Defaults to `Hashed`.
  final pulumi.Input<String>? allocationPolicy;
  /// Specifies if the IoT Device Provisioning Service has data residency enabled, removing the cross geo-pair disaster recovery. Defaults to `false`. Changing this forces a new resource to be created.
  final pulumi.Input<bool>? dataResidencyEnabled;
  /// The device endpoint of the IoT Device Provisioning Service.
  final pulumi.Input<String>? deviceProvisioningHostName;
  /// The unique identifier of the IoT Device Provisioning Service.
  final pulumi.Input<String>? idScope;
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
  final pulumi.Input<String>? resourceGroupName;
  /// The service endpoint of the IoT Device Provisioning Service.
  final pulumi.Input<String>? serviceOperationsHostName;
  /// A `sku` block as defined below.
  final pulumi.Input<IotHubDpsSku>? sku;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IotHubDpsState].
  /// [allocationPolicy] The allocation policy of the IoT Device Provisioning Service (`Hashed`, `GeoLatency` or `Static`). Defaults to `Hashed`.
  /// [dataResidencyEnabled] Specifies if the IoT Device Provisioning Service has data residency enabled, removing the cross geo-pair disaster recovery. Defaults to `false`. Changing this forces a new resource to be created.
  /// [deviceProvisioningHostName] The device endpoint of the IoT Device Provisioning Service.
  /// [idScope] The unique identifier of the IoT Device Provisioning Service.
  /// [ipFilterRules] An `ip_filter_rule` block as defined below.
  /// [linkedHubs] A `linked_hub` block as defined below.
  /// [location] Specifies the supported Azure location where the resource has to be created. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Iot Device Provisioning Service resource. Changing this forces a new resource to be created.
  /// [publicNetworkAccessEnabled] Whether requests from Public Network are allowed. Defaults to `true`.
  /// [resourceGroupName] The name of the resource group under which the Iot Device Provisioning Service resource has to be created. Changing this forces a new resource to be created.
  /// [serviceOperationsHostName] The service endpoint of the IoT Device Provisioning Service.
  /// [sku] A `sku` block as defined below.
  /// [tags] A mapping of tags to assign to the resource.
  IotHubDpsState({
    this.allocationPolicy,
    this.dataResidencyEnabled,
    this.deviceProvisioningHostName,
    this.idScope,
    this.ipFilterRules,
    this.linkedHubs,
    this.location,
    this.name,
    this.publicNetworkAccessEnabled,
    this.resourceGroupName,
    this.serviceOperationsHostName,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationPolicy': ?allocationPolicy,
      'dataResidencyEnabled': ?dataResidencyEnabled,
      'deviceProvisioningHostName': ?deviceProvisioningHostName,
      'idScope': ?idScope,
      'ipFilterRules': ?pulumi.Input.mapOptionalInputValue<List<IotHubDpsIpFilterRule>, List<Map<String, dynamic>>>(ipFilterRules, (value) => pulumi.Input.encodeList<IotHubDpsIpFilterRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'linkedHubs': ?pulumi.Input.mapOptionalInputValue<List<IotHubDpsLinkedHub>, List<Map<String, dynamic>>>(linkedHubs, (value) => pulumi.Input.encodeList<IotHubDpsLinkedHub, Map<String, dynamic>>(value, (value) => value.toMap())),
      'location': ?location,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': ?resourceGroupName,
      'serviceOperationsHostName': ?serviceOperationsHostName,
      'sku': ?pulumi.Input.mapOptionalInputValue<IotHubDpsSku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory IotHubDpsState.fromMap(Map<String, dynamic> map) {
    return IotHubDpsState(
      allocationPolicy: map['allocationPolicy'] == null ? null : (map['allocationPolicy']! as String).input(),
      dataResidencyEnabled: map['dataResidencyEnabled'] == null ? null : (map['dataResidencyEnabled']! as bool).input(),
      deviceProvisioningHostName: map['deviceProvisioningHostName'] == null ? null : (map['deviceProvisioningHostName']! as String).input(),
      idScope: map['idScope'] == null ? null : (map['idScope']! as String).input(),
      ipFilterRules: map['ipFilterRules'] == null ? null : (pulumi.Input.decodeList<IotHubDpsIpFilterRule>(map['ipFilterRules']!, (value) => IotHubDpsIpFilterRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      linkedHubs: map['linkedHubs'] == null ? null : (pulumi.Input.decodeList<IotHubDpsLinkedHub>(map['linkedHubs']!, (value) => IotHubDpsLinkedHub.fromMap((value as Map).cast<String, dynamic>()))).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled']! as bool).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      serviceOperationsHostName: map['serviceOperationsHostName'] == null ? null : (map['serviceOperationsHostName']! as String).input(),
      sku: map['sku'] == null ? null : (IotHubDpsSku.fromMap((map['sku']! as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

