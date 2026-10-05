// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getMesh.
class GetMeshNetworkservicesV1beta1Result {
  /// The timestamp when the resource was created.
  final String? createTime;
  /// Optional. A free-text description of the resource. Max length 1024 characters.
  final String? description;
  /// Optional. If set to a valid TCP port (1-65535), instructs the SIDECAR proxy to listen on the specified port of localhost (127.0.0.1) address. The SIDECAR proxy will expect all traffic to be redirected to this port regardless of its actual ip:port destination. If unset, a port '15001' is used as the interception port. This is applicable only for sidecar proxy deployments.
  final int? interceptionPort;
  /// Optional. Set of label tags associated with the Mesh resource.
  final Map<String, String>? labels;
  /// Name of the Mesh resource. It matches pattern `projects/*/locations/global/meshes/`.
  final String? name;
  /// Server-defined URL of this resource
  final String? selfLink;
  /// The timestamp when the resource was updated.
  final String? updateTime;

  /// Creates a new [GetMeshNetworkservicesV1beta1Result].
  /// [createTime] The timestamp when the resource was created.
  /// [description] Optional. A free-text description of the resource. Max length 1024 characters.
  /// [interceptionPort] Optional. If set to a valid TCP port (1-65535), instructs the SIDECAR proxy to listen on the specified port of localhost (127.0.0.1) address. The SIDECAR proxy will expect all traffic to be redirected to this port regardless of its actual ip:port destination. If unset, a port '15001' is used as the interception port. This is applicable only for sidecar proxy deployments.
  /// [labels] Optional. Set of label tags associated with the Mesh resource.
  /// [name] Name of the Mesh resource. It matches pattern `projects/*/locations/global/meshes/`.
  /// [selfLink] Server-defined URL of this resource
  /// [updateTime] The timestamp when the resource was updated.
  const GetMeshNetworkservicesV1beta1Result({
    this.createTime,
    this.description,
    this.interceptionPort,
    this.labels,
    this.name,
    this.selfLink,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'interceptionPort': ?interceptionPort,
      'labels': ?labels,
      'name': ?name,
      'selfLink': ?selfLink,
      'updateTime': ?updateTime,
    };
  }

  factory GetMeshNetworkservicesV1beta1Result.fromMap(Map<String, dynamic> map) {
    return GetMeshNetworkservicesV1beta1Result(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      interceptionPort: (() { final guardedValue = map['interceptionPort']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
