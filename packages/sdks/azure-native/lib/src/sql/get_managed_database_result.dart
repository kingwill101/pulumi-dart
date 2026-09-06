// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getManagedDatabase.
class GetManagedDatabaseResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Collation of the metadata catalog.
  final String? catalogCollation;
  /// Collation of the managed database.
  final String? collation;
  /// Creation date of the database.
  final String? creationDate;
  /// Geo paired region.
  final String? defaultSecondaryLocation;
  /// Earliest restore point in time for point in time restore.
  final String? earliestRestorePoint;
  /// Instance Failover Group resource identifier that this managed database belongs to.
  final String? failoverGroupId;
  /// Resource ID.
  final String? id;
  /// Whether or not this database is a ledger database, which means all tables in the database are ledger tables. Note: the value of this property cannot be changed after the database has been created.
  final bool? isLedgerOn;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String? name;
  /// Status of the database.
  final String? status;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;

  /// Creates a new [GetManagedDatabaseResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [catalogCollation] Collation of the metadata catalog.
  /// [collation] Collation of the managed database.
  /// [creationDate] Creation date of the database.
  /// [defaultSecondaryLocation] Geo paired region.
  /// [earliestRestorePoint] Earliest restore point in time for point in time restore.
  /// [failoverGroupId] Instance Failover Group resource identifier that this managed database belongs to.
  /// [id] Resource ID.
  /// [isLedgerOn] Whether or not this database is a ledger database, which means all tables in the database are ledger tables. Note: the value of this property cannot be changed after the database has been created.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [status] Status of the database.
  /// [tags] Resource tags.
  /// [type] Resource type.
  const GetManagedDatabaseResult({
    this.azureApiVersion,
    this.catalogCollation,
    this.collation,
    this.creationDate,
    this.defaultSecondaryLocation,
    this.earliestRestorePoint,
    this.failoverGroupId,
    this.id,
    this.isLedgerOn,
    this.location,
    this.name,
    this.status,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'catalogCollation': ?catalogCollation,
      'collation': ?collation,
      'creationDate': ?creationDate,
      'defaultSecondaryLocation': ?defaultSecondaryLocation,
      'earliestRestorePoint': ?earliestRestorePoint,
      'failoverGroupId': ?failoverGroupId,
      'id': ?id,
      'isLedgerOn': ?isLedgerOn,
      'location': ?location,
      'name': ?name,
      'status': ?status,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetManagedDatabaseResult.fromMap(Map<String, dynamic> map) {
    return GetManagedDatabaseResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      catalogCollation: (() { final guardedValue = map['catalogCollation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      collation: (() { final guardedValue = map['collation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationDate: (() { final guardedValue = map['creationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultSecondaryLocation: (() { final guardedValue = map['defaultSecondaryLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      earliestRestorePoint: (() { final guardedValue = map['earliestRestorePoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      failoverGroupId: (() { final guardedValue = map['failoverGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isLedgerOn: (() { final guardedValue = map['isLedgerOn']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
