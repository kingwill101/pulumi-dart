// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetManagedZonesManagedZone {
  final pulumi.Input<String> description;
  final pulumi.Input<String> dnsName;
  final pulumi.Input<String> id;
  final pulumi.Input<String> managedZoneId;
  final pulumi.Input<String>? name;
  final pulumi.Input<List<String>> nameServers;
  /// The ID of the project containing Google Cloud DNS zones. If this is not provided the default project will be used.
  final pulumi.Input<String>? project;
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
  GetManagedZonesManagedZone({
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
      description: (map['description'] as String).input(),
      dnsName: (map['dnsName'] as String).input(),
      id: (map['id'] as String).input(),
      managedZoneId: (map['managedZoneId'] as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      nameServers: ((map['nameServers'] as List).cast<String>()).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      visibility: (map['visibility'] as String).input(),
    );
  }
}

