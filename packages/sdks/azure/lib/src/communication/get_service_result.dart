// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getService.
class GetServiceResult {
  /// The location where the Communication service stores its data at rest.
  final String? dataLocation;
  /// The hostname of the Communication Service.
  final String? hostname;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The immutable resource id of the Communication Service.
  final String? immutableResourceId;
  final String? name;
  /// The primary connection string of the Communication Service.
  final String? primaryConnectionString;
  /// The primary key of the Communication Service.
  final String? primaryKey;
  final String? resourceGroupName;
  /// The secondary connection string of the Communication Service.
  final String? secondaryConnectionString;
  /// The secondary key of the Communication Service.
  final String? secondaryKey;
  /// A mapping of tags assigned to the Communication Service.
  final Map<String, String>? tags;

  /// Creates a new [GetServiceResult].
  /// [dataLocation] The location where the Communication service stores its data at rest.
  /// [hostname] The hostname of the Communication Service.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [immutableResourceId] The immutable resource id of the Communication Service.
  /// [name] Optional.
  /// [primaryConnectionString] The primary connection string of the Communication Service.
  /// [primaryKey] The primary key of the Communication Service.
  /// [resourceGroupName] Optional.
  /// [secondaryConnectionString] The secondary connection string of the Communication Service.
  /// [secondaryKey] The secondary key of the Communication Service.
  /// [tags] A mapping of tags assigned to the Communication Service.
  const GetServiceResult({
    this.dataLocation,
    this.hostname,
    this.id,
    this.immutableResourceId,
    this.name,
    this.primaryConnectionString,
    this.primaryKey,
    this.resourceGroupName,
    this.secondaryConnectionString,
    this.secondaryKey,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLocation': ?dataLocation,
      'hostname': ?hostname,
      'id': ?id,
      'immutableResourceId': ?immutableResourceId,
      'name': ?name,
      'primaryConnectionString': ?primaryConnectionString,
      'primaryKey': ?primaryKey,
      'resourceGroupName': ?resourceGroupName,
      'secondaryConnectionString': ?secondaryConnectionString,
      'secondaryKey': ?secondaryKey,
      'tags': ?tags,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      dataLocation: (() { final guardedValue = map['dataLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      immutableResourceId: (() { final guardedValue = map['immutableResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryConnectionString: (() { final guardedValue = map['primaryConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primaryKey: (() { final guardedValue = map['primaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryConnectionString: (() { final guardedValue = map['secondaryConnectionString']; if (guardedValue == null) return null; return guardedValue as String; })(),
      secondaryKey: (() { final guardedValue = map['secondaryKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
