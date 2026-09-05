// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCertificate.
class GetCertificateResult {
  /// The expiration date for the certificate.
  final String? expirationDate;
  /// The friendly name of the certificate.
  final String? friendlyName;
  /// List of host names the certificate applies to.
  final List<String>? hostNames;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The issue date for the certificate.
  final String? issueDate;
  /// The name of the certificate issuer.
  final String? issuer;
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// The subject name of the certificate.
  final String? subjectName;
  final Map<String, String>? tags;
  /// The thumbprint for the certificate.
  final String? thumbprint;

  /// Creates a new [GetCertificateResult].
  /// [expirationDate] The expiration date for the certificate.
  /// [friendlyName] The friendly name of the certificate.
  /// [hostNames] List of host names the certificate applies to.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [issueDate] The issue date for the certificate.
  /// [issuer] The name of the certificate issuer.
  /// [location] Optional.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [subjectName] The subject name of the certificate.
  /// [tags] Optional.
  /// [thumbprint] The thumbprint for the certificate.
  const GetCertificateResult({
    this.expirationDate,
    this.friendlyName,
    this.hostNames,
    this.id,
    this.issueDate,
    this.issuer,
    this.location,
    this.name,
    this.resourceGroupName,
    this.subjectName,
    this.tags,
    this.thumbprint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationDate': ?expirationDate,
      'friendlyName': ?friendlyName,
      'hostNames': ?hostNames,
      'id': ?id,
      'issueDate': ?issueDate,
      'issuer': ?issuer,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'subjectName': ?subjectName,
      'tags': ?tags,
      'thumbprint': ?thumbprint,
    };
  }

  factory GetCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult(
      expirationDate: (() { final guardedValue = map['expirationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostNames: (() { final guardedValue = map['hostNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      issueDate: (() { final guardedValue = map['issueDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      issuer: (() { final guardedValue = map['issuer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subjectName: (() { final guardedValue = map['subjectName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      thumbprint: (() { final guardedValue = map['thumbprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
