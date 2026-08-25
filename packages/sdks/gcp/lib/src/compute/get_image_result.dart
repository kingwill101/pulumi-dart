// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getImage.
class GetImageResult {
  /// The size of the image tar.gz archive stored in Google Cloud Storage in bytes.
  final int? archiveSizeBytes;
  /// The creation timestamp in RFC3339 text format.
  final String? creationTimestamp;
  /// An optional description of this image.
  final String? description;
  /// The size of the image when restored onto a persistent disk in gigabytes.
  final int? diskSizeGb;
  /// The family name of the image.
  final String? family;
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The [RFC 4648 base64](https://tools.ietf.org/html/rfc4648#section-4)
  /// encoded SHA-256 hash of the [customer-supplied encryption key](https://cloud.google.com/compute/docs/disks/customer-supplied-encryption)
  /// that protects this image.
  final String? imageEncryptionKeySha256;
  /// The unique identifier for the image.
  final String? imageId;
  /// A fingerprint for the labels being applied to this image.
  final String? labelFingerprint;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final Map<String, String>? labels;
  /// A list of applicable license URI.
  final List<String>? licenses;
  final bool? mostRecent;
  /// The name of the image.
  final String? name;
  final String? project;
  /// The URI of the image.
  final String? selfLink;
  /// The URL of the source disk used to create this image.
  final String? sourceDisk;
  /// The [RFC 4648 base64](https://tools.ietf.org/html/rfc4648#section-4)
  /// encoded SHA-256 hash of the [customer-supplied encryption key](https://cloud.google.com/compute/docs/disks/customer-supplied-encryption)
  /// that protects this image.
  final String? sourceDiskEncryptionKeySha256;
  /// The ID value of the disk used to create this image.
  final String? sourceDiskId;
  /// The ID value of the image used to create this image.
  final String? sourceImageId;
  /// The status of the image. Possible values are **FAILED**, **PENDING**, or **READY**.
  final String? status;

  /// Creates a new [GetImageResult].
  /// [archiveSizeBytes] The size of the image tar.gz archive stored in Google Cloud Storage in bytes.
  /// [creationTimestamp] The creation timestamp in RFC3339 text format.
  /// [description] An optional description of this image.
  /// [diskSizeGb] The size of the image when restored onto a persistent disk in gigabytes.
  /// [family] The family name of the image.
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imageEncryptionKeySha256] The [RFC 4648 base64](https://tools.ietf.org/html/rfc4648#section-4)
  /// [imageId] The unique identifier for the image.
  /// [labelFingerprint] A fingerprint for the labels being applied to this image.
  /// [labels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [licenses] A list of applicable license URI.
  /// [mostRecent] Optional.
  /// [name] The name of the image.
  /// [project] Optional.
  /// [selfLink] The URI of the image.
  /// [sourceDisk] The URL of the source disk used to create this image.
  /// [sourceDiskEncryptionKeySha256] The [RFC 4648 base64](https://tools.ietf.org/html/rfc4648#section-4)
  /// [sourceDiskId] The ID value of the disk used to create this image.
  /// [sourceImageId] The ID value of the image used to create this image.
  /// [status] The status of the image. Possible values are **FAILED**, **PENDING**, or **READY**.
  const GetImageResult({
    this.archiveSizeBytes,
    this.creationTimestamp,
    this.description,
    this.diskSizeGb,
    this.family,
    this.filter,
    this.id,
    this.imageEncryptionKeySha256,
    this.imageId,
    this.labelFingerprint,
    this.labels,
    this.licenses,
    this.mostRecent,
    this.name,
    this.project,
    this.selfLink,
    this.sourceDisk,
    this.sourceDiskEncryptionKeySha256,
    this.sourceDiskId,
    this.sourceImageId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveSizeBytes': ?archiveSizeBytes,
      'creationTimestamp': ?creationTimestamp,
      'description': ?description,
      'diskSizeGb': ?diskSizeGb,
      'family': ?family,
      'filter': ?filter,
      'id': ?id,
      'imageEncryptionKeySha256': ?imageEncryptionKeySha256,
      'imageId': ?imageId,
      'labelFingerprint': ?labelFingerprint,
      'labels': ?labels,
      'licenses': ?licenses,
      'mostRecent': ?mostRecent,
      'name': ?name,
      'project': ?project,
      'selfLink': ?selfLink,
      'sourceDisk': ?sourceDisk,
      'sourceDiskEncryptionKeySha256': ?sourceDiskEncryptionKeySha256,
      'sourceDiskId': ?sourceDiskId,
      'sourceImageId': ?sourceImageId,
      'status': ?status,
    };
  }

  factory GetImageResult.fromMap(Map<String, dynamic> map) {
    return GetImageResult(
      archiveSizeBytes: (() { final guardedValue = map['archiveSizeBytes']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diskSizeGb: (() { final guardedValue = map['diskSizeGb']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      family: (() { final guardedValue = map['family']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageEncryptionKeySha256: (() { final guardedValue = map['imageEncryptionKeySha256']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageId: (() { final guardedValue = map['imageId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labelFingerprint: (() { final guardedValue = map['labelFingerprint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      licenses: (() { final guardedValue = map['licenses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      mostRecent: (() { final guardedValue = map['mostRecent']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceDisk: (() { final guardedValue = map['sourceDisk']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceDiskEncryptionKeySha256: (() { final guardedValue = map['sourceDiskEncryptionKeySha256']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceDiskId: (() { final guardedValue = map['sourceDiskId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceImageId: (() { final guardedValue = map['sourceImageId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
