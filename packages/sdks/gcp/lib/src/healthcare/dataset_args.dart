// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_encryption_spec.dart';

/// {@template pulumi_healthcare_dataset_dataset_args_doc}
/// The set of arguments for Dataset.
/// {@endtemplate}
/// {@macro pulumi_healthcare_dataset_dataset_args_doc}
class DatasetArgs {
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<DatasetEncryptionSpec>? encryptionSpec;
  /// The location for the Dataset.
  final pulumi.Input<String> location;
  /// The resource name for the Dataset.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The default timezone used by this dataset. Must be a either a valid IANA time zone name such as
  /// "America/New_York" or empty, which defaults to UTC. This is used for parsing times in resources
  /// (e.g., HL7 messages) where no explicit timezone is specified.
  final pulumi.Input<String>? timeZone;

  /// Creates a new [DatasetArgs].
  /// [encryptionSpec] A nested object resource.
  /// [location] The location for the Dataset.
  /// [name] The resource name for the Dataset.
  /// [project] The ID of the project in which the resource belongs.
  /// [timeZone] The default timezone used by this dataset. Must be a either a valid IANA time zone name such as
  DatasetArgs({
    pulumi.Output<DatasetEncryptionSpec>? encryptionSpec,
    required pulumi.Output<String> location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? timeZone,
  }) :
      encryptionSpec = pulumi.Input.asOptionalInput<DatasetEncryptionSpec>(encryptionSpec),
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      timeZone = pulumi.Input.asOptionalInput<String>(timeZone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<DatasetEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'location': location,
      'name': ?name,
      'project': ?project,
      'timeZone': ?timeZone,
    };
  }

  factory DatasetArgs.fromMap(Map<String, dynamic> map) {
    return DatasetArgs(
      encryptionSpec: map['encryptionSpec'] == null ? null : pulumi.Output.create<DatasetEncryptionSpec>(DatasetEncryptionSpec.fromMap((map['encryptionSpec'] as Map).cast<String, dynamic>())),
      location: pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      timeZone: map['timeZone'] == null ? null : pulumi.Output.create<String>(map['timeZone'] as String),
    );
  }
}

