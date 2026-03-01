// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iot_hub_device_update_instance_diagnostic_storage_account.dart';

/// Input properties used for looking up and filtering IotHubDeviceUpdateInstance resources.
class IotHubDeviceUpdateInstanceState {
  /// Specifies the ID of the IoT Hub Device Update Account where the IoT Hub Device Update Instance exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? deviceUpdateAccountId;
  /// Whether the diagnostic log collection is enabled. Possible values are `true` and `false`. Defaults to `false`.
  final pulumi.Input<bool>? diagnosticEnabled;
  /// A `diagnostic_storage_account` block as defined below.
  final pulumi.Input<IotHubDeviceUpdateInstanceDiagnosticStorageAccount>? diagnosticStorageAccount;
  /// Specifies the ID of the IoT Hub associated with the IoT Hub Device Update Instance. Changing this forces a new resource to be created.
  final pulumi.Input<String>? iothubId;
  /// Specifies the name which should be used for this IoT Hub Device Update Instance. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A mapping of tags which should be assigned to the IoT Hub Device Update Instance.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IotHubDeviceUpdateInstanceState].
  /// [deviceUpdateAccountId] Specifies the ID of the IoT Hub Device Update Account where the IoT Hub Device Update Instance exists. Changing this forces a new resource to be created.
  /// [diagnosticEnabled] Whether the diagnostic log collection is enabled. Possible values are `true` and `false`. Defaults to `false`.
  /// [diagnosticStorageAccount] A `diagnostic_storage_account` block as defined below.
  /// [iothubId] Specifies the ID of the IoT Hub associated with the IoT Hub Device Update Instance. Changing this forces a new resource to be created.
  /// [name] Specifies the name which should be used for this IoT Hub Device Update Instance. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the IoT Hub Device Update Instance.
  IotHubDeviceUpdateInstanceState({
    pulumi.Output<String>? deviceUpdateAccountId,
    pulumi.Output<bool>? diagnosticEnabled,
    pulumi.Output<IotHubDeviceUpdateInstanceDiagnosticStorageAccount>? diagnosticStorageAccount,
    pulumi.Output<String>? iothubId,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      deviceUpdateAccountId = pulumi.Input.asOptionalInput<String>(deviceUpdateAccountId),
      diagnosticEnabled = pulumi.Input.asOptionalInput<bool>(diagnosticEnabled),
      diagnosticStorageAccount = pulumi.Input.asOptionalInput<IotHubDeviceUpdateInstanceDiagnosticStorageAccount>(diagnosticStorageAccount),
      iothubId = pulumi.Input.asOptionalInput<String>(iothubId),
      name = pulumi.Input.asOptionalInput<String>(name),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceUpdateAccountId': ?deviceUpdateAccountId,
      'diagnosticEnabled': ?diagnosticEnabled,
      'diagnosticStorageAccount': ?pulumi.Input.mapOptionalInputValue<IotHubDeviceUpdateInstanceDiagnosticStorageAccount, Map<String, dynamic>>(diagnosticStorageAccount, (value) => value.toMap()),
      'iothubId': ?iothubId,
      'name': ?name,
      'tags': ?tags,
    };
  }

  factory IotHubDeviceUpdateInstanceState.fromMap(Map<String, dynamic> map) {
    return IotHubDeviceUpdateInstanceState(
      deviceUpdateAccountId: map['deviceUpdateAccountId'] == null ? null : pulumi.Output.create<String>(map['deviceUpdateAccountId'] as String),
      diagnosticEnabled: map['diagnosticEnabled'] == null ? null : pulumi.Output.create<bool>(map['diagnosticEnabled'] as bool),
      diagnosticStorageAccount: map['diagnosticStorageAccount'] == null ? null : pulumi.Output.create<IotHubDeviceUpdateInstanceDiagnosticStorageAccount>(IotHubDeviceUpdateInstanceDiagnosticStorageAccount.fromMap((map['diagnosticStorageAccount'] as Map).cast<String, dynamic>())),
      iothubId: map['iothubId'] == null ? null : pulumi.Output.create<String>(map['iothubId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

