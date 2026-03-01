// ignore_for_file: unused_element, unnecessary_cast


/// A2A disk input details.
class A2AVmDiskInputDetails {
  /// The disk Uri.
  final String diskUri;
  /// The primary staging storage account Id.
  final String primaryStagingAzureStorageAccountId;
  /// The recovery VHD storage account Id.
  final String recoveryAzureStorageAccountId;

  /// Creates a new [A2AVmDiskInputDetails].
  /// [diskUri] The disk Uri.
  /// [primaryStagingAzureStorageAccountId] The primary staging storage account Id.
  /// [recoveryAzureStorageAccountId] The recovery VHD storage account Id.
  A2AVmDiskInputDetails({
    required this.diskUri,
    required this.primaryStagingAzureStorageAccountId,
    required this.recoveryAzureStorageAccountId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskUri': diskUri,
      'primaryStagingAzureStorageAccountId': primaryStagingAzureStorageAccountId,
      'recoveryAzureStorageAccountId': recoveryAzureStorageAccountId,
    };
  }

  factory A2AVmDiskInputDetails.fromMap(Map<String, dynamic> map) {
    return A2AVmDiskInputDetails(
      diskUri: map['diskUri'] as String,
      primaryStagingAzureStorageAccountId: map['primaryStagingAzureStorageAccountId'] as String,
      recoveryAzureStorageAccountId: map['recoveryAzureStorageAccountId'] as String,
    );
  }
}

