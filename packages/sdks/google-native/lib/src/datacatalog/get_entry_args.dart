// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_v1_get_entry_args_doc}
/// Arguments for getEntry.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_v1_get_entry_args_doc}
class GetEntryArgs {
  final pulumi.Input<String> entryGroupId;
  final pulumi.Input<String> entryId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEntryArgs].
  /// [entryGroupId] Required.
  /// [entryId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetEntryArgs({
    required this.entryGroupId,
    required this.entryId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entryGroupId': entryGroupId,
      'entryId': entryId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetEntryArgs.fromMap(Map<String, dynamic> map) {
    return GetEntryArgs(
      entryGroupId: (map['entryGroupId'] as String).input(),
      entryId: (map['entryId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}

