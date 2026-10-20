// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWorkstation.
class GetWorkstationWorkstationsV1betaResult {
  /// Optional. Client-specified annotations.
  final Map<String, String>? annotations;
  /// Time when this workstation was created.
  final String? createTime;
  /// Time when this workstation was soft-deleted.
  final String? deleteTime;
  /// Optional. Human-readable name for this workstation.
  final String? displayName;
  /// Optional. Environment variables passed to the workstation container's entrypoint.
  final Map<String, String>? env;
  /// Optional. Checksum computed by the server. May be sent on update and delete requests to make sure that the client has an up-to-date value before proceeding.
  final String? etag;
  /// Host to which clients can send HTTPS traffic that will be received by the workstation. Authorized traffic will be received to the workstation as HTTP on port 80. To send traffic to a different port, clients may prefix the host with the destination port in the format `{port}-{host}`.
  final String? host;
  /// Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied to the workstation and that are also propagated to the underlying Compute Engine resources.
  final Map<String, String>? labels;
  /// Identifier. Full name of this workstation.
  final String? name;
  /// Indicates whether this workstation is currently being updated to match its intended state.
  final bool? reconciling;
  /// Time when this workstation was most recently successfully started, regardless of the workstation's initial state.
  final String? startTime;
  /// Current state of the workstation.
  final String? state;
  /// A system-assigned unique identifier for this workstation.
  final String? uid;
  /// Time when this workstation was most recently updated.
  final String? updateTime;

  /// Creates a new [GetWorkstationWorkstationsV1betaResult].
  /// [annotations] Optional. Client-specified annotations.
  /// [createTime] Time when this workstation was created.
  /// [deleteTime] Time when this workstation was soft-deleted.
  /// [displayName] Optional. Human-readable name for this workstation.
  /// [env] Optional. Environment variables passed to the workstation container's entrypoint.
  /// [etag] Optional. Checksum computed by the server. May be sent on update and delete requests to make sure that the client has an up-to-date value before proceeding.
  /// [host] Host to which clients can send HTTPS traffic that will be received by the workstation. Authorized traffic will be received to the workstation as HTTP on port 80. To send traffic to a different port, clients may prefix the host with the destination port in the format `{port}-{host}`.
  /// [labels] Optional. [Labels](https://cloud.google.com/workstations/docs/label-resources) that are applied to the workstation and that are also propagated to the underlying Compute Engine resources.
  /// [name] Identifier. Full name of this workstation.
  /// [reconciling] Indicates whether this workstation is currently being updated to match its intended state.
  /// [startTime] Time when this workstation was most recently successfully started, regardless of the workstation's initial state.
  /// [state] Current state of the workstation.
  /// [uid] A system-assigned unique identifier for this workstation.
  /// [updateTime] Time when this workstation was most recently updated.
  const GetWorkstationWorkstationsV1betaResult({
    this.annotations,
    this.createTime,
    this.deleteTime,
    this.displayName,
    this.env,
    this.etag,
    this.host,
    this.labels,
    this.name,
    this.reconciling,
    this.startTime,
    this.state,
    this.uid,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'displayName': ?displayName,
      'env': ?env,
      'etag': ?etag,
      'host': ?host,
      'labels': ?labels,
      'name': ?name,
      'reconciling': ?reconciling,
      'startTime': ?startTime,
      'state': ?state,
      'uid': ?uid,
      'updateTime': ?updateTime,
    };
  }

  factory GetWorkstationWorkstationsV1betaResult.fromMap(Map<String, dynamic> map) {
    return GetWorkstationWorkstationsV1betaResult(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      env: (() { final guardedValue = map['env']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
