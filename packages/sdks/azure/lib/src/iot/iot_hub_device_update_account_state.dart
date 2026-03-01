// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iot_hub_device_update_account_identity.dart';

/// Input properties used for looking up and filtering IotHubDeviceUpdateAccount resources.
class IotHubDeviceUpdateAccountState {
  /// The API host name of the IoT Hub Device Update Account.
  final pulumi.Input<String>? hostName;
  /// An `identity` block as defined below.
  final pulumi.Input<IotHubDeviceUpdateAccountIdentity>? identity;
  /// Specifies the Azure Region where the IoT Hub Device Update Account should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name which should be used for this IoT Hub Device Update Account. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies whether the public network access is enabled for the IoT Hub Device Update Account. Possible values are `true` and `false`. Defaults to `true`.
  final pulumi.Input<bool>? publicNetworkAccessEnabled;
  /// Specifies the name of the Resource Group where the IoT Hub Device Update Account should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Sku of the IoT Hub Device Update Account. Possible values are `Free` and `Standard`. Defaults to `Standard`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? sku;
  /// A mapping of tags which should be assigned to the IoT Hub Device Update Account.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IotHubDeviceUpdateAccountState].
  /// [hostName] The API host name of the IoT Hub Device Update Account.
  /// [identity] An `identity` block as defined below.
  /// [location] Specifies the Azure Region where the IoT Hub Device Update Account should exist. Changing this forces a new resource to be created.
  /// [name] Specifies the name which should be used for this IoT Hub Device Update Account. Changing this forces a new resource to be created.
  /// [publicNetworkAccessEnabled] Specifies whether the public network access is enabled for the IoT Hub Device Update Account. Possible values are `true` and `false`. Defaults to `true`.
  /// [resourceGroupName] Specifies the name of the Resource Group where the IoT Hub Device Update Account should exist. Changing this forces a new resource to be created.
  /// [sku] Sku of the IoT Hub Device Update Account. Possible values are `Free` and `Standard`. Defaults to `Standard`. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the IoT Hub Device Update Account.
  IotHubDeviceUpdateAccountState({
    pulumi.Output<String>? hostName,
    pulumi.Output<IotHubDeviceUpdateAccountIdentity>? identity,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<bool>? publicNetworkAccessEnabled,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? sku,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      hostName = pulumi.Input.asOptionalInput<String>(hostName),
      identity = pulumi.Input.asOptionalInput<IotHubDeviceUpdateAccountIdentity>(identity),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      publicNetworkAccessEnabled = pulumi.Input.asOptionalInput<bool>(publicNetworkAccessEnabled),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<String>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostName': ?hostName,
      'identity': ?pulumi.Input.mapOptionalInputValue<IotHubDeviceUpdateAccountIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'publicNetworkAccessEnabled': ?publicNetworkAccessEnabled,
      'resourceGroupName': ?resourceGroupName,
      'sku': ?sku,
      'tags': ?tags,
    };
  }

  factory IotHubDeviceUpdateAccountState.fromMap(Map<String, dynamic> map) {
    return IotHubDeviceUpdateAccountState(
      hostName: map['hostName'] == null ? null : pulumi.Output.create<String>(map['hostName'] as String),
      identity: map['identity'] == null ? null : pulumi.Output.create<IotHubDeviceUpdateAccountIdentity>(IotHubDeviceUpdateAccountIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      publicNetworkAccessEnabled: map['publicNetworkAccessEnabled'] == null ? null : pulumi.Output.create<bool>(map['publicNetworkAccessEnabled'] as bool),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sku: map['sku'] == null ? null : pulumi.Output.create<String>(map['sku'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

