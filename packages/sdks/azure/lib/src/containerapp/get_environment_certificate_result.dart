// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEnvironmentCertificate.
class GetEnvironmentCertificateResult {
  final String? containerAppEnvironmentId;
  /// The expiration date for the Certificate.
  final String? expirationDate;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The date of issue for the Certificate.
  final String? issueDate;
  /// The Certificate Issuer.
  final String? issuer;
  final String? name;
  /// The Subject Name for the Certificate.
  final String? subjectName;
  /// A mapping of tags assigned to the resource.
  final Map<String, String>? tags;
  /// The Thumbprint of the Certificate.
  final String? thumbprint;

  /// Creates a new [GetEnvironmentCertificateResult].
  /// [containerAppEnvironmentId] Optional.
  /// [expirationDate] The expiration date for the Certificate.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [issueDate] The date of issue for the Certificate.
  /// [issuer] The Certificate Issuer.
  /// [name] Optional.
  /// [subjectName] The Subject Name for the Certificate.
  /// [tags] A mapping of tags assigned to the resource.
  /// [thumbprint] The Thumbprint of the Certificate.
  const GetEnvironmentCertificateResult({
    this.containerAppEnvironmentId,
    this.expirationDate,
    this.id,
    this.issueDate,
    this.issuer,
    this.name,
    this.subjectName,
    this.tags,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAppEnvironmentId': ?containerAppEnvironmentId,
      'expirationDate': ?expirationDate,
      'id': ?id,
      'issueDate': ?issueDate,
      'issuer': ?issuer,
      'name': ?name,
      'subjectName': ?subjectName,
      'tags': ?tags,
      'thumbprint': ?thumbprint,
    };
  }

  factory GetEnvironmentCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentCertificateResult(
      containerAppEnvironmentId: (() { final guardedValue = map['containerAppEnvironmentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expirationDate: (() { final guardedValue = map['expirationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      issueDate: (() { final guardedValue = map['issueDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      issuer: (() { final guardedValue = map['issuer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subjectName: (() { final guardedValue = map['subjectName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
