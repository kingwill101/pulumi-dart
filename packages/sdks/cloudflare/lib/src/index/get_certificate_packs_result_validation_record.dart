// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCertificatePacksResultValidationRecord {
  /// The CNAME record hostname for DCV delegation.
  final pulumi.Input<String> cname;
  /// The CNAME record target value for DCV delegation.
  final pulumi.Input<String> cnameTarget;
  /// The set of email addresses that the certificate authority (CA) will use to complete domain validation.
  final pulumi.Input<List<String>> emails;
  /// The content that the certificate authority (CA) will expect to find at the httpUrl during the domain validation.
  final pulumi.Input<String> httpBody;
  /// The url that will be checked during domain validation.
  final pulumi.Input<String> httpUrl;
  /// Status of the validation record.
  final pulumi.Input<String> status;
  /// The hostname that the certificate authority (CA) will check for a TXT record during domain validation .
  final pulumi.Input<String> txtName;
  /// The TXT record that the certificate authority (CA) will check during domain validation.
  final pulumi.Input<String> txtValue;

  /// Creates a new [GetCertificatePacksResultValidationRecord].
  /// [cname] The CNAME record hostname for DCV delegation.
  /// [cnameTarget] The CNAME record target value for DCV delegation.
  /// [emails] The set of email addresses that the certificate authority (CA) will use to complete domain validation.
  /// [httpBody] The content that the certificate authority (CA) will expect to find at the httpUrl during the domain validation.
  /// [httpUrl] The url that will be checked during domain validation.
  /// [status] Status of the validation record.
  /// [txtName] The hostname that the certificate authority (CA) will check for a TXT record during domain validation .
  /// [txtValue] The TXT record that the certificate authority (CA) will check during domain validation.
  const GetCertificatePacksResultValidationRecord({
    required this.cname,
    required this.cnameTarget,
    required this.emails,
    required this.httpBody,
    required this.httpUrl,
    required this.status,
    required this.txtName,
    required this.txtValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cname': cname,
      'cnameTarget': cnameTarget,
      'emails': emails,
      'httpBody': httpBody,
      'httpUrl': httpUrl,
      'status': status,
      'txtName': txtName,
      'txtValue': txtValue,
    };
  }

  factory GetCertificatePacksResultValidationRecord.fromMap(Map<String, dynamic> map) {
    return GetCertificatePacksResultValidationRecord(
      cname: pulumi.Input.fromValue(map['cname'] as String),
      cnameTarget: pulumi.Input.fromValue(map['cnameTarget'] as String),
      emails: pulumi.Input.fromValue((map['emails'] as List).cast<String>()),
      httpBody: pulumi.Input.fromValue(map['httpBody'] as String),
      httpUrl: pulumi.Input.fromValue(map['httpUrl'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      txtName: pulumi.Input.fromValue(map['txtName'] as String),
      txtValue: pulumi.Input.fromValue(map['txtValue'] as String),
    );
  }
}
