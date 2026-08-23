// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_azure_blob_store_settings_authentication.dart';

class FeedDetailsAzureBlobStoreSettings {
  /// Azure auth.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsAzureBlobStoreSettingsAuthentication>? authentication;
  /// Azure URI.
  final pulumi.Input<String>? azureUri;
  /// Possible values:
  /// SOURCE_DELETION_NEVER
  /// SOURCE_DELETION_ON_SUCCESS
  /// SOURCE_DELETION_ON_SUCCESS_FILES_ONLY
  final pulumi.Input<String>? sourceDeletionOption;
  /// Possible values:
  /// FILES
  /// FOLDERS
  /// FOLDERS_RECURSIVE
  final pulumi.Input<String>? sourceType;

  /// Creates a new [FeedDetailsAzureBlobStoreSettings].
  /// [authentication] Azure auth.
  /// [azureUri] Azure URI.
  /// [sourceDeletionOption] Possible values:
  /// [sourceType] Possible values:
  const FeedDetailsAzureBlobStoreSettings({
    this.authentication,
    this.azureUri,
    this.sourceDeletionOption,
    this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<FeedDetailsAzureBlobStoreSettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'azureUri': ?azureUri,
      'sourceDeletionOption': ?sourceDeletionOption,
      'sourceType': ?sourceType,
    };
  }

  factory FeedDetailsAzureBlobStoreSettings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsAzureBlobStoreSettings(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeedDetailsAzureBlobStoreSettingsAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      azureUri: (() { final guardedValue = map['azureUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceDeletionOption: (() { final guardedValue = map['sourceDeletionOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceType: (() { final guardedValue = map['sourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
