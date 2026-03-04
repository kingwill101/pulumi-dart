// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metastore_service_hive_metastore_config_kerberos_config_keytab.dart';

class MetastoreServiceHiveMetastoreConfigKerberosConfig {
  /// A Kerberos keytab file that can be used to authenticate a service principal with a Kerberos Key Distribution Center (KDC).
  /// Structure is documented below.
  final pulumi.Input<MetastoreServiceHiveMetastoreConfigKerberosConfigKeytab>
  keytab;

  /// A Cloud Storage URI that specifies the path to a krb5.conf file. It is of the form gs://{bucket_name}/path/to/krb5.conf, although the file does not need to be named krb5.conf explicitly.
  final pulumi.Input<String> krb5ConfigGcsUri;

  /// A Kerberos principal that exists in the both the keytab the KDC to authenticate as. A typical principal is of the form "primary/instance@REALM", but there is no exact format.
  final pulumi.Input<String> principal;

  /// Creates a new [MetastoreServiceHiveMetastoreConfigKerberosConfig].
  /// [keytab] A Kerberos keytab file that can be used to authenticate a service principal with a Kerberos Key Distribution Center (KDC).
  /// [krb5ConfigGcsUri] A Cloud Storage URI that specifies the path to a krb5.conf file. It is of the form gs://{bucket_name}/path/to/krb5.conf, although the file does not need to be named krb5.conf explicitly.
  /// [principal] A Kerberos principal that exists in the both the keytab the KDC to authenticate as. A typical principal is of the form "primary/instance@REALM", but there is no exact format.
  MetastoreServiceHiveMetastoreConfigKerberosConfig({
    required this.keytab,
    required this.krb5ConfigGcsUri,
    required this.principal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keytab':
          pulumi.Input.mapInputValue<
            MetastoreServiceHiveMetastoreConfigKerberosConfigKeytab,
            Map<String, dynamic>
          >(keytab, (value) => value.toMap()),
      'krb5ConfigGcsUri': krb5ConfigGcsUri,
      'principal': principal,
    };
  }

  factory MetastoreServiceHiveMetastoreConfigKerberosConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return MetastoreServiceHiveMetastoreConfigKerberosConfig(
      keytab: pulumi.Input.fromValue(
        MetastoreServiceHiveMetastoreConfigKerberosConfigKeytab.fromMap(
          (map['keytab']! as Map).cast<String, dynamic>(),
        ),
      ),
      krb5ConfigGcsUri: pulumi.Input.fromValue(
        map['krb5ConfigGcsUri'] as String,
      ),
      principal: pulumi.Input.fromValue(map['principal'] as String),
    );
  }
}
