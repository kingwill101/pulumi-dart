// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iot_hub_device_update_instance_diagnostic_storage_account.dart';

/// {@template pulumi_iot_iot_hub_device_update_instance_iot_hub_device_update_instance_args_doc}
/// The set of arguments for IotHubDeviceUpdateInstance.
/// {@endtemplate}
/// {@macro pulumi_iot_iot_hub_device_update_instance_iot_hub_device_update_instance_args_doc}
class IotHubDeviceUpdateInstanceArgs {
  /// Specifies the ID of the IoT Hub Device Update Account where the IoT Hub Device Update Instance exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> deviceUpdateAccountId;
  /// Whether the diagnostic log collection is enabled. Possible values are `true` and `false`. Defaults to `false`.
  final pulumi.Input<bool>? diagnosticEnabled;
  /// A `diagnostic_storage_account` block as defined below.
  final pulumi.Input<IotHubDeviceUpdateInstanceDiagnosticStorageAccount>? diagnosticStorageAccount;
  /// Specifies the ID of the IoT Hub associated with the IoT Hub Device Update Instance. Changing this forces a new resource to be created.
  final pulumi.Input<String> iothubId;
  /// Specifies the name which should be used for this IoT Hub Device Update Instance. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A mapping of tags which should be assigned to the IoT Hub Device Update Instance.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [IotHubDeviceUpdateInstanceArgs].
  /// [deviceUpdateAccountId] Specifies the ID of the IoT Hub Device Update Account where the IoT Hub Device Update Instance exists. Changing this forces a new resource to be created.
  /// [diagnosticEnabled] Whether the diagnostic log collection is enabled. Possible values are `true` and `false`. Defaults to `false`.
  /// [diagnosticStorageAccount] A `diagnostic_storage_account` block as defined below.
  /// [iothubId] Specifies the ID of the IoT Hub associated with the IoT Hub Device Update Instance. Changing this forces a new resource to be created.
  /// [name] Specifies the name which should be used for this IoT Hub Device Update Instance. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the IoT Hub Device Update Instance.
  const IotHubDeviceUpdateInstanceArgs({
    required this.deviceUpdateAccountId,
    this.diagnosticEnabled,
    this.diagnosticStorageAccount,
    required this.iothubId,
    this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceUpdateAccountId': deviceUpdateAccountId,
      'diagnosticEnabled': ?diagnosticEnabled,
      'diagnosticStorageAccount': ?pulumi.Input.mapOptionalInputValue<IotHubDeviceUpdateInstanceDiagnosticStorageAccount, Map<String, dynamic>>(diagnosticStorageAccount, (value) => value.toMap()),
      'iothubId': iothubId,
      'name': ?name,
      'tags': ?tags,
    };
  }

  factory IotHubDeviceUpdateInstanceArgs.fromMap(Map<String, dynamic> map) {
    return IotHubDeviceUpdateInstanceArgs(
      deviceUpdateAccountId: pulumi.Input.fromValue(map['deviceUpdateAccountId'] as String),
      diagnosticEnabled: (() { final guardedValue = map['diagnosticEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      diagnosticStorageAccount: (() { final guardedValue = map['diagnosticStorageAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IotHubDeviceUpdateInstanceDiagnosticStorageAccount.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      iothubId: pulumi.Input.fromValue(map['iothubId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

