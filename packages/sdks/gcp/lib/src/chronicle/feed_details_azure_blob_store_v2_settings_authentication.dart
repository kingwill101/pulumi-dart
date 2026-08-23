// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feed_details_azure_blob_store_v2_settings_authentication_azure_v2_workload_identity_federation.dart';

class FeedDetailsAzureBlobStoreV2SettingsAuthentication {
  /// Access Key also known as shared key.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final pulumi.Input<String> accessKey;
  /// Azure V2 Workload Identity Federation.
  /// Structure is documented below.
  final pulumi.Input<FeedDetailsAzureBlobStoreV2SettingsAuthenticationAzureV2WorkloadIdentityFederation> azureV2WorkloadIdentityFederation;
  /// SAS Token.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  ///
  ///
  /// &lt;a name="nestedDetailsAzureBlobStoreV2SettingsAuthenticationAzureV2WorkloadIdentityFederation"&gt;&lt;/a&gt;The `azureV2WorkloadIdentityFederation` block supports:
  final pulumi.Input<String> sasToken;

  /// Creates a new [FeedDetailsAzureBlobStoreV2SettingsAuthentication].
  /// [accessKey] Access Key also known as shared key.
  /// [azureV2WorkloadIdentityFederation] Azure V2 Workload Identity Federation.
  /// [sasToken] SAS Token.
  const FeedDetailsAzureBlobStoreV2SettingsAuthentication({
    required this.accessKey,
    required this.azureV2WorkloadIdentityFederation,
    required this.sasToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': accessKey,
      'azureV2WorkloadIdentityFederation': pulumi.Input.mapInputValue<FeedDetailsAzureBlobStoreV2SettingsAuthenticationAzureV2WorkloadIdentityFederation, Map<String, dynamic>>(azureV2WorkloadIdentityFederation, (value) => value.toMap()),
      'sasToken': sasToken,
    };
  }

  factory FeedDetailsAzureBlobStoreV2SettingsAuthentication.fromMap(Map<String, dynamic> map) {
    return FeedDetailsAzureBlobStoreV2SettingsAuthentication(
      accessKey: pulumi.Input.fromValue(map['accessKey'] as String),
      azureV2WorkloadIdentityFederation: pulumi.Input.fromValue(FeedDetailsAzureBlobStoreV2SettingsAuthenticationAzureV2WorkloadIdentityFederation.fromMap((map['azureV2WorkloadIdentityFederation']! as Map).cast<String, dynamic>())),
      sasToken: pulumi.Input.fromValue(map['sasToken'] as String),
    );
  }
}
