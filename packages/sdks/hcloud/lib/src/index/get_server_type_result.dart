// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_type_location.dart';

/// Result data returned by getServerType.
class GetServerTypeResult {
  /// Architecture of the cpu for a Server of this type.
  final String? architecture;
  /// Category of the Server Type.
  final String? category;
  /// Number of cpu cores for a Server of this type.
  final int? cores;
  /// Type of cpu for a Server of this type.
  final String? cpuType;
  /// Date of the Server Type deprecation announcement.
  final String? deprecationAnnounced;
  /// Description of the Server Type.
  final String? description;
  /// Disk size in GB for a Server of this type.
  final int? disk;
  /// ID of the Server Type.
  final int? id;
  final int? includedTraffic;
  /// Whether the Server Type is deprecated.
  final bool? isDeprecated;
  /// List of supported Locations for this Server Type.
  final List<GetServerTypeLocation>? locations;
  /// Memory in GB for a Server of this type.
  final int? memory;
  /// Name of the Server Type.
  final String? name;
  /// Type of boot drive for a Server of this type.
  final String? storageType;
  /// Date of the Server Type removal. After this date, the Server Type cannot be used anymore.
  final String? unavailableAfter;

  /// Creates a new [GetServerTypeResult].
  /// [architecture] Architecture of the cpu for a Server of this type.
  /// [category] Category of the Server Type.
  /// [cores] Number of cpu cores for a Server of this type.
  /// [cpuType] Type of cpu for a Server of this type.
  /// [deprecationAnnounced] Date of the Server Type deprecation announcement.
  /// [description] Description of the Server Type.
  /// [disk] Disk size in GB for a Server of this type.
  /// [id] ID of the Server Type.
  /// [includedTraffic] Optional.
  /// [isDeprecated] Whether the Server Type is deprecated.
  /// [locations] List of supported Locations for this Server Type.
  /// [memory] Memory in GB for a Server of this type.
  /// [name] Name of the Server Type.
  /// [storageType] Type of boot drive for a Server of this type.
  /// [unavailableAfter] Date of the Server Type removal. After this date, the Server Type cannot be used anymore.
  const GetServerTypeResult({
    this.architecture,
    this.category,
    this.cores,
    this.cpuType,
    this.deprecationAnnounced,
    this.description,
    this.disk,
    this.id,
    this.includedTraffic,
    this.isDeprecated,
    this.locations,
    this.memory,
    this.name,
    this.storageType,
    this.unavailableAfter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'architecture': ?architecture,
      'category': ?category,
      'cores': ?cores,
      'cpuType': ?cpuType,
      'deprecationAnnounced': ?deprecationAnnounced,
      'description': ?description,
      'disk': ?disk,
      'id': ?id,
      'includedTraffic': ?includedTraffic,
      'isDeprecated': ?isDeprecated,
      'locations': ?(() { final guardedValue = locations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServerTypeLocation, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'memory': ?memory,
      'name': ?name,
      'storageType': ?storageType,
      'unavailableAfter': ?unavailableAfter,
    };
  }

  factory GetServerTypeResult.fromMap(Map<String, dynamic> map) {
    return GetServerTypeResult(
      architecture: (() { final guardedValue = map['architecture']; if (guardedValue == null) return null; return guardedValue as String; })(),
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cores: (() { final guardedValue = map['cores']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      cpuType: (() { final guardedValue = map['cpuType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deprecationAnnounced: (() { final guardedValue = map['deprecationAnnounced']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      disk: (() { final guardedValue = map['disk']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      includedTraffic: (() { final guardedValue = map['includedTraffic']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      isDeprecated: (() { final guardedValue = map['isDeprecated']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServerTypeLocation>(guardedValue, (value) => GetServerTypeLocation.fromMap((value as Map).cast<String, dynamic>())); })(),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      unavailableAfter: (() { final guardedValue = map['unavailableAfter']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
