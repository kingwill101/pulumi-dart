// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Config resources.
class ConfigState {
  /// Optional. A reference to the customer-managed encryption key (CMEK) that will be used by default to encrypt user data.
  final pulumi.Input<String?>? defaultKmsKeyName;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// A reference to the region
  final pulumi.Input<String?>? region;

  /// Creates a new [ConfigState].
  /// [defaultKmsKeyName] Optional. A reference to the customer-managed encryption key (CMEK) that will be used by default to encrypt user data.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] A reference to the region
  const ConfigState({
    this.defaultKmsKeyName,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultKmsKeyName': ?defaultKmsKeyName,
      'project': ?project,
      'region': ?region,
    };
  }

  factory ConfigState.fromMap(Map<String, dynamic> map) {
    return ConfigState(
      defaultKmsKeyName: (() { final guardedValue = map['defaultKmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
