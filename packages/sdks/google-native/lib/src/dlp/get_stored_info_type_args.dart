// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dlp_v2_get_stored_info_type_args_doc}
/// Arguments for getStoredInfoType.
/// {@endtemplate}
/// {@macro pulumi_dlp_v2_get_stored_info_type_args_doc}
class GetStoredInfoTypeArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> storedInfoTypeId;

  /// Creates a new [GetStoredInfoTypeArgs].
  /// [location] Required.
  /// [project] Optional.
  /// [storedInfoTypeId] Required.
  const GetStoredInfoTypeArgs({
    required this.location,
    this.project,
    required this.storedInfoTypeId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'storedInfoTypeId': storedInfoTypeId,
    };
  }

  factory GetStoredInfoTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetStoredInfoTypeArgs(
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storedInfoTypeId: pulumi.Input.fromValue(map['storedInfoTypeId'] as String),
    );
  }
}

