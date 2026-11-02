// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getSpacesBucketObjects.
class GetSpacesBucketObjectsResult {
  final String? bucket;
  /// List of any keys between `prefix` and the next occurrence of `delimiter` (i.e., similar to subdirectories of the `prefix` "directory"); the list is only returned when you specify `delimiter`
  final List<String>? commonPrefixes;
  final String? delimiter;
  final String? encodingType;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// List of strings representing object keys
  final List<String>? keys;
  final int? maxKeys;
  /// List of strings representing object owner IDs
  final List<String>? owners;
  final String? prefix;
  final String? region;

  /// Creates a new [GetSpacesBucketObjectsResult].
  /// [bucket] Optional.
  /// [commonPrefixes] List of any keys between `prefix` and the next occurrence of `delimiter` (i.e., similar to subdirectories of the `prefix` "directory"); the list is only returned when you specify `delimiter`
  /// [delimiter] Optional.
  /// [encodingType] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keys] List of strings representing object keys
  /// [maxKeys] Optional.
  /// [owners] List of strings representing object owner IDs
  /// [prefix] Optional.
  /// [region] Optional.
  const GetSpacesBucketObjectsResult({
    this.bucket,
    this.commonPrefixes,
    this.delimiter,
    this.encodingType,
    this.id,
    this.keys,
    this.maxKeys,
    this.owners,
    this.prefix,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bucket': ?bucket,
      'commonPrefixes': ?commonPrefixes,
      'delimiter': ?delimiter,
      'encodingType': ?encodingType,
      'id': ?id,
      'keys': ?keys,
      'maxKeys': ?maxKeys,
      'owners': ?owners,
      'prefix': ?prefix,
      'region': ?region,
    };
  }

  factory GetSpacesBucketObjectsResult.fromMap(Map<String, dynamic> map) {
    return GetSpacesBucketObjectsResult(
      bucket: (() { final guardedValue = map['bucket']; if (guardedValue == null) return null; return guardedValue as String; })(),
      commonPrefixes: (() { final guardedValue = map['commonPrefixes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      delimiter: (() { final guardedValue = map['delimiter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encodingType: (() { final guardedValue = map['encodingType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keys: (() { final guardedValue = map['keys']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      maxKeys: (() { final guardedValue = map['maxKeys']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      owners: (() { final guardedValue = map['owners']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
