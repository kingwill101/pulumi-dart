// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_types_server_type_location.dart';

class GetServerTypesServerType {
  /// Architecture of the cpu for a Server of this type.
  final pulumi.Input<String> architecture;

  /// Category of the Server Type.
  final pulumi.Input<String> category;

  /// Number of cpu cores for a Server of this type.
  final pulumi.Input<int> cores;

  /// Type of cpu for a Server of this type.
  final pulumi.Input<String> cpuType;

  /// Date of the Server Type deprecation announcement.
  final pulumi.Input<String> deprecationAnnounced;

  /// Description of the Server Type.
  final pulumi.Input<String> description;

  /// Disk size in GB for a Server of this type.
  final pulumi.Input<int> disk;

  /// ID of the Server Type.
  final pulumi.Input<int> id;
  final pulumi.Input<int> includedTraffic;

  /// Whether the Server Type is deprecated.
  final pulumi.Input<bool> isDeprecated;

  /// List of supported Locations for this Server Type.
  final pulumi.Input<List<GetServerTypesServerTypeLocation>> locations;

  /// Memory in GB for a Server of this type.
  final pulumi.Input<int> memory;

  /// Name of the Server Type.
  final pulumi.Input<String> name;

  /// Type of boot drive for a Server of this type.
  final pulumi.Input<String> storageType;

  /// Date of the Server Type removal. After this date, the Server Type cannot be used anymore.
  final pulumi.Input<String> unavailableAfter;

  /// Creates a new [GetServerTypesServerType].
  /// [architecture] Architecture of the cpu for a Server of this type.
  /// [category] Category of the Server Type.
  /// [cores] Number of cpu cores for a Server of this type.
  /// [cpuType] Type of cpu for a Server of this type.
  /// [deprecationAnnounced] Date of the Server Type deprecation announcement.
  /// [description] Description of the Server Type.
  /// [disk] Disk size in GB for a Server of this type.
  /// [id] ID of the Server Type.
  /// [includedTraffic] Required.
  /// [isDeprecated] Whether the Server Type is deprecated.
  /// [locations] List of supported Locations for this Server Type.
  /// [memory] Memory in GB for a Server of this type.
  /// [name] Name of the Server Type.
  /// [storageType] Type of boot drive for a Server of this type.
  /// [unavailableAfter] Date of the Server Type removal. After this date, the Server Type cannot be used anymore.
  GetServerTypesServerType({
    required this.architecture,
    required this.category,
    required this.cores,
    required this.cpuType,
    required this.deprecationAnnounced,
    required this.description,
    required this.disk,
    required this.id,
    required this.includedTraffic,
    required this.isDeprecated,
    required this.locations,
    required this.memory,
    required this.name,
    required this.storageType,
    required this.unavailableAfter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': architecture,
      'category': category,
      'cores': cores,
      'cpuType': cpuType,
      'deprecationAnnounced': deprecationAnnounced,
      'description': description,
      'disk': disk,
      'id': id,
      'includedTraffic': includedTraffic,
      'isDeprecated': isDeprecated,
      'locations':
          pulumi.Input.mapInputValue<
            List<GetServerTypesServerTypeLocation>,
            List<Map<String, dynamic>>
          >(
            locations,
            (value) =>
                pulumi.Input.encodeList<
                  GetServerTypesServerTypeLocation,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'memory': memory,
      'name': name,
      'storageType': storageType,
      'unavailableAfter': unavailableAfter,
    };
  }

  factory GetServerTypesServerType.fromMap(Map<String, dynamic> map) {
    return GetServerTypesServerType(
      architecture: pulumi.Input.fromValue(map['architecture'] as String),
      category: pulumi.Input.fromValue(map['category'] as String),
      cores: pulumi.Input.fromValue(map['cores'] as int),
      cpuType: pulumi.Input.fromValue(map['cpuType'] as String),
      deprecationAnnounced: pulumi.Input.fromValue(
        map['deprecationAnnounced'] as String,
      ),
      description: pulumi.Input.fromValue(map['description'] as String),
      disk: pulumi.Input.fromValue(map['disk'] as int),
      id: pulumi.Input.fromValue(map['id'] as int),
      includedTraffic: pulumi.Input.fromValue(map['includedTraffic'] as int),
      isDeprecated: pulumi.Input.fromValue(map['isDeprecated'] as bool),
      locations: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetServerTypesServerTypeLocation>(
          map['locations']!,
          (value) => GetServerTypesServerTypeLocation.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      memory: pulumi.Input.fromValue(map['memory'] as int),
      name: pulumi.Input.fromValue(map['name'] as String),
      storageType: pulumi.Input.fromValue(map['storageType'] as String),
      unavailableAfter: pulumi.Input.fromValue(
        map['unavailableAfter'] as String,
      ),
    );
  }
}
