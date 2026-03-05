// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_supported_database_flags_supported_database_flag.dart';

/// Result data returned by getSupportedDatabaseFlags.
class GetSupportedDatabaseFlagsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String? project;
  /// Contains a list of `flag`, which contains the details about a particular flag.
  final List<GetSupportedDatabaseFlagsSupportedDatabaseFlag> supportedDatabaseFlags;

  /// Creates a new [GetSupportedDatabaseFlagsResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [project] Optional.
  /// [supportedDatabaseFlags] Contains a list of `flag`, which contains the details about a particular flag.
  GetSupportedDatabaseFlagsResult({
    required this.id,
    required this.location,
    this.project,
    required this.supportedDatabaseFlags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'project': ?project,
      'supportedDatabaseFlags': pulumi.Input.encodeList<GetSupportedDatabaseFlagsSupportedDatabaseFlag, Map<String, dynamic>>(supportedDatabaseFlags, (value) => value.toMap()),
    };
  }

  factory GetSupportedDatabaseFlagsResult.fromMap(Map<String, dynamic> map) {
    return GetSupportedDatabaseFlagsResult(
      id: map['id'] as String,
      location: map['location'] as String,
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      supportedDatabaseFlags: pulumi.Input.decodeList<GetSupportedDatabaseFlagsSupportedDatabaseFlag>(map['supportedDatabaseFlags']!, (value) => GetSupportedDatabaseFlagsSupportedDatabaseFlag.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

