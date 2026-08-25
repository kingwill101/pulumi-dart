// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCertificate.
class GetCertificateResult {
  final String? certificate;
  final int? certificateId;
  final String? creationTimestamp;
  final String? deletionPolicy;
  final String? description;
  final String? expireTime;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? namePrefix;
  final String? privateKey;
  final String? privateKeyWo;
  final String? privateKeyWoVersion;
  final String? project;
  final String? selfLink;

  /// Creates a new [GetCertificateResult].
  /// [certificate] Optional.
  /// [certificateId] Optional.
  /// [creationTimestamp] Optional.
  /// [deletionPolicy] Optional.
  /// [description] Optional.
  /// [expireTime] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [namePrefix] Optional.
  /// [privateKey] Optional.
  /// [privateKeyWo] Optional.
  /// [privateKeyWoVersion] Optional.
  /// [project] Optional.
  /// [selfLink] Optional.
  const GetCertificateResult({
    this.certificate,
    this.certificateId,
    this.creationTimestamp,
    this.deletionPolicy,
    this.description,
    this.expireTime,
    this.id,
    this.name,
    this.namePrefix,
    this.privateKey,
    this.privateKeyWo,
    this.privateKeyWoVersion,
    this.project,
    this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'certificateId': ?certificateId,
      'creationTimestamp': ?creationTimestamp,
      'deletionPolicy': ?deletionPolicy,
      'description': ?description,
      'expireTime': ?expireTime,
      'id': ?id,
      'name': ?name,
      'namePrefix': ?namePrefix,
      'privateKey': ?privateKey,
      'privateKeyWo': ?privateKeyWo,
      'privateKeyWoVersion': ?privateKeyWoVersion,
      'project': ?project,
      'selfLink': ?selfLink,
    };
  }

  factory GetCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult(
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificateId: (() { final guardedValue = map['certificateId']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      namePrefix: (() { final guardedValue = map['namePrefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateKeyWo: (() { final guardedValue = map['privateKeyWo']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateKeyWoVersion: (() { final guardedValue = map['privateKeyWoVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
