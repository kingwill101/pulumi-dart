// ignore_for_file: unused_element, unnecessary_cast


class GetMetastoreServiceHiveMetastoreConfigKerberosConfigKeytab {
  /// The relative resource name of a Secret Manager secret version, in the following form:
  ///
  /// "projects/{projectNumber}/secrets/{secret_id}/versions/{version_id}".
  final String cloudSecret;

  /// Creates a new [GetMetastoreServiceHiveMetastoreConfigKerberosConfigKeytab].
  /// [cloudSecret] The relative resource name of a Secret Manager secret version, in the following form:
  GetMetastoreServiceHiveMetastoreConfigKerberosConfigKeytab({
    required this.cloudSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudSecret': cloudSecret,
    };
  }

  factory GetMetastoreServiceHiveMetastoreConfigKerberosConfigKeytab.fromMap(Map<String, dynamic> map) {
    return GetMetastoreServiceHiveMetastoreConfigKerberosConfigKeytab(
      cloudSecret: map['cloudSecret'] as String,
    );
  }
}

