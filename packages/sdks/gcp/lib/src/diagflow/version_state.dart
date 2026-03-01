// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Version resources.
class VersionState {
  /// The developer-provided description of this version.
  final pulumi.Input<String>? description;
  /// The unique identifier of this agent version.
  final pulumi.Input<String>? name;
  /// The Flow to create an Version for.
  /// Format: projects/<Project ID>/agent.
  final pulumi.Input<String>? parent;
  /// The status of this version.
  final pulumi.Input<String>? status;
  /// The sequential number of this version.
  final pulumi.Input<int>? versionNumber;

  /// Creates a new [VersionState].
  /// [description] The developer-provided description of this version.
  /// [name] The unique identifier of this agent version.
  /// [parent] The Flow to create an Version for.
  /// [status] The status of this version.
  /// [versionNumber] The sequential number of this version.
  VersionState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parent,
    pulumi.Output<String>? status,
    pulumi.Output<int>? versionNumber,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      status = pulumi.Input.asOptionalInput<String>(status),
      versionNumber = pulumi.Input.asOptionalInput<int>(versionNumber);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'parent': ?parent,
      'status': ?status,
      'versionNumber': ?versionNumber,
    };
  }

  factory VersionState.fromMap(Map<String, dynamic> map) {
    return VersionState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      versionNumber: map['versionNumber'] == null ? null : pulumi.Output.create<int>(map['versionNumber'] as int),
    );
  }
}

