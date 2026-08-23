// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getEnvironmentCertificate.
class GetEnvironmentCertificateResult {
  final String containerAppEnvironmentId;
  /// The expiration date for the Certificate.
  final String expirationDate;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The date of issue for the Certificate.
  final String issueDate;
  /// The Certificate Issuer.
  final String issuer;
  final String name;
  /// The Subject Name for the Certificate.
  final String subjectName;
  /// A mapping of tags assigned to the resource.
  final Map<String, String> tags;
  /// The Thumbprint of the Certificate.
  final String thumbprint;

  /// Creates a new [GetEnvironmentCertificateResult].
  /// [containerAppEnvironmentId] Required.
  /// [expirationDate] The expiration date for the Certificate.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [issueDate] The date of issue for the Certificate.
  /// [issuer] The Certificate Issuer.
  /// [name] Required.
  /// [subjectName] The Subject Name for the Certificate.
  /// [tags] A mapping of tags assigned to the resource.
  /// [thumbprint] The Thumbprint of the Certificate.
  const GetEnvironmentCertificateResult({
    required this.containerAppEnvironmentId,
    required this.expirationDate,
    required this.id,
    required this.issueDate,
    required this.issuer,
    required this.name,
    required this.subjectName,
    required this.tags,
    required this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerAppEnvironmentId': containerAppEnvironmentId,
      'expirationDate': expirationDate,
      'id': id,
      'issueDate': issueDate,
      'issuer': issuer,
      'name': name,
      'subjectName': subjectName,
      'tags': tags,
      'thumbprint': thumbprint,
    };
  }

  factory GetEnvironmentCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentCertificateResult(
      containerAppEnvironmentId: map['containerAppEnvironmentId'] as String,
      expirationDate: map['expirationDate'] as String,
      id: map['id'] as String,
      issueDate: map['issueDate'] as String,
      issuer: map['issuer'] as String,
      name: map['name'] as String,
      subjectName: map['subjectName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      thumbprint: map['thumbprint'] as String,
    );
  }
}
