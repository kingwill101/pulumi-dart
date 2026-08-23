// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entitlement_privileged_access_gcp_iam_access.dart';

class EntitlementPrivilegedAccess {
  /// GcpIamAccess represents IAM based access control on a GCP resource. Refer to https://cloud.google.com/iam/docs to understand more about IAM.
  /// Structure is documented below.
  final pulumi.Input<EntitlementPrivilegedAccessGcpIamAccess> gcpIamAccess;

  /// Creates a new [EntitlementPrivilegedAccess].
  /// [gcpIamAccess] GcpIamAccess represents IAM based access control on a GCP resource. Refer to https://cloud.google.com/iam/docs to understand more about IAM.
  const EntitlementPrivilegedAccess({
    required this.gcpIamAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpIamAccess': pulumi.Input.mapInputValue<EntitlementPrivilegedAccessGcpIamAccess, Map<String, dynamic>>(gcpIamAccess, (value) => value.toMap()),
    };
  }

  factory EntitlementPrivilegedAccess.fromMap(Map<String, dynamic> map) {
    return EntitlementPrivilegedAccess(
      gcpIamAccess: pulumi.Input.fromValue(EntitlementPrivilegedAccessGcpIamAccess.fromMap((map['gcpIamAccess']! as Map).cast<String, dynamic>())),
    );
  }
}
