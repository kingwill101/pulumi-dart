// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_data_scanner_args_doc}
/// Arguments for getDataScanner.
/// {@endtemplate}
/// {@macro pulumi_security_get_data_scanner_args_doc}
class GetDataScannerArgs {
  /// The name of the data scanner.
  final pulumi.Input<String> scannerName;
  /// The scope of the data scanner. Valid scopes are a subscription (format: 'subscriptions/{subscriptionId}') or a resource group (format: 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}').
  final pulumi.Input<String> scopeId;

  /// Creates a new [GetDataScannerArgs].
  /// [scannerName] The name of the data scanner.
  /// [scopeId] The scope of the data scanner. Valid scopes are a subscription (format: 'subscriptions/{subscriptionId}') or a resource group (format: 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}').
  const GetDataScannerArgs({
    required this.scannerName,
    required this.scopeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scannerName': scannerName,
      'scopeId': scopeId,
    };
  }

  factory GetDataScannerArgs.fromMap(Map<String, dynamic> map) {
    return GetDataScannerArgs(
      scannerName: pulumi.Input.fromValue(map['scannerName'] as String),
      scopeId: pulumi.Input.fromValue(map['scopeId'] as String),
    );
  }
}
