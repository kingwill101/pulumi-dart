// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_spec_encryption_spec.dart';

/// Input properties used for looking up and filtering EncryptionSpec resources.
class EncryptionSpecState {
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<EncryptionSpecEncryptionSpec>? encryptionSpec;
  /// The location in which the encryptionSpec is to be initialized.
  final pulumi.Input<String>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [EncryptionSpecState].
  /// [encryptionSpec] A nested object resource.
  /// [location] The location in which the encryptionSpec is to be initialized.
  /// [project] The ID of the project in which the resource belongs.
  EncryptionSpecState({
    pulumi.Output<EncryptionSpecEncryptionSpec>? encryptionSpec,
    pulumi.Output<String>? location,
    pulumi.Output<String>? project,
  }) :
      encryptionSpec = pulumi.Input.asOptionalInput<EncryptionSpecEncryptionSpec>(encryptionSpec),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionSpec': ?pulumi.Input.mapOptionalInputValue<EncryptionSpecEncryptionSpec, Map<String, dynamic>>(encryptionSpec, (value) => value.toMap()),
      'location': ?location,
      'project': ?project,
    };
  }

  factory EncryptionSpecState.fromMap(Map<String, dynamic> map) {
    return EncryptionSpecState(
      encryptionSpec: map['encryptionSpec'] == null ? null : pulumi.Output.create<EncryptionSpecEncryptionSpec>(EncryptionSpecEncryptionSpec.fromMap((map['encryptionSpec'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

