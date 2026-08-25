// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataform_config_config_args_doc}
/// The set of arguments for Config.
/// {@endtemplate}
/// {@macro pulumi_dataform_config_config_args_doc}
class ConfigArgs {
  /// Optional. A reference to the customer-managed encryption key (CMEK) that will be used by default to encrypt user data.
  final pulumi.Input<String?>? defaultKmsKeyName;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// A reference to the region
  final pulumi.Input<String> region;

  /// Creates a new [ConfigArgs].
  /// [defaultKmsKeyName] Optional. A reference to the customer-managed encryption key (CMEK) that will be used by default to encrypt user data.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] A reference to the region
  const ConfigArgs({
    this.defaultKmsKeyName,
    this.project,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultKmsKeyName': ?defaultKmsKeyName,
      'project': ?project,
      'region': region,
    };
  }

  factory ConfigArgs.fromMap(Map<String, dynamic> map) {
    return ConfigArgs(
      defaultKmsKeyName: (() { final guardedValue = map['defaultKmsKeyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: pulumi.Input.fromValue(map['region'] as String),
    );
  }
}
