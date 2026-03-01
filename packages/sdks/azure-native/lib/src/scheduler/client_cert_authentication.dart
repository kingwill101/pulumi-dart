// ignore_for_file: unused_element, unnecessary_cast


class ClientCertAuthentication {
  /// Gets or sets the certificate expiration date.
  final String? certificateExpirationDate;
  /// Gets or sets the certificate subject name.
  final String? certificateSubjectName;
  /// Gets or sets the certificate thumbprint.
  final String? certificateThumbprint;
  /// Gets or sets the certificate password, return value will always be empty.
  final String? password;
  /// Gets or sets the pfx certificate. Accepts certification in base64 encoding, return value will always be empty.
  final String? pfx;
  /// Gets or sets the HTTP authentication type.
  /// Expected value is 'ClientCertificate'.
  final String type;

  /// Creates a new [ClientCertAuthentication].
  /// [certificateExpirationDate] Gets or sets the certificate expiration date.
  /// [certificateSubjectName] Gets or sets the certificate subject name.
  /// [certificateThumbprint] Gets or sets the certificate thumbprint.
  /// [password] Gets or sets the certificate password, return value will always be empty.
  /// [pfx] Gets or sets the pfx certificate. Accepts certification in base64 encoding, return value will always be empty.
  /// [type] Gets or sets the HTTP authentication type.
  ClientCertAuthentication({
    this.certificateExpirationDate,
    this.certificateSubjectName,
    this.certificateThumbprint,
    this.password,
    this.pfx,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateExpirationDate': ?certificateExpirationDate,
      'certificateSubjectName': ?certificateSubjectName,
      'certificateThumbprint': ?certificateThumbprint,
      'password': ?password,
      'pfx': ?pfx,
      'type': type,
    };
  }

  factory ClientCertAuthentication.fromMap(Map<String, dynamic> map) {
    return ClientCertAuthentication(
      certificateExpirationDate: map['certificateExpirationDate'] == null ? null : map['certificateExpirationDate'] as String,
      certificateSubjectName: map['certificateSubjectName'] == null ? null : map['certificateSubjectName'] as String,
      certificateThumbprint: map['certificateThumbprint'] == null ? null : map['certificateThumbprint'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      pfx: map['pfx'] == null ? null : map['pfx'] as String,
      type: map['type'] as String,
    );
  }
}

