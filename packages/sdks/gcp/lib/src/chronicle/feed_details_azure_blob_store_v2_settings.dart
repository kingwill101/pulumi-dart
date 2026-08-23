// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_azure_blob_store_v2_settings_authentication.dart';

class FeedDetailsAzureBlobStoreV2Settings {
  /// A message containing fields used to authenticate with Azure Blob Storage.
  final pulumi.Input<FeedDetailsAzureBlobStoreV2SettingsAuthentication> authentication;
  /// Azure URI.
  final pulumi.Input<String> azureUri;
  /// SA that will read data, this is Storage Transfer Service SA of Customer's
  /// Tenancy Project.
  final pulumi.Input<String>? chronicleServiceAccount;
  /// Maximum File Age to ingest in days.
  final pulumi.Input<int>? maxLookbackDays;
  /// Possible values:
  /// NEVER
  /// ON_SUCCESS
  final pulumi.Input<String>? sourceDeletionOption;

  /// Creates a new [FeedDetailsAzureBlobStoreV2Settings].
  /// [authentication] A message containing fields used to authenticate with Azure Blob Storage.
  /// [azureUri] Azure URI.
  /// [chronicleServiceAccount] SA that will read data, this is Storage Transfer Service SA of Customer's
  /// [maxLookbackDays] Maximum File Age to ingest in days.
  /// [sourceDeletionOption] Possible values:
  const FeedDetailsAzureBlobStoreV2Settings({
    required this.authentication,
    required this.azureUri,
    this.chronicleServiceAccount,
    this.maxLookbackDays,
    this.sourceDeletionOption,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': pulumi.Input.mapInputValue<FeedDetailsAzureBlobStoreV2SettingsAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'azureUri': azureUri,
      'chronicleServiceAccount': ?chronicleServiceAccount,
      'maxLookbackDays': ?maxLookbackDays,
      'sourceDeletionOption': ?sourceDeletionOption,
    };
  }

  factory FeedDetailsAzureBlobStoreV2Settings.fromMap(Map<String, dynamic> map) {
    return FeedDetailsAzureBlobStoreV2Settings(
      authentication: pulumi.Input.fromValue(FeedDetailsAzureBlobStoreV2SettingsAuthentication.fromMap((map['authentication']! as Map).cast<String, dynamic>())),
      azureUri: pulumi.Input.fromValue(map['azureUri'] as String),
      chronicleServiceAccount: (() { final guardedValue = map['chronicleServiceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxLookbackDays: (() { final guardedValue = map['maxLookbackDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      sourceDeletionOption: (() { final guardedValue = map['sourceDeletionOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
