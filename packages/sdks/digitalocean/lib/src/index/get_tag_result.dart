// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getTag.
class GetTagResult {
  /// A count of the database clusters that the tag is applied to.
  final int? databasesCount;
  /// A count of the Droplets the tag is applied to.
  final int? dropletsCount;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A count of the images that the tag is applied to.
  final int? imagesCount;
  final String? name;
  /// A count of the total number of resources that the tag is applied to.
  final int? totalResourceCount;
  /// A count of the volume snapshots that the tag is applied to.
  final int? volumeSnapshotsCount;
  /// A count of the volumes that the tag is applied to.
  final int? volumesCount;

  /// Creates a new [GetTagResult].
  /// [databasesCount] A count of the database clusters that the tag is applied to.
  /// [dropletsCount] A count of the Droplets the tag is applied to.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imagesCount] A count of the images that the tag is applied to.
  /// [name] Optional.
  /// [totalResourceCount] A count of the total number of resources that the tag is applied to.
  /// [volumeSnapshotsCount] A count of the volume snapshots that the tag is applied to.
  /// [volumesCount] A count of the volumes that the tag is applied to.
  const GetTagResult({
    this.databasesCount,
    this.dropletsCount,
    this.id,
    this.imagesCount,
    this.name,
    this.totalResourceCount,
    this.volumeSnapshotsCount,
    this.volumesCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databasesCount': ?databasesCount,
      'dropletsCount': ?dropletsCount,
      'id': ?id,
      'imagesCount': ?imagesCount,
      'name': ?name,
      'totalResourceCount': ?totalResourceCount,
      'volumeSnapshotsCount': ?volumeSnapshotsCount,
      'volumesCount': ?volumesCount,
    };
  }

  factory GetTagResult.fromMap(Map<String, dynamic> map) {
    return GetTagResult(
      databasesCount: (() { final guardedValue = map['databasesCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      dropletsCount: (() { final guardedValue = map['dropletsCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imagesCount: (() { final guardedValue = map['imagesCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      totalResourceCount: (() { final guardedValue = map['totalResourceCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      volumeSnapshotsCount: (() { final guardedValue = map['volumeSnapshotsCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      volumesCount: (() { final guardedValue = map['volumesCount']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
    );
  }
}
