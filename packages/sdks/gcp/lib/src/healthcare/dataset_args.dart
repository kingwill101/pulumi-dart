// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_encryption_spec.dart';

/// {@template pulumi_healthcare_dataset_dataset_args_doc}
/// The set of arguments for Dataset.
/// {@endtemplate}
/// {@macro pulumi_healthcare_dataset_dataset_args_doc}
class DatasetArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
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
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [encryptionSpec] A nested object resource.
  /// [location] The location for the Dataset.
  /// [name] The resource name for the Dataset.
  /// [project] The ID of the project in which the resource belongs.
  /// [timeZone] The default timezone used by this dataset. Must be a either a valid IANA time zone name such as
  const DatasetArgs({
    this.deletionPolicy,
    this.encryptionSpec,
    required this.location,
    this.name,
    this.project,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<DatasetEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'location': location,
      'name': ?name,
      'project': ?project,
      'timeZone': ?timeZone,
    };
  }

  factory DatasetArgs.fromMap(Map<String, dynamic> map) {
    return DatasetArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionSpec: (() { final guardedValue = map['encryptionSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetEncryptionSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeZone: (() { final guardedValue = map['timeZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
