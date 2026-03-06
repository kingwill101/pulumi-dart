// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_response.dart';

/// Configuration information for a Kerberos principal.
class KerberosConfigResponse {
  /// A Kerberos keytab file that can be used to authenticate a service principal with a Kerberos Key Distribution Center (KDC).
  final pulumi.Input<SecretResponse> keytab;
  /// A Cloud Storage URI that specifies the path to a krb5.conf file. It is of the form gs://{bucket_name}/path/to/krb5.conf, although the file does not need to be named krb5.conf explicitly.
  final pulumi.Input<String> krb5ConfigGcsUri;
  /// A Kerberos principal that exists in the both the keytab the KDC to authenticate as. A typical principal is of the form primary/instance@REALM, but there is no exact format.
  final pulumi.Input<String> principal;

  /// Creates a new [KerberosConfigResponse].
  /// [keytab] A Kerberos keytab file that can be used to authenticate a service principal with a Kerberos Key Distribution Center (KDC).
  /// [krb5ConfigGcsUri] A Cloud Storage URI that specifies the path to a krb5.conf file. It is of the form gs://{bucket_name}/path/to/krb5.conf, although the file does not need to be named krb5.conf explicitly.
  /// [principal] A Kerberos principal that exists in the both the keytab the KDC to authenticate as. A typical principal is of the form primary/instance@REALM, but there is no exact format.
  const KerberosConfigResponse({
    required this.keytab,
    required this.krb5ConfigGcsUri,
    required this.principal,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keytab': pulumi.Input.mapInputValue<SecretResponse, Map<String, dynamic>>(keytab, (value) => value.toMap()),
      'krb5ConfigGcsUri': krb5ConfigGcsUri,
      'principal': principal,
    };
  }

  factory KerberosConfigResponse.fromMap(Map<String, dynamic> map) {
    return KerberosConfigResponse(
      keytab: pulumi.Input.fromValue(SecretResponse.fromMap((map['keytab']! as Map).cast<String, dynamic>())),
      krb5ConfigGcsUri: pulumi.Input.fromValue(map['krb5ConfigGcsUri'] as String),
      principal: pulumi.Input.fromValue(map['principal'] as String),
    );
  }
}

