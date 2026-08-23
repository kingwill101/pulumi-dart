// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCertificate.
class GetCertificateResult {
  final String certificate;
  final int certificateId;
  final String creationTimestamp;
  final String deletionPolicy;
  final String description;
  final String expireTime;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String namePrefix;
  final String privateKey;
  final String privateKeyWo;
  final String privateKeyWoVersion;
  final String? project;
  final String selfLink;

  /// Creates a new [GetCertificateResult].
  /// [certificate] Required.
  /// [certificateId] Required.
  /// [creationTimestamp] Required.
  /// [deletionPolicy] Required.
  /// [description] Required.
  /// [expireTime] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [namePrefix] Required.
  /// [privateKey] Required.
  /// [privateKeyWo] Required.
  /// [privateKeyWoVersion] Required.
  /// [project] Optional.
  /// [selfLink] Required.
  const GetCertificateResult({
    required this.certificate,
    required this.certificateId,
    required this.creationTimestamp,
    required this.deletionPolicy,
    required this.description,
    required this.expireTime,
    required this.id,
    required this.name,
    required this.namePrefix,
    required this.privateKey,
    required this.privateKeyWo,
    required this.privateKeyWoVersion,
    this.project,
    required this.selfLink,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': certificate,
      'certificateId': certificateId,
      'creationTimestamp': creationTimestamp,
      'deletionPolicy': deletionPolicy,
      'description': description,
      'expireTime': expireTime,
      'id': id,
      'name': name,
      'namePrefix': namePrefix,
      'privateKey': privateKey,
      'privateKeyWo': privateKeyWo,
      'privateKeyWoVersion': privateKeyWoVersion,
      'project': ?project,
      'selfLink': selfLink,
    };
  }

  factory GetCertificateResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateResult(
      certificate: map['certificate'] as String,
      certificateId: map['certificateId'] as int,
      creationTimestamp: map['creationTimestamp'] as String,
      deletionPolicy: map['deletionPolicy'] as String,
      description: map['description'] as String,
      expireTime: map['expireTime'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      namePrefix: map['namePrefix'] as String,
      privateKey: map['privateKey'] as String,
      privateKeyWo: map['privateKeyWo'] as String,
      privateKeyWoVersion: map['privateKeyWoVersion'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: map['selfLink'] as String,
    );
  }
}
