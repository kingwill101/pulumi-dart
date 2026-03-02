// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iot_hub_device_update_account_identity.dart';

/// {@template pulumi_iot_iot_hub_device_update_account_iot_hub_device_update_account_args_doc}
/// The set of arguments for IotHubDeviceUpdateAccount.
/// {@endtemplate}
/// {@macro pulumi_iot_iot_hub_device_update_account_iot_hub_device_update_account_args_doc}
class IotHubDeviceUpdateAccountArgs {
  /// An `identity` block as defined below.
  final pulumi.Input<IotHubDeviceUpdateAccountIdentity>? identity;
  /// Specifies the Azure Region where the IoT Hub Device Update Account should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name which should be used for this IoT Hub Device Update Account. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies whether the public network access is enabled for the IoT Hub Device Update Account. Possible values are `true` and `false`. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// Specifies the name of the Resource Group where the IoT Hub Device Update Account should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Sku of the IoT Hub Device Update Account. Possible values are `Free` and `Standard`. Defaults to `Standard`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sku;
  /// A mapping of tags which should be assigned to the IoT Hub Device Update Account.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IotHubDeviceUpdateAccountArgs].
  /// [identity] An `identity` block as defined below.
  /// [location] Specifies the Azure Region where the IoT Hub Device Update Account should exist. Changing this forces a new resource to be created.
  /// [name] Specifies the name which should be used for this IoT Hub Device Update Account. Changing this forces a new resource to be created.
  /// [publicNetworkAccessEnabled] Specifies whether the public network access is enabled for the IoT Hub Device Update Account. Possible values are `true` and `false`. Defaults to `true`.
  /// [resourceGroupName] Specifies the name of the Resource Group where the IoT Hub Device Update Account should exist. Changing this forces a new resource to be created.
  /// [sku] Sku of the IoT Hub Device Update Account. Possible values are `Free` and `Standard`. Defaults to `Standard`. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the IoT Hub Device Update Account.
  IotHubDeviceUpdateAccountArgs({
    this.identity,
    this.location,
    this.name,
    this.publicNetworkAccessEnabled,
    required this.resourceGroupName,
    this.sku,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<IotHubDeviceUpdateAccountIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': resourceGroupName,
      'sku': ?sku,
      'tags': ?tags,
    };
  }

  factory IotHubDeviceUpdateAccountArgs.fromMap(Map<String, dynamic> map) {
    return IotHubDeviceUpdateAccountArgs(
      identity: map['identity'] == null ? null : (IotHubDeviceUpdateAccountIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : (map['publicNetworkAccessEnabled']! as bool).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sku: map['sku'] == null ? null : (map['sku']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

