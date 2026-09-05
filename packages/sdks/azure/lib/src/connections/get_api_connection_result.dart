// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getApiConnection.
class GetApiConnectionResult {
  /// The display name of the API Connection.
  final String? displayName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Azure Region where the API Connection exists.
  final String? location;
  /// The ID of the Managed API that this connection is linked to.
  final String? managedApiId;
  final String? name;
  /// A mapping of parameter names to their values for the API Connection.
  final Map<String, String>? parameterValues;
  final String? resourceGroupName;
  /// A mapping of tags assigned to the API Connection.
  final Map<String, String>? tags;

  /// Creates a new [GetApiConnectionResult].
  /// [displayName] The display name of the API Connection.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] The Azure Region where the API Connection exists.
  /// [managedApiId] The ID of the Managed API that this connection is linked to.
  /// [name] Optional.
  /// [parameterValues] A mapping of parameter names to their values for the API Connection.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags assigned to the API Connection.
  const GetApiConnectionResult({
    this.displayName,
    this.id,
    this.location,
    this.managedApiId,
    this.name,
    this.parameterValues,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'id': ?id,
      'location': ?location,
      'managedApiId': ?managedApiId,
      'name': ?name,
      'parameterValues': ?parameterValues,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetApiConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetApiConnectionResult(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedApiId: (() { final guardedValue = map['managedApiId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameterValues: (() { final guardedValue = map['parameterValues']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
