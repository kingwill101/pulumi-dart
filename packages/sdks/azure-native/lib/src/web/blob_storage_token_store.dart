// ignore_for_file: unused_element, unnecessary_cast


/// The configuration settings of the storage of the tokens if blob storage is used.
class BlobStorageTokenStore {
  /// The name of the app setting containing the SAS URL of the blob storage containing the tokens.
  final String? sasUrlSettingName;

  /// Creates a new [BlobStorageTokenStore].
  /// [sasUrlSettingName] The name of the app setting containing the SAS URL of the blob storage containing the tokens.
  BlobStorageTokenStore({
    this.sasUrlSettingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sasUrlSettingName': ?sasUrlSettingName,
    };
  }

  factory BlobStorageTokenStore.fromMap(Map<String, dynamic> map) {
    return BlobStorageTokenStore(
      sasUrlSettingName: map['sasUrlSettingName'] == null ? null : map['sasUrlSettingName'] as String,
    );
  }
}

