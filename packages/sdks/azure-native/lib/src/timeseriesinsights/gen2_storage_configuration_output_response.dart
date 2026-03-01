// ignore_for_file: unused_element, unnecessary_cast


/// The storage configuration provides the non-secret connection details about the customer storage account that is used to store the environment's data.
class Gen2StorageConfigurationOutputResponse {
  /// The name of the storage account that will hold the environment's Gen2 data.
  final String accountName;

  /// Creates a new [Gen2StorageConfigurationOutputResponse].
  /// [accountName] The name of the storage account that will hold the environment's Gen2 data.
  Gen2StorageConfigurationOutputResponse({
    required this.accountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
    };
  }

  factory Gen2StorageConfigurationOutputResponse.fromMap(Map<String, dynamic> map) {
    return Gen2StorageConfigurationOutputResponse(
      accountName: map['accountName'] as String,
    );
  }
}

