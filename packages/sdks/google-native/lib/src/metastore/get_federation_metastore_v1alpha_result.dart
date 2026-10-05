// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getFederation.
class GetFederationMetastoreV1alphaResult {
  /// A map from BackendMetastore rank to BackendMetastores from which the federation service serves metadata at query time. The map key represents the order in which BackendMetastores should be evaluated to resolve database names at query time and should be greater than or equal to zero. A BackendMetastore with a lower number will be evaluated before a BackendMetastore with a higher number.
  final Map<String, String>? backendMetastores;
  /// The time when the metastore federation was created.
  final String? createTime;
  /// The federation endpoint.
  final String? endpointUri;
  /// User-defined labels for the metastore federation.
  final Map<String, String>? labels;
  /// Immutable. The relative resource name of the federation, of the form: projects/{project_number}/locations/{location_id}/federations/{federation_id}`.
  final String? name;
  /// The current state of the federation.
  final String? state;
  /// Additional information about the current state of the metastore federation, if available.
  final String? stateMessage;
  /// The globally unique resource identifier of the metastore federation.
  final String? uid;
  /// The time when the metastore federation was last updated.
  final String? updateTime;
  /// Immutable. The Apache Hive metastore version of the federation. All backend metastore versions must be compatible with the federation version.
  final String? version;

  /// Creates a new [GetFederationMetastoreV1alphaResult].
  /// [backendMetastores] A map from BackendMetastore rank to BackendMetastores from which the federation service serves metadata at query time. The map key represents the order in which BackendMetastores should be evaluated to resolve database names at query time and should be greater than or equal to zero. A BackendMetastore with a lower number will be evaluated before a BackendMetastore with a higher number.
  /// [createTime] The time when the metastore federation was created.
  /// [endpointUri] The federation endpoint.
  /// [labels] User-defined labels for the metastore federation.
  /// [name] Immutable. The relative resource name of the federation, of the form: projects/{project_number}/locations/{location_id}/federations/{federation_id}`.
  /// [state] The current state of the federation.
  /// [stateMessage] Additional information about the current state of the metastore federation, if available.
  /// [uid] The globally unique resource identifier of the metastore federation.
  /// [updateTime] The time when the metastore federation was last updated.
  /// [version] Immutable. The Apache Hive metastore version of the federation. All backend metastore versions must be compatible with the federation version.
  const GetFederationMetastoreV1alphaResult({
    this.backendMetastores,
    this.createTime,
    this.endpointUri,
    this.labels,
    this.name,
    this.state,
    this.stateMessage,
    this.uid,
    this.updateTime,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendMetastores': ?backendMetastores,
      'createTime': ?createTime,
      'endpointUri': ?endpointUri,
      'labels': ?labels,
      'name': ?name,
      'state': ?state,
      'stateMessage': ?stateMessage,
      'uid': ?uid,
      'updateTime': ?updateTime,
      'version': ?version,
    };
  }

  factory GetFederationMetastoreV1alphaResult.fromMap(Map<String, dynamic> map) {
    return GetFederationMetastoreV1alphaResult(
      backendMetastores: (() { final guardedValue = map['backendMetastores']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpointUri: (() { final guardedValue = map['endpointUri']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stateMessage: (() { final guardedValue = map['stateMessage']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
