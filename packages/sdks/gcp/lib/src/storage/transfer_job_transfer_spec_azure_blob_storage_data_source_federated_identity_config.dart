// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TransferJobTransferSpecAzureBlobStorageDataSourceFederatedIdentityConfig {
  /// The client (application) ID of the application with federated credentials.
  final pulumi.Input<String> clientId;

  /// The client (directory) ID of the application with federated credentials.
  ///
  /// &lt;a name="nested_schedule_start_end_date"&gt;&lt;/a&gt;The `schedule_start_date` and `schedule_end_date` blocks support:
  final pulumi.Input<String> tenantId;

  /// Creates a new [TransferJobTransferSpecAzureBlobStorageDataSourceFederatedIdentityConfig].
  /// [clientId] The client (application) ID of the application with federated credentials.
  /// [tenantId] The client (directory) ID of the application with federated credentials.
  TransferJobTransferSpecAzureBlobStorageDataSourceFederatedIdentityConfig({
    required this.clientId,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'clientId': clientId, 'tenantId': tenantId};
  }

  factory TransferJobTransferSpecAzureBlobStorageDataSourceFederatedIdentityConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return TransferJobTransferSpecAzureBlobStorageDataSourceFederatedIdentityConfig(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}
