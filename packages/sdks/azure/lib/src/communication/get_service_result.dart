// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getService.
class GetServiceResult {
  /// The location where the Communication service stores its data at rest.
  final String dataLocation;
  /// The hostname of the Communication Service.
  final String hostname;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The immutable resource id of the Communication Service.
  final String immutableResourceId;
  final String name;
  /// The primary connection string of the Communication Service.
  final String primaryConnectionString;
  /// The primary key of the Communication Service.
  final String primaryKey;
  final String resourceGroupName;
  /// The secondary connection string of the Communication Service.
  final String secondaryConnectionString;
  /// The secondary key of the Communication Service.
  final String secondaryKey;
  /// A mapping of tags assigned to the Communication Service.
  final Map<String, String> tags;

  /// Creates a new [GetServiceResult].
  /// [dataLocation] The location where the Communication service stores its data at rest.
  /// [hostname] The hostname of the Communication Service.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [immutableResourceId] The immutable resource id of the Communication Service.
  /// [name] Required.
  /// [primaryConnectionString] The primary connection string of the Communication Service.
  /// [primaryKey] The primary key of the Communication Service.
  /// [resourceGroupName] Required.
  /// [secondaryConnectionString] The secondary connection string of the Communication Service.
  /// [secondaryKey] The secondary key of the Communication Service.
  /// [tags] A mapping of tags assigned to the Communication Service.
  const GetServiceResult({
    required this.dataLocation,
    required this.hostname,
    required this.id,
    required this.immutableResourceId,
    required this.name,
    required this.primaryConnectionString,
    required this.primaryKey,
    required this.resourceGroupName,
    required this.secondaryConnectionString,
    required this.secondaryKey,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataLocation': dataLocation,
      'hostname': hostname,
      'id': id,
      'immutableResourceId': immutableResourceId,
      'name': name,
      'primaryConnectionString': primaryConnectionString,
      'primaryKey': primaryKey,
      'resourceGroupName': resourceGroupName,
      'secondaryConnectionString': secondaryConnectionString,
      'secondaryKey': secondaryKey,
      'tags': tags,
    };
  }

  factory GetServiceResult.fromMap(Map<String, dynamic> map) {
    return GetServiceResult(
      dataLocation: map['dataLocation'] as String,
      hostname: map['hostname'] as String,
      id: map['id'] as String,
      immutableResourceId: map['immutableResourceId'] as String,
      name: map['name'] as String,
      primaryConnectionString: map['primaryConnectionString'] as String,
      primaryKey: map['primaryKey'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      secondaryConnectionString: map['secondaryConnectionString'] as String,
      secondaryKey: map['secondaryKey'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

