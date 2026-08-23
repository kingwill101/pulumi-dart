// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_assigned_service_identity.dart';

/// {@template pulumi_security_data_scanner_args_doc}
/// The set of arguments for DataScanner.
/// {@endtemplate}
/// {@macro pulumi_security_data_scanner_args_doc}
class DataScannerArgs {
  /// The managed service identities assigned to this resource.
  final pulumi.Input<SystemAssignedServiceIdentity>? identity;
  /// Data scanner resource properties.
  final pulumi.Input<dynamic>? properties;
  /// The name of the data scanner.
  final pulumi.Input<String>? scannerName;
  /// The scope of the data scanner. Valid scopes are a subscription (format: 'subscriptions/{subscriptionId}') or a resource group (format: 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}').
  final pulumi.Input<String> scopeId;

  /// Creates a new [DataScannerArgs].
  /// [identity] The managed service identities assigned to this resource.
  /// [properties] Data scanner resource properties.
  /// [scannerName] The name of the data scanner.
  /// [scopeId] The scope of the data scanner. Valid scopes are a subscription (format: 'subscriptions/{subscriptionId}') or a resource group (format: 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}').
  const DataScannerArgs({
    this.identity,
    this.properties,
    this.scannerName,
    required this.scopeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<SystemAssignedServiceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'properties': ?properties,
      'scannerName': ?scannerName,
      'scopeId': scopeId,
    };
  }

  factory DataScannerArgs.fromMap(Map<String, dynamic> map) {
    return DataScannerArgs(
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SystemAssignedServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      scannerName: (() { final guardedValue = map['scannerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scopeId: pulumi.Input.fromValue(map['scopeId'] as String),
    );
  }
}
