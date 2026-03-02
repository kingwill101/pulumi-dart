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
    this.description,
    this.name,
    this.parent,
    this.status,
    this.versionNumber,
  });

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
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      parent: map['parent'] == null ? null : (map['parent']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      versionNumber: map['versionNumber'] == null ? null : (map['versionNumber']! as int).input(),
    );
  }
}

