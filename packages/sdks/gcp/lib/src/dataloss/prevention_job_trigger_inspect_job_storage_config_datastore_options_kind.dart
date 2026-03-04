// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PreventionJobTriggerInspectJobStorageConfigDatastoreOptionsKind {
  /// The name of the Datastore kind.
  final pulumi.Input<String> name;

  /// Creates a new [PreventionJobTriggerInspectJobStorageConfigDatastoreOptionsKind].
  /// [name] The name of the Datastore kind.
  PreventionJobTriggerInspectJobStorageConfigDatastoreOptionsKind({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory PreventionJobTriggerInspectJobStorageConfigDatastoreOptionsKind.fromMap(
    Map<String, dynamic> map,
  ) {
    return PreventionJobTriggerInspectJobStorageConfigDatastoreOptionsKind(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
