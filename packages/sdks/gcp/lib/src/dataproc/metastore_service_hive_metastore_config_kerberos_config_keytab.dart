// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MetastoreServiceHiveMetastoreConfigKerberosConfigKeytab {
  /// The relative resource name of a Secret Manager secret version, in the following form:
  /// "projects/{projectNumber}/secrets/{secret_id}/versions/{version_id}".
  final pulumi.Input<String> cloudSecret;

  /// Creates a new [MetastoreServiceHiveMetastoreConfigKerberosConfigKeytab].
  /// [cloudSecret] The relative resource name of a Secret Manager secret version, in the following form:
  MetastoreServiceHiveMetastoreConfigKerberosConfigKeytab({
    required this.cloudSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'cloudSecret': cloudSecret};
  }

  factory MetastoreServiceHiveMetastoreConfigKerberosConfigKeytab.fromMap(
    Map<String, dynamic> map,
  ) {
    return MetastoreServiceHiveMetastoreConfigKerberosConfigKeytab(
      cloudSecret: pulumi.Input.fromValue(map['cloudSecret'] as String),
    );
  }
}
