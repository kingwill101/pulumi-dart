// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// **Cloud Audit Logging**: Spec for Audit Logging Allowlisting.
class CloudAuditLoggingFeatureSpecResponse {
  /// Service account that should be allowlisted to send the audit logs; eg cloudauditlogging@gcp-project.iam.gserviceaccount.com. These accounts must already exist, but do not need to have any permissions granted to them. The customer's entitlements will be checked prior to allowlisting (i.e. the customer must be an Anthos customer.)
  final pulumi.Input<List<String>> allowlistedServiceAccounts;

  /// Creates a new [CloudAuditLoggingFeatureSpecResponse].
  /// [allowlistedServiceAccounts] Service account that should be allowlisted to send the audit logs; eg cloudauditlogging@gcp-project.iam.gserviceaccount.com. These accounts must already exist, but do not need to have any permissions granted to them. The customer's entitlements will be checked prior to allowlisting (i.e. the customer must be an Anthos customer.)
  CloudAuditLoggingFeatureSpecResponse({
    required this.allowlistedServiceAccounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowlistedServiceAccounts': allowlistedServiceAccounts,
    };
  }

  factory CloudAuditLoggingFeatureSpecResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return CloudAuditLoggingFeatureSpecResponse(
      allowlistedServiceAccounts: pulumi.Input.fromValue(
        (map['allowlistedServiceAccounts'] as List).cast<String>(),
      ),
    );
  }
}
