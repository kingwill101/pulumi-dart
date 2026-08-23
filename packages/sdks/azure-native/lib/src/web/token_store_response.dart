// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'blob_storage_token_store_response.dart';
import 'file_system_token_store_response.dart';

/// The configuration settings of the token store.
class TokenStoreResponse {
  /// The configuration settings of the storage of the tokens if blob storage is used.
  final pulumi.Input<BlobStorageTokenStoreResponse>? azureBlobStorage;
  /// &lt;code&gt;true&lt;/code&gt; to durably store platform-specific security tokens that are obtained during login flows; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// The default is &lt;code&gt;false&lt;/code&gt;.
  final pulumi.Input<bool>? enabled;
  /// The configuration settings of the storage of the tokens if a file system is used.
  final pulumi.Input<FileSystemTokenStoreResponse>? fileSystem;
  /// The number of hours after session token expiration that a session token can be used to
  /// call the token refresh API. The default is 72 hours.
  final pulumi.Input<double>? tokenRefreshExtensionHours;

  /// Creates a new [TokenStoreResponse].
  /// [azureBlobStorage] The configuration settings of the storage of the tokens if blob storage is used.
  /// [enabled] &lt;code&gt;true&lt;/code&gt; to durably store platform-specific security tokens that are obtained during login flows; otherwise, &lt;code&gt;false&lt;/code&gt;.
  /// [fileSystem] The configuration settings of the storage of the tokens if a file system is used.
  /// [tokenRefreshExtensionHours] The number of hours after session token expiration that a session token can be used to
  const TokenStoreResponse({
    this.azureBlobStorage,
    this.enabled,
    this.fileSystem,
    this.tokenRefreshExtensionHours,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureBlobStorage': ?pulumi.Input.mapOptionalInputValue<BlobStorageTokenStoreResponse, Map<String, dynamic>>(azureBlobStorage, (value) => value.toMap()),
      'enabled': ?enabled,
      'fileSystem': ?pulumi.Input.mapOptionalInputValue<FileSystemTokenStoreResponse, Map<String, dynamic>>(fileSystem, (value) => value.toMap()),
      'tokenRefreshExtensionHours': ?tokenRefreshExtensionHours,
    };
  }

  factory TokenStoreResponse.fromMap(Map<String, dynamic> map) {
    return TokenStoreResponse(
      azureBlobStorage: (() { final guardedValue = map['azureBlobStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BlobStorageTokenStoreResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      fileSystem: (() { final guardedValue = map['fileSystem']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FileSystemTokenStoreResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tokenRefreshExtensionHours: (() { final guardedValue = map['tokenRefreshExtensionHours']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
