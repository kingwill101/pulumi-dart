// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getManagedZone.
class GetManagedZoneResult {
  /// Created time.
  final String? createTime;
  /// Optional. Description of the resource.
  final String? description;
  /// DNS Name of the resource
  final String? dns;
  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  final Map<String, String>? labels;
  /// Resource name of the Managed Zone. Format: projects/{project}/locations/global/managedZones/{managed_zone}
  final String? name;
  /// The name of the Target Project
  final String? targetProject;
  /// The name of the Target Project VPC Network
  final String? targetVpc;
  /// Updated time.
  final String? updateTime;

  /// Creates a new [GetManagedZoneResult].
  /// [createTime] Created time.
  /// [description] Optional. Description of the resource.
  /// [dns] DNS Name of the resource
  /// [labels] Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  /// [name] Resource name of the Managed Zone. Format: projects/{project}/locations/global/managedZones/{managed_zone}
  /// [targetProject] The name of the Target Project
  /// [targetVpc] The name of the Target Project VPC Network
  /// [updateTime] Updated time.
  const GetManagedZoneResult({
    this.createTime,
    this.description,
    this.dns,
    this.labels,
    this.name,
    this.targetProject,
    this.targetVpc,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'dns': ?dns,
      'labels': ?labels,
      'name': ?name,
      'targetProject': ?targetProject,
      'targetVpc': ?targetVpc,
      'updateTime': ?updateTime,
    };
  }

  factory GetManagedZoneResult.fromMap(Map<String, dynamic> map) {
    return GetManagedZoneResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dns: (() { final guardedValue = map['dns']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetProject: (() { final guardedValue = map['targetProject']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetVpc: (() { final guardedValue = map['targetVpc']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
