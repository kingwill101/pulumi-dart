// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IotHubDeviceUpdateInstanceDiagnosticStorageAccount {
  /// Connection String of the Diagnostic Storage Account.
  final pulumi.Input<String> connectionString;
  /// Resource ID of the Diagnostic Storage Account.
  final pulumi.Input<String> id;

  /// Creates a new [IotHubDeviceUpdateInstanceDiagnosticStorageAccount].
  /// [connectionString] Connection String of the Diagnostic Storage Account.
  /// [id] Resource ID of the Diagnostic Storage Account.
  IotHubDeviceUpdateInstanceDiagnosticStorageAccount({
    required this.connectionString,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': connectionString,
      'id': id,
    };
  }

  factory IotHubDeviceUpdateInstanceDiagnosticStorageAccount.fromMap(Map<String, dynamic> map) {
    return IotHubDeviceUpdateInstanceDiagnosticStorageAccount(
      connectionString: (map['connectionString'] as String).input(),
      id: (map['id'] as String).input(),
    );
  }
}

