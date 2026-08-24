// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getR2Bucket.
class GetR2BucketResult {
  /// Account ID.
  final String? accountId;
  /// Name of the bucket.
  final String? bucketName;
  /// Creation timestamp.
  final String? creationDate;
  /// Name of the bucket.
  final String? id;
  /// Jurisdiction where objects in this bucket are guaranteed to be stored.
  /// Available values: "default", "eu", "fedramp", "us".
  final String? jurisdiction;
  /// Location of the bucket.
  /// Available values: "apac", "eeur", "enam", "weur", "wnam", "oc".
  final String? location;
  /// Name of the bucket.
  final String? name;
  /// Storage class for newly uploaded objects, unless specified otherwise.
  /// Available values: "Standard", "InfrequentAccess".
  final String? storageClass;

  /// Creates a new [GetR2BucketResult].
  /// [accountId] Account ID.
  /// [bucketName] Name of the bucket.
  /// [creationDate] Creation timestamp.
  /// [id] Name of the bucket.
  /// [jurisdiction] Jurisdiction where objects in this bucket are guaranteed to be stored.
  /// [location] Location of the bucket.
  /// [name] Name of the bucket.
  /// [storageClass] Storage class for newly uploaded objects, unless specified otherwise.
  const GetR2BucketResult({
    this.accountId,
    this.bucketName,
    this.creationDate,
    this.id,
    this.jurisdiction,
    this.location,
    this.name,
    this.storageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'bucketName': ?bucketName,
      'creationDate': ?creationDate,
      'id': ?id,
      'jurisdiction': ?jurisdiction,
      'location': ?location,
      'name': ?name,
      'storageClass': ?storageClass,
    };
  }

  factory GetR2BucketResult.fromMap(Map<String, dynamic> map) {
    return GetR2BucketResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      bucketName: (() { final guardedValue = map['bucketName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationDate: (() { final guardedValue = map['creationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      jurisdiction: (() { final guardedValue = map['jurisdiction']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageClass: (() { final guardedValue = map['storageClass']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
