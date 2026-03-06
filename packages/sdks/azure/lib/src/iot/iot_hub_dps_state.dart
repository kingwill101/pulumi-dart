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
  const IotHubDpsState({
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
      allocationPolicy: (() { final guardedValue = map['allocationPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataResidencyEnabled: (() { final guardedValue = map['dataResidencyEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deviceProvisioningHostName: (() { final guardedValue = map['deviceProvisioningHostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idScope: (() { final guardedValue = map['idScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipFilterRules: (() { final guardedValue = map['ipFilterRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IotHubDpsIpFilterRule>(guardedValue, (value) => IotHubDpsIpFilterRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      linkedHubs: (() { final guardedValue = map['linkedHubs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<IotHubDpsLinkedHub>(guardedValue, (value) => IotHubDpsLinkedHub.fromMap((value as Map).cast<String, dynamic>()))); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicNetworkAccessEnabled: (() { final guardedValue = map['publicNetworkAccessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceOperationsHostName: (() { final guardedValue = map['serviceOperationsHostName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IotHubDpsSku.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

