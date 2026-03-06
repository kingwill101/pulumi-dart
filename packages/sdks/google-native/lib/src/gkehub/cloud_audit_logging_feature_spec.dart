// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// **Cloud Audit Logging**: Spec for Audit Logging Allowlisting.
class CloudAuditLoggingFeatureSpec {
  /// Service account that should be allowlisted to send the audit logs; eg cloudauditlogging@gcp-project.iam.gserviceaccount.com. These accounts must already exist, but do not need to have any permissions granted to them. The customer's entitlements will be checked prior to allowlisting (i.e. the customer must be an Anthos customer.)
  final pulumi.Input<List<String>>? allowlistedServiceAccounts;

  /// Creates a new [CloudAuditLoggingFeatureSpec].
  /// [allowlistedServiceAccounts] Service account that should be allowlisted to send the audit logs; eg cloudauditlogging@gcp-project.iam.gserviceaccount.com. These accounts must already exist, but do not need to have any permissions granted to them. The customer's entitlements will be checked prior to allowlisting (i.e. the customer must be an Anthos customer.)
  const CloudAuditLoggingFeatureSpec({
    this.allowlistedServiceAccounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowlistedServiceAccounts': ?allowlistedServiceAccounts,
    };
  }

  factory CloudAuditLoggingFeatureSpec.fromMap(Map<String, dynamic> map) {
    return CloudAuditLoggingFeatureSpec(
      allowlistedServiceAccounts: (() { final guardedValue = map['allowlistedServiceAccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

