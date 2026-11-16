// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ZeroTrustCasbIntegrationGoogleWorkspaceGoogleDomainWideDelegationServiceAccount {
  /// A Google Workspace super administrator email address.
  final pulumi.Input<String> administratorEmail;
  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// Contents of a Google service account JSON key file. This value is write-only and is never persisted to Terraform state.
  final pulumi.Input<String> serviceAccountKeyJson;

  /// Creates a new [ZeroTrustCasbIntegrationGoogleWorkspaceGoogleDomainWideDelegationServiceAccount].
  /// [administratorEmail] A Google Workspace super administrator email address.
  /// [serviceAccountKeyJson] **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  const ZeroTrustCasbIntegrationGoogleWorkspaceGoogleDomainWideDelegationServiceAccount({
    required this.administratorEmail,
    required this.serviceAccountKeyJson,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administratorEmail': administratorEmail,
      'serviceAccountKeyJson': serviceAccountKeyJson,
    };
  }

  factory ZeroTrustCasbIntegrationGoogleWorkspaceGoogleDomainWideDelegationServiceAccount.fromMap(Map<String, dynamic> map) {
    return ZeroTrustCasbIntegrationGoogleWorkspaceGoogleDomainWideDelegationServiceAccount(
      administratorEmail: pulumi.Input.fromValue(map['administratorEmail'] as String),
      serviceAccountKeyJson: pulumi.Input.fromValue(map['serviceAccountKeyJson'] as String),
    );
  }
}
