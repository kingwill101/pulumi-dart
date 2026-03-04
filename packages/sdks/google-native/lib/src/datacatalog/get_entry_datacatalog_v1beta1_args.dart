// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datacatalog_v1beta1_get_entry_datacatalog_v1beta1_args_doc}
/// Arguments for getEntry.
/// {@endtemplate}
/// {@macro pulumi_datacatalog_v1beta1_get_entry_datacatalog_v1beta1_args_doc}
class GetEntryDatacatalogV1beta1Args {
  final pulumi.Input<String> entryGroupId;
  final pulumi.Input<String> entryId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetEntryDatacatalogV1beta1Args].
  /// [entryGroupId] Required.
  /// [entryId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetEntryDatacatalogV1beta1Args({
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

  factory GetEntryDatacatalogV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetEntryDatacatalogV1beta1Args(
      entryGroupId: pulumi.Input.fromValue(map['entryGroupId'] as String),
      entryId: pulumi.Input.fromValue(map['entryId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
