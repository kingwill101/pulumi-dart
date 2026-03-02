// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCertificate.
class GetCertificateResult {
  /// The expiration date for the certificate.
  final String expirationDate;
  /// The friendly name of the certificate.
  final String friendlyName;
  /// List of host names the certificate applies to.
  final List<String> hostNames;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The issue date for the certificate.
  final String issueDate;
  /// The name of the certificate issuer.
  final String issuer;
  final String location;
  final String name;
  final String resourceGroupName;
  /// The subject name of the certificate.
  final String subjectName;
  final Map<String, String>? tags;
  /// The thumbprint for the certificate.
  final String thumbprint;

  /// Creates a new [GetCertificateResult].
  /// [expirationDate] The expiration date for the certificate.
  /// [friendlyName] The friendly name of the certificate.
  /// [hostNames] List of host names the certificate applies to.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [issueDate] The issue date for the certificate.
  /// [issuer] The name of the certificate issuer.
  /// [location] Required.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [subjectName] The subject name of the certificate.
  /// [tags] Optional.
  /// [thumbprint] The thumbprint for the certificate.
  GetCertificateResult({
    required this.expirationDate,
    required this.friendlyName,
    required this.hostNames,
    required this.id,
    required this.issueDate,
    required this.issuer,
    required this.location,
    required this.name,
    required this.resourceGroupName,
    required this.subjectName,
    this.tags,
    required this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationDate': expirationDate,
      'friendlyName': friendlyName,
      'hostNames': hostNames,
      'id': id,
      'issueDate': issueDate,
      'issuer': issuer,
      'location': location,
      'name': name,
      'resourceGroupName': resourceGroupName,
      'subjectName': subjectName,
      'tags': ?tags,
      'thumbprint': thumbprint,
    };
  }

  factory GetCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult(
      expirationDate: map['expirationDate'] as String,
      friendlyName: map['friendlyName'] as String,
      hostNames: (map['hostNames'] as List).cast<String>(),
      id: map['id'] as String,
      issueDate: map['issueDate'] as String,
      issuer: map['issuer'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      subjectName: map['subjectName'] as String,
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      thumbprint: map['thumbprint'] as String,
    );
  }
}

