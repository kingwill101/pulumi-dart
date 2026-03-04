// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The storage configuration provides the non-secret connection details about the customer storage account that is used to store the environment's data.
class Gen2StorageConfigurationOutputResponse {
  /// The name of the storage account that will hold the environment's Gen2 data.
  final pulumi.Input<String> accountName;

  /// Creates a new [Gen2StorageConfigurationOutputResponse].
  /// [accountName] The name of the storage account that will hold the environment's Gen2 data.
  Gen2StorageConfigurationOutputResponse({required this.accountName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'accountName': accountName};
  }

  factory Gen2StorageConfigurationOutputResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return Gen2StorageConfigurationOutputResponse(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
    );
  }
}
