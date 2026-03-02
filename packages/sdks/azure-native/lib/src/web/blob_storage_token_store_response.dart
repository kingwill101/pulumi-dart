// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration settings of the storage of the tokens if blob storage is used.
class BlobStorageTokenStoreResponse {
  /// The name of the app setting containing the SAS URL of the blob storage containing the tokens.
  final pulumi.Input<String>? sasUrlSettingName;

  /// Creates a new [BlobStorageTokenStoreResponse].
  /// [sasUrlSettingName] The name of the app setting containing the SAS URL of the blob storage containing the tokens.
  BlobStorageTokenStoreResponse({
    this.sasUrlSettingName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sasUrlSettingName': ?sasUrlSettingName,
    };
  }

  factory BlobStorageTokenStoreResponse.fromMap(Map<String, dynamic> map) {
    return BlobStorageTokenStoreResponse(
      sasUrlSettingName: map['sasUrlSettingName'] == null ? null : (map['sasUrlSettingName']! as String).input(),
    );
  }
}

