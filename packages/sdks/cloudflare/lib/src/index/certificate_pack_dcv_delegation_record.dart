// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CertificatePackDcvDelegationRecord {
  /// The CNAME record hostname for DCV delegation.
  final pulumi.Input<String?>? cname;
  /// The CNAME record target value for DCV delegation.
  final pulumi.Input<String?>? cnameTarget;
  /// The set of email addresses that the certificate authority (CA) will use to complete domain validation.
  final pulumi.Input<List<String>?>? emails;
  /// The content that the certificate authority (CA) will expect to find at the httpUrl during the domain validation.
  final pulumi.Input<String?>? httpBody;
  /// The url that will be checked during domain validation.
  final pulumi.Input<String?>? httpUrl;
  /// Status of the validation record.
  final pulumi.Input<String?>? status;
  /// The hostname that the certificate authority (CA) will check for a TXT record during domain validation .
  final pulumi.Input<String?>? txtName;
  /// The TXT record that the certificate authority (CA) will check during domain validation.
  final pulumi.Input<String?>? txtValue;

  /// Creates a new [CertificatePackDcvDelegationRecord].
  /// [cname] The CNAME record hostname for DCV delegation.
  /// [cnameTarget] The CNAME record target value for DCV delegation.
  /// [emails] The set of email addresses that the certificate authority (CA) will use to complete domain validation.
  /// [httpBody] The content that the certificate authority (CA) will expect to find at the httpUrl during the domain validation.
  /// [httpUrl] The url that will be checked during domain validation.
  /// [status] Status of the validation record.
  /// [txtName] The hostname that the certificate authority (CA) will check for a TXT record during domain validation .
  /// [txtValue] The TXT record that the certificate authority (CA) will check during domain validation.
  const CertificatePackDcvDelegationRecord({
    this.cname,
    this.cnameTarget,
    this.emails,
    this.httpBody,
    this.httpUrl,
    this.status,
    this.txtName,
    this.txtValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cname': ?cname,
      'cnameTarget': ?cnameTarget,
      'emails': ?emails,
      'httpBody': ?httpBody,
      'httpUrl': ?httpUrl,
      'status': ?status,
      'txtName': ?txtName,
      'txtValue': ?txtValue,
    };
  }

  factory CertificatePackDcvDelegationRecord.fromMap(Map<String, dynamic> map) {
    return CertificatePackDcvDelegationRecord(
      cname: (() { final guardedValue = map['cname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cnameTarget: (() { final guardedValue = map['cnameTarget']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emails: (() { final guardedValue = map['emails']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      httpBody: (() { final guardedValue = map['httpBody']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpUrl: (() { final guardedValue = map['httpUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      txtName: (() { final guardedValue = map['txtName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      txtValue: (() { final guardedValue = map['txtValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
