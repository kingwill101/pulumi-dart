// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Configuration resources.
class ConfigurationState {
  /// Whether the configuration is active. We suggest you deactivate a configuration instead of deleting it, and allow License Manager to manage deletion of the configuration.
  final pulumi.Input<bool>? active;
  /// Id of the object.
  final pulumi.Input<String>? configurationId;
  /// [Output only] Create time stamp
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Labels as key value pairs
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Number of units to bill for. When licensing a product that is billed per-user, this means number of users. When licensing a product that is billed per-pack (e.g. SQL Server), this means the number of packs.
  final pulumi.Input<int>? licenseCount;
  /// The region where the configuration should be created. This region must be the same where the licensed software will run.
  final pulumi.Input<String>? location;
  /// Identifier. name of resource
  final pulumi.Input<String>? name;
  /// Name of the product for which you are setting the license configuration. For supported products see https://docs.cloud.google.com/compute/docs/instances/windows/license-manager#supported-license-products. Available values include Office2021ProfessionalPlus
  final pulumi.Input<String>? product;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// State of the configuration.
  final pulumi.Input<String>? state;
  /// [Output only] Update time stamp
  final pulumi.Input<String>? updateTime;

  /// Creates a new [ConfigurationState].
  /// [active] Whether the configuration is active. We suggest you deactivate a configuration instead of deleting it, and allow License Manager to manage deletion of the configuration.
  /// [configurationId] Id of the object.
  /// [createTime] [Output only] Create time stamp
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Labels as key value pairs
  /// [licenseCount] Number of units to bill for. When licensing a product that is billed per-user, this means number of users. When licensing a product that is billed per-pack (e.g. SQL Server), this means the number of packs.
  /// [location] The region where the configuration should be created. This region must be the same where the licensed software will run.
  /// [name] Identifier. name of resource
  /// [product] Name of the product for which you are setting the license configuration. For supported products see https://docs.cloud.google.com/compute/docs/instances/windows/license-manager#supported-license-products. Available values include Office2021ProfessionalPlus
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [state] State of the configuration.
  /// [updateTime] [Output only] Update time stamp
  const ConfigurationState({
    this.active,
    this.configurationId,
    this.createTime,
    this.deletionPolicy,
    this.effectiveLabels,
    this.labels,
    this.licenseCount,
    this.location,
    this.name,
    this.product,
    this.project,
    this.pulumiLabels,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'configurationId': ?configurationId,
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'licenseCount': ?licenseCount,
      'location': ?location,
      'name': ?name,
      'product': ?product,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory ConfigurationState.fromMap(Map<String, dynamic> map) {
    return ConfigurationState(
      active: (() { final guardedValue = map['active']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      configurationId: (() { final guardedValue = map['configurationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      licenseCount: (() { final guardedValue = map['licenseCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      product: (() { final guardedValue = map['product']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
