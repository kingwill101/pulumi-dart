// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Version resources.
class VersionState {
  /// The developer-provided description of this version.
  final pulumi.Input<String>? description;

  /// The unique identifier of this agent version.
  final pulumi.Input<String>? name;

  /// The Flow to create an Version for.
  /// Format: projects/&lt;Project ID&gt;/agent.
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
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parent: (() {
        final guardedValue = map['parent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      versionNumber: (() {
        final guardedValue = map['versionNumber'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
