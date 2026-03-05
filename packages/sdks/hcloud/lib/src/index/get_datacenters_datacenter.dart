// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatacentersDatacenter {
  /// List of currently available Server Types in the Datacenter.
  final pulumi.Input<List<int>> availableServerTypeIds;
  /// Description of the Datacenter.
  final pulumi.Input<String> description;
  /// ID of the Datacenter.
  final pulumi.Input<int> id;
  /// Location of the Datacenter. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  final pulumi.Input<Map<String, String>> location;
  /// Name of the Datacenter.
  final pulumi.Input<String> name;
  /// List of supported Server Types in the Datacenter.
  final pulumi.Input<List<int>> supportedServerTypeIds;

  /// Creates a new [GetDatacentersDatacenter].
  /// [availableServerTypeIds] List of currently available Server Types in the Datacenter.
  /// [description] Description of the Datacenter.
  /// [id] ID of the Datacenter.
  /// [location] Location of the Datacenter. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  /// [name] Name of the Datacenter.
  /// [supportedServerTypeIds] List of supported Server Types in the Datacenter.
  GetDatacentersDatacenter({
    required this.availableServerTypeIds,
    required this.description,
    required this.id,
    required this.location,
    required this.name,
    required this.supportedServerTypeIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availableServerTypeIds': availableServerTypeIds,
      'description': description,
      'id': id,
      'location': location,
      'name': name,
      'supportedServerTypeIds': supportedServerTypeIds,
    };
  }

  factory GetDatacentersDatacenter.fromMap(Map<String, dynamic> map) {
    return GetDatacentersDatacenter(
      availableServerTypeIds: pulumi.Input.fromValue((map['availableServerTypeIds'] as List).cast<int>()),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as int),
      location: pulumi.Input.fromValue((map['location'] as Map).cast<String, String>()),
      name: pulumi.Input.fromValue(map['name'] as String),
      supportedServerTypeIds: pulumi.Input.fromValue((map['supportedServerTypeIds'] as List).cast<int>()),
    );
  }
}

