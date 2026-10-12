// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getStorageBoxType.
class GetStorageBoxTypeResult {
  /// Maximum number of snapshots created automatically by a snapshot plan.
  final int? automaticSnapshotLimit;
  /// Date of the Storage Box Type deprecation announcement.
  final String? deprecationAnnounced;
  /// Description of the Storage Box Type.
  final String? description;
  /// ID of the Storage Box Type.
  final int? id;
  /// Whether the Storage Box Type is deprecated.
  final bool? isDeprecated;
  /// Name of the Storage Box Type.
  final String? name;
  /// Available storage in bytes.
  final int? size;
  /// Maximum number of allowed manual snapshots.
  final int? snapshotLimit;
  /// Maximum number of subaccounts.
  final int? subaccountsLimit;
  /// Date of the Storage Box Type removal. After this date, the Storage Box Type cannot be used anymore.
  final String? unavailableAfter;

  /// Creates a new [GetStorageBoxTypeResult].
  /// [automaticSnapshotLimit] Maximum number of snapshots created automatically by a snapshot plan.
  /// [deprecationAnnounced] Date of the Storage Box Type deprecation announcement.
  /// [description] Description of the Storage Box Type.
  /// [id] ID of the Storage Box Type.
  /// [isDeprecated] Whether the Storage Box Type is deprecated.
  /// [name] Name of the Storage Box Type.
  /// [size] Available storage in bytes.
  /// [snapshotLimit] Maximum number of allowed manual snapshots.
  /// [subaccountsLimit] Maximum number of subaccounts.
  /// [unavailableAfter] Date of the Storage Box Type removal. After this date, the Storage Box Type cannot be used anymore.
  const GetStorageBoxTypeResult({
    this.automaticSnapshotLimit,
    this.deprecationAnnounced,
    this.description,
    this.id,
    this.isDeprecated,
    this.name,
    this.size,
    this.snapshotLimit,
    this.subaccountsLimit,
    this.unavailableAfter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'automaticSnapshotLimit': ?automaticSnapshotLimit,
      'deprecationAnnounced': ?deprecationAnnounced,
      'description': ?description,
      'id': ?id,
      'isDeprecated': ?isDeprecated,
      'name': ?name,
      'size': ?size,
      'snapshotLimit': ?snapshotLimit,
      'subaccountsLimit': ?subaccountsLimit,
      'unavailableAfter': ?unavailableAfter,
    };
  }

  factory GetStorageBoxTypeResult.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxTypeResult(
      automaticSnapshotLimit: (() { final guardedValue = map['automaticSnapshotLimit']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      deprecationAnnounced: (() { final guardedValue = map['deprecationAnnounced']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      isDeprecated: (() { final guardedValue = map['isDeprecated']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      snapshotLimit: (() { final guardedValue = map['snapshotLimit']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      subaccountsLimit: (() { final guardedValue = map['subaccountsLimit']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      unavailableAfter: (() { final guardedValue = map['unavailableAfter']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
