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
  GetStoredInfoTypeArgs({
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
    required pulumi.Output<String> storedInfoTypeId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      storedInfoTypeId = pulumi.Input.asInput<String>(storedInfoTypeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'project': ?project,
      'storedInfoTypeId': storedInfoTypeId,
    };
  }

  factory GetStoredInfoTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetStoredInfoTypeArgs(
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      storedInfoTypeId: pulumi.Output.create<String>(map['storedInfoTypeId'] as String),
    );
  }
}

