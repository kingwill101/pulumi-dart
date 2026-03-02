// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_metastore_v1alpha.dart';

/// Configuration information for a Kerberos principal.
class KerberosConfigMetastoreV1alpha {
  /// A Kerberos keytab file that can be used to authenticate a service principal with a Kerberos Key Distribution Center (KDC).
  final pulumi.Input<SecretMetastoreV1alpha>? keytab;
  /// A Cloud Storage URI that specifies the path to a krb5.conf file. It is of the form gs://{bucket_name}/path/to/krb5.conf, although the file does not need to be named krb5.conf explicitly.
  final pulumi.Input<String>? krb5ConfigGcsUri;
  /// A Kerberos principal that exists in the both the keytab the KDC to authenticate as. A typical principal is of the form primary/instance@REALM, but there is no exact format.
  final pulumi.Input<String>? principal;

  /// Creates a new [KerberosConfigMetastoreV1alpha].
  /// [keytab] A Kerberos keytab file that can be used to authenticate a service principal with a Kerberos Key Distribution Center (KDC).
  /// [krb5ConfigGcsUri] A Cloud Storage URI that specifies the path to a krb5.conf file. It is of the form gs://{bucket_name}/path/to/krb5.conf, although the file does not need to be named krb5.conf explicitly.
  /// [principal] A Kerberos principal that exists in the both the keytab the KDC to authenticate as. A typical principal is of the form primary/instance@REALM, but there is no exact format.
  KerberosConfigMetastoreV1alpha({
    this.keytab,
    this.krb5ConfigGcsUri,
    this.principal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keytab': ?pulumi.Input.mapOptionalInputValue<SecretMetastoreV1alpha, Map<String, dynamic>>(keytab, (value) => value.toMap()),
      'krb5ConfigGcsUri': ?krb5ConfigGcsUri,
      'principal': ?principal,
    };
  }

  factory KerberosConfigMetastoreV1alpha.fromMap(Map<String, dynamic> map) {
    return KerberosConfigMetastoreV1alpha(
      keytab: map['keytab'] == null ? null : (SecretMetastoreV1alpha.fromMap((map['keytab'] as Map).cast<String, dynamic>())).input(),
      krb5ConfigGcsUri: map['krb5ConfigGcsUri'] == null ? null : (map['krb5ConfigGcsUri'] as String).input(),
      principal: map['principal'] == null ? null : (map['principal'] as String).input(),
    );
  }
}

