// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_type_location.dart';

/// Result data returned by getServerType.
class GetServerTypeResult {
  /// Architecture of the cpu for a Server of this type.
  final String architecture;
  /// Category of the Server Type.
  final String category;
  /// Number of cpu cores for a Server of this type.
  final int cores;
  /// Type of cpu for a Server of this type.
  final String cpuType;
  /// Date of the Server Type deprecation announcement.
  final String deprecationAnnounced;
  /// Description of the Server Type.
  final String description;
  /// Disk size in GB for a Server of this type.
  final int disk;
  /// ID of the Server Type.
  final int? id;
  final int includedTraffic;
  /// Whether the Server Type is deprecated.
  final bool isDeprecated;
  /// List of supported Locations for this Server Type.
  final List<GetServerTypeLocation> locations;
  /// Memory in GB for a Server of this type.
  final int memory;
  /// Name of the Server Type.
  final String? name;
  /// Type of boot drive for a Server of this type.
  final String storageType;
  /// Date of the Server Type removal. After this date, the Server Type cannot be used anymore.
  final String unavailableAfter;

  /// Creates a new [GetServerTypeResult].
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
  GetServerTypeResult({
    required this.architecture,
    required this.category,
    required this.cores,
    required this.cpuType,
    required this.deprecationAnnounced,
    required this.description,
    required this.disk,
    this.id,
    required this.includedTraffic,
    required this.isDeprecated,
    required this.locations,
    required this.memory,
    this.name,
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
      'id': ?id,
      'includedTraffic': includedTraffic,
      'isDeprecated': isDeprecated,
      'locations': pulumi.Input.encodeList<GetServerTypeLocation, Map<String, dynamic>>(locations, (value) => value.toMap()),
      'memory': memory,
      'name': ?name,
      'storageType': storageType,
      'unavailableAfter': unavailableAfter,
    };
  }

  factory GetServerTypeResult.fromMap(Map<String, dynamic> map) {
    return GetServerTypeResult(
      architecture: map['architecture'] as String,
      category: map['category'] as String,
      cores: map['cores'] as int,
      cpuType: map['cpuType'] as String,
      deprecationAnnounced: map['deprecationAnnounced'] as String,
      description: map['description'] as String,
      disk: map['disk'] as int,
      id: map['id'] == null ? null : map['id'] as int,
      includedTraffic: map['includedTraffic'] as int,
      isDeprecated: map['isDeprecated'] as bool,
      locations: pulumi.Input.decodeList<GetServerTypeLocation>(map['locations'], (value) => GetServerTypeLocation.fromMap((value as Map).cast<String, dynamic>())),
      memory: map['memory'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      storageType: map['storageType'] as String,
      unavailableAfter: map['unavailableAfter'] as String,
    );
  }
}

