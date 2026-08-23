// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClientCertAuthenticationResponse {
  /// Gets or sets the certificate expiration date.
  final pulumi.Input<String>? certificateExpirationDate;
  /// Gets or sets the certificate subject name.
  final pulumi.Input<String>? certificateSubjectName;
  /// Gets or sets the certificate thumbprint.
  final pulumi.Input<String>? certificateThumbprint;
  /// Gets or sets the certificate password, return value will always be empty.
  final pulumi.Input<String>? password;
  /// Gets or sets the pfx certificate. Accepts certification in base64 encoding, return value will always be empty.
  final pulumi.Input<String>? pfx;
  /// Gets or sets the HTTP authentication type.
  /// Expected value is 'ClientCertificate'.
  final pulumi.Input<String> type;

  /// Creates a new [ClientCertAuthenticationResponse].
  /// [certificateExpirationDate] Gets or sets the certificate expiration date.
  /// [certificateSubjectName] Gets or sets the certificate subject name.
  /// [certificateThumbprint] Gets or sets the certificate thumbprint.
  /// [password] Gets or sets the certificate password, return value will always be empty.
  /// [pfx] Gets or sets the pfx certificate. Accepts certification in base64 encoding, return value will always be empty.
  /// [type] Gets or sets the HTTP authentication type.
  const ClientCertAuthenticationResponse({
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

  factory ClientCertAuthenticationResponse.fromMap(Map<String, dynamic> map) {
    return ClientCertAuthenticationResponse(
      certificateExpirationDate: (() { final guardedValue = map['certificateExpirationDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateSubjectName: (() { final guardedValue = map['certificateSubjectName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certificateThumbprint: (() { final guardedValue = map['certificateThumbprint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pfx: (() { final guardedValue = map['pfx']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
