// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeedDetailsAzureBlobStoreV2SettingsAuthenticationAzureV2WorkloadIdentityFederation {
  /// OAuth client ID.
  final pulumi.Input<String> clientId;
  /// Subject ID of the Azure subscription.
  final pulumi.Input<String> subjectId;
  /// Tenant ID.
  final pulumi.Input<String> tenantId;

  /// Creates a new [FeedDetailsAzureBlobStoreV2SettingsAuthenticationAzureV2WorkloadIdentityFederation].
  /// [clientId] OAuth client ID.
  /// [subjectId] Subject ID of the Azure subscription.
  /// [tenantId] Tenant ID.
  const FeedDetailsAzureBlobStoreV2SettingsAuthenticationAzureV2WorkloadIdentityFederation({
    required this.clientId,
    required this.subjectId,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'subjectId': subjectId,
      'tenantId': tenantId,
    };
  }

  factory FeedDetailsAzureBlobStoreV2SettingsAuthenticationAzureV2WorkloadIdentityFederation.fromMap(Map<String, dynamic> map) {
    return FeedDetailsAzureBlobStoreV2SettingsAuthenticationAzureV2WorkloadIdentityFederation(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      subjectId: pulumi.Input.fromValue(map['subjectId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
    );
  }
}
