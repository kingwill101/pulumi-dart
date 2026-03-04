// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The configuration settings of the storage of the tokens if blob storage is used.
class BlobStorageTokenStore {
  /// The name of the app setting containing the SAS URL of the blob storage containing the tokens.
  final pulumi.Input<String>? sasUrlSettingName;

  /// Creates a new [BlobStorageTokenStore].
  /// [sasUrlSettingName] The name of the app setting containing the SAS URL of the blob storage containing the tokens.
  BlobStorageTokenStore({this.sasUrlSettingName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'sasUrlSettingName': ?sasUrlSettingName};
  }

  factory BlobStorageTokenStore.fromMap(Map<String, dynamic> map) {
    return BlobStorageTokenStore(
      sasUrlSettingName: (() {
        final guardedValue = map['sasUrlSettingName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
