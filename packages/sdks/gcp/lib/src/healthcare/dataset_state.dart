// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_encryption_spec.dart';

/// Input properties used for looking up and filtering Dataset resources.
class DatasetState {
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<DatasetEncryptionSpec>? encryptionSpec;
  /// The location for the Dataset.
  final pulumi.Input<String>? location;
  /// The resource name for the Dataset.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The fully qualified name of this dataset
  final pulumi.Input<String>? selfLink;
  /// The default timezone used by this dataset. Must be a either a valid IANA time zone name such as
  /// "America/New_York" or empty, which defaults to UTC. This is used for parsing times in resources
  /// (e.g., HL7 messages) where no explicit timezone is specified.
  final pulumi.Input<String>? timeZone;

  /// Creates a new [DatasetState].
  /// [encryptionSpec] A nested object resource.
  /// [location] The location for the Dataset.
  /// [name] The resource name for the Dataset.
  /// [project] The ID of the project in which the resource belongs.
  /// [selfLink] The fully qualified name of this dataset
  /// [timeZone] The default timezone used by this dataset. Must be a either a valid IANA time zone name such as
  DatasetState({
    this.encryptionSpec,
    this.location,
    this.name,
    this.project,
    this.selfLink,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<DatasetEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'selfLink': ?selfLink,
      'timeZone': ?timeZone,
    };
  }

  factory DatasetState.fromMap(Map<String, dynamic> map) {
    return DatasetState(
      encryptionSpec: map['encryptionSpec'] == null ? null : (DatasetEncryptionSpec.fromMap((map['encryptionSpec'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink'] as String).input(),
      timeZone: map['timeZone'] == null ? null : (map['timeZone'] as String).input(),
    );
  }
}

