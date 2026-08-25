// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedDetailsAzureBlobStoreSettingsAuthentication {
  /// SAS Token.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  ///
  ///
  /// &lt;a name="nestedDetailsAzureBlobStoreV2SettingsAuthenticationAzureV2WorkloadIdentityFederation"&gt;&lt;/a&gt;The `azureV2WorkloadIdentityFederation` block supports:
  final pulumi.Input<String?>? sasToken;
  /// Shared Key.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  ///
  /// &lt;a name="nestedDetailsAzureBlobStoreV2Settings"&gt;&lt;/a&gt;The `azureBlobStoreV2Settings` block supports:
  final pulumi.Input<String?>? sharedKey;

  /// Creates a new [FeedDetailsAzureBlobStoreSettingsAuthentication].
  /// [sasToken] SAS Token.
  /// [sharedKey] Shared Key.
  const FeedDetailsAzureBlobStoreSettingsAuthentication({
    this.sasToken,
    this.sharedKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sasToken': ?sasToken,
      'sharedKey': ?sharedKey,
    };
  }

  factory FeedDetailsAzureBlobStoreSettingsAuthentication.fromMap(Map<String, dynamic> map) {
    return FeedDetailsAzureBlobStoreSettingsAuthentication(
      sasToken: (() { final guardedValue = map['sasToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sharedKey: (() { final guardedValue = map['sharedKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
