// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_licensemanager_configuration_configuration_args_doc}
/// The set of arguments for Configuration.
/// {@endtemplate}
/// {@macro pulumi_licensemanager_configuration_configuration_args_doc}
class ConfigurationArgs {
  /// Whether the configuration is active. We suggest you deactivate a configuration instead of deleting it, and allow License Manager to manage deletion of the configuration.
  final pulumi.Input<bool?>? active;
  /// Id of the object.
  final pulumi.Input<String> configurationId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// Number of units to bill for. When licensing a product that is billed per-user, this means number of users. When licensing a product that is billed per-pack (e.g. SQL Server), this means the number of packs.
  final pulumi.Input<int> licenseCount;
  /// The region where the configuration should be created. This region must be the same where the licensed software will run.
  final pulumi.Input<String> location;
  /// Name of the product for which you are setting the license configuration. For supported products see https://docs.cloud.google.com/compute/docs/instances/windows/license-manager#supported-license-products. Available values include Office2021ProfessionalPlus
  final pulumi.Input<String> product;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;

  /// Creates a new [ConfigurationArgs].
  /// [active] Whether the configuration is active. We suggest you deactivate a configuration instead of deleting it, and allow License Manager to manage deletion of the configuration.
  /// [configurationId] Id of the object.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [labels] Labels as key value pairs
  /// [licenseCount] Number of units to bill for. When licensing a product that is billed per-user, this means number of users. When licensing a product that is billed per-pack (e.g. SQL Server), this means the number of packs.
  /// [location] The region where the configuration should be created. This region must be the same where the licensed software will run.
  /// [product] Name of the product for which you are setting the license configuration. For supported products see https://docs.cloud.google.com/compute/docs/instances/windows/license-manager#supported-license-products. Available values include Office2021ProfessionalPlus
  /// [project] The ID of the project in which the resource belongs.
  const ConfigurationArgs({
    this.active,
    required this.configurationId,
    this.deletionPolicy,
    this.labels,
    required this.licenseCount,
    required this.location,
    required this.product,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'configurationId': configurationId,
      'deletionPolicy': ?deletionPolicy,
      'labels': ?labels,
      'licenseCount': licenseCount,
      'location': location,
      'product': product,
      'project': ?project,
    };
  }

  factory ConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return ConfigurationArgs(
      active: (() { final guardedValue = map['active']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      configurationId: pulumi.Input.fromValue(map['configurationId'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      licenseCount: pulumi.Input.fromValue((map['licenseCount'] as num).toInt()),
      location: pulumi.Input.fromValue(map['location'] as String),
      product: pulumi.Input.fromValue(map['product'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
