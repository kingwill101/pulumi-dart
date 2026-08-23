// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_v1_get_entry_group_args_doc}
/// Arguments for getEntryGroup.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_v1_get_entry_group_args_doc}
class GetEntryGroupArgs {
  final pulumi.Input<String> entryGroupId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? readMask;

  /// Creates a new [GetEntryGroupArgs].
  /// [entryGroupId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [readMask] Optional.
  const GetEntryGroupArgs({
    required this.entryGroupId,
    required this.location,
    this.project,
    this.readMask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entryGroupId': entryGroupId,
      'location': location,
      'project': ?project,
      'readMask': ?readMask,
    };
  }

  factory GetEntryGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetEntryGroupArgs(
      entryGroupId: pulumi.Input.fromValue(map['entryGroupId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readMask: (() { final guardedValue = map['readMask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
