// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetManagedZonesManagedZone {
  final pulumi.Input<String> description;
  final pulumi.Input<String> dnsName;
  final pulumi.Input<String> id;
  final pulumi.Input<String> managedZoneId;
  final pulumi.Input<String?>? name;
  final pulumi.Input<List<String>> nameServers;
  /// The ID of the project containing Google Cloud DNS zones. If this is not provided the default project will be used.
  final pulumi.Input<String?>? project;
  final pulumi.Input<String> visibility;

  /// Creates a new [GetManagedZonesManagedZone].
  /// [description] Required.
  /// [dnsName] Required.
  /// [id] Required.
  /// [managedZoneId] Required.
  /// [name] Optional.
  /// [nameServers] Required.
  /// [project] The ID of the project containing Google Cloud DNS zones. If this is not provided the default project will be used.
  /// [visibility] Required.
  const GetManagedZonesManagedZone({
    required this.description,
    required this.dnsName,
    required this.id,
    required this.managedZoneId,
    this.name,
    required this.nameServers,
    this.project,
    required this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'dnsName': dnsName,
      'id': id,
      'managedZoneId': managedZoneId,
      'name': ?name,
      'nameServers': nameServers,
      'project': ?project,
      'visibility': visibility,
    };
  }

  factory GetManagedZonesManagedZone.fromMap(Map<String, dynamic> map) {
    return GetManagedZonesManagedZone(
      description: pulumi.Input.fromValue(map['description'] as String),
      dnsName: pulumi.Input.fromValue(map['dnsName'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      managedZoneId: pulumi.Input.fromValue(map['managedZoneId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameServers: pulumi.Input.fromValue((map['nameServers'] as List).cast<String>()),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      visibility: pulumi.Input.fromValue(map['visibility'] as String),
    );
  }
}
