// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_settings_metadata.dart';

/// Input properties used for looking up and filtering InstanceSettings resources.
class InstanceSettingsState {
  /// The fingerprint used for optimistic locking of this resource.  Used
  /// internally during updates.
  final pulumi.Input<String>? fingerprint;
  /// The metadata key/value pairs assigned to all the instances in the corresponding scope.
  /// Structure is documented below.
  final pulumi.Input<InstanceSettingsMetadata>? metadata;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// A reference to the zone where the machine resides.
  final pulumi.Input<String>? zone;

  /// Creates a new [InstanceSettingsState].
  /// [fingerprint] The fingerprint used for optimistic locking of this resource.  Used
  /// [metadata] The metadata key/value pairs assigned to all the instances in the corresponding scope.
  /// [project] The ID of the project in which the resource belongs.
  /// [zone] A reference to the zone where the machine resides.
  InstanceSettingsState({
    this.fingerprint,
    this.metadata,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fingerprint': ?fingerprint,
      'metadata': ?pulumi.Input.mapOptionalInputValue<InstanceSettingsMetadata, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'project': ?project,
      'zone': ?zone,
    };
  }

  factory InstanceSettingsState.fromMap(Map<String, dynamic> map) {
    return InstanceSettingsState(
      fingerprint: map['fingerprint'] == null ? null : (map['fingerprint']! as String).input(),
      metadata: map['metadata'] == null ? null : (InstanceSettingsMetadata.fromMap((map['metadata']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      zone: map['zone'] == null ? null : (map['zone']! as String).input(),
    );
  }
}

