// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_chronicle_environment_environment_args_doc}
/// The set of arguments for Environment.
/// {@endtemplate}
/// {@macro pulumi_chronicle_environment_environment_args_doc}
class EnvironmentArgs {
  /// Environment nicknames.
  final pulumi.Input<String?>? aliasesJson;
  /// MAX_NAME_LENGTH = 256
  /// Name of the contact for the environment.
  final pulumi.Input<String> contact;
  /// MAX_NAME_LENGTH = 256
  /// Email of the contact for the environment. Multiple emails can be sepereated with the `;` character.
  final pulumi.Input<String> contactEmails;
  /// MAX_NAME_LENGTH = 256
  /// Phone number of the contact for the environment.
  final pulumi.Input<String> contactPhone;
  /// data access scopes.
  final pulumi.Input<String?>? dataAccessScopesJson;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Whether Terraform will be prevented from destroying the environment. Deleting an environment will remove all its data and all playbooks, environments, integrations instances, reports and agents related to the environment. Once you delete an environment, it cannot be reversed. Deleting environments via terraform destroy or pulumi up will only succeed if this field is false in the Terraform state.
  final pulumi.Input<bool?>? deletionProtection;
  /// MAX_NAME_LENGTH = 256
  /// Description of the environment.
  final pulumi.Input<String> description;
  /// Name of the environment
  /// MAX_NAME_LENGTH = 256
  final pulumi.Input<String> displayName;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> instance;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Environment data retention in months.
  final pulumi.Input<int> retentionDuration;

  /// Creates a new [EnvironmentArgs].
  /// [aliasesJson] Environment nicknames.
  /// [contact] MAX_NAME_LENGTH = 256
  /// [contactEmails] MAX_NAME_LENGTH = 256
  /// [contactPhone] MAX_NAME_LENGTH = 256
  /// [dataAccessScopesJson] data access scopes.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [deletionProtection] Whether Terraform will be prevented from destroying the environment. Deleting an environment will remove all its data and all playbooks, environments, integrations instances, reports and agents related to the environment. Once you delete an environment, it cannot be reversed. Deleting environments via terraform destroy or pulumi up will only succeed if this field is false in the Terraform state.
  /// [description] MAX_NAME_LENGTH = 256
  /// [displayName] Name of the environment
  /// [instance] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [project] The ID of the project in which the resource belongs.
  /// [retentionDuration] Environment data retention in months.
  const EnvironmentArgs({
    this.aliasesJson,
    required this.contact,
    required this.contactEmails,
    required this.contactPhone,
    this.dataAccessScopesJson,
    this.deletionPolicy,
    this.deletionProtection,
    required this.description,
    required this.displayName,
    required this.instance,
    required this.location,
    this.project,
    required this.retentionDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasesJson': ?aliasesJson,
      'contact': contact,
      'contactEmails': contactEmails,
      'contactPhone': contactPhone,
      'dataAccessScopesJson': ?dataAccessScopesJson,
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'description': description,
      'displayName': displayName,
      'instance': instance,
      'location': location,
      'project': ?project,
      'retentionDuration': retentionDuration,
    };
  }

  factory EnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs(
      aliasesJson: (() { final guardedValue = map['aliasesJson']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contact: pulumi.Input.fromValue(map['contact'] as String),
      contactEmails: pulumi.Input.fromValue(map['contactEmails'] as String),
      contactPhone: pulumi.Input.fromValue(map['contactPhone'] as String),
      dataAccessScopesJson: (() { final guardedValue = map['dataAccessScopesJson']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionDuration: pulumi.Input.fromValue((map['retentionDuration'] as num).toInt()),
    );
  }
}
