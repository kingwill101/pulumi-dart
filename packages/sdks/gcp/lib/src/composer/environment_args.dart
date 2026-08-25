// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_config.dart';
import 'environment_storage_config.dart';

/// {@template pulumi_composer_environment_environment_args_doc}
/// The set of arguments for Environment.
/// {@endtemplate}
/// {@macro pulumi_composer_environment_environment_args_doc}
class EnvironmentArgs {
  /// Configuration parameters for this environment.
  final pulumi.Input<EnvironmentConfig?>? config;
  /// Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'terraform apply' would delete the instance,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// User-defined labels for this environment. The labels map can contain no more than 64 entries. Entries of the labels map are UTF8 strings that comply with the following restrictions: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: a-z?. Label values must be between 0 and 63 characters long and must conform to the regular expression (a-z?)?. No more than 64 labels can be associated with a given environment. Both keys and values must be &lt;= 128 bytes in size.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Name of the environment.
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The location or Compute Engine region for the environment.
  final pulumi.Input<String?>? region;
  /// Configuration options for storage used by Composer environment.
  final pulumi.Input<EnvironmentStorageConfig?>? storageConfig;

  /// Creates a new [EnvironmentArgs].
  /// [config] Configuration parameters for this environment.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the instance. Defaults to "DELETE".
  /// [labels] User-defined labels for this environment. The labels map can contain no more than 64 entries. Entries of the labels map are UTF8 strings that comply with the following restrictions: Label keys must be between 1 and 63 characters long and must conform to the following regular expression: a-z?. Label values must be between 0 and 63 characters long and must conform to the regular expression (a-z?)?. No more than 64 labels can be associated with a given environment. Both keys and values must be &lt;= 128 bytes in size.
  /// [name] Name of the environment.
  /// [project] The ID of the project in which the resource belongs. If it is not provided, the provider project is used.
  /// [region] The location or Compute Engine region for the environment.
  /// [storageConfig] Configuration options for storage used by Composer environment.
  const EnvironmentArgs({
    this.config,
    this.deletionPolicy,
    this.labels,
    this.name,
    this.project,
    this.region,
    this.storageConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': ?pulumi.Input.mapOptionalInputValue<EnvironmentConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'storageConfig': ?pulumi.Input.mapOptionalInputValue<EnvironmentStorageConfig, Map<String, dynamic>>(storageConfig, (value) => value.toMap()),
    };
  }

  factory EnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs(
      config: (() { final guardedValue = map['config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvironmentConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageConfig: (() { final guardedValue = map['storageConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EnvironmentStorageConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
