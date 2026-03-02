// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The storage configuration provides the connection details that allows the Time Series Insights service to connect to the customer storage account that is used to store the environment's data.
class Gen2StorageConfigurationInput {
  /// The name of the storage account that will hold the environment's Gen2 data.
  final pulumi.Input<String> accountName;
  /// The value of the management key that grants the Time Series Insights service write access to the storage account. This property is not shown in environment responses.
  final pulumi.Input<String> managementKey;

  /// Creates a new [Gen2StorageConfigurationInput].
  /// [accountName] The name of the storage account that will hold the environment's Gen2 data.
  /// [managementKey] The value of the management key that grants the Time Series Insights service write access to the storage account. This property is not shown in environment responses.
  Gen2StorageConfigurationInput({
    required this.accountName,
    required this.managementKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'managementKey': managementKey,
    };
  }

  factory Gen2StorageConfigurationInput.fromMap(Map<String, dynamic> map) {
    return Gen2StorageConfigurationInput(
      accountName: (map['accountName'] as String).input(),
      managementKey: (map['managementKey'] as String).input(),
    );
  }
}

