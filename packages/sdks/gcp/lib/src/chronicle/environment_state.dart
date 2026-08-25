// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Environment resources.
class EnvironmentState {
  /// Environment nicknames.
  final pulumi.Input<String?>? aliasesJson;
  /// MAX_NAME_LENGTH = 256
  /// Name of the contact for the environment.
  final pulumi.Input<String?>? contact;
  /// MAX_NAME_LENGTH = 256
  /// Email of the contact for the environment. Multiple emails can be sepereated with the `;` character.
  final pulumi.Input<String?>? contactEmails;
  /// MAX_NAME_LENGTH = 256
  /// Phone number of the contact for the environment.
  final pulumi.Input<String?>? contactPhone;
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
  final pulumi.Input<String?>? description;
  /// Name of the environment
  /// MAX_NAME_LENGTH = 256
  final pulumi.Input<String?>? displayName;
  /// Id of the environment record.
  final pulumi.Input<String?>? environmentId;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? instance;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String?>? location;
  /// Identifier. The unique name(ID) of the Environment.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}/environments/{environment}
  final pulumi.Input<String?>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Environment data retention in months.
  final pulumi.Input<int?>? retentionDuration;

  /// Creates a new [EnvironmentState].
  /// [aliasesJson] Environment nicknames.
  /// [contact] MAX_NAME_LENGTH = 256
  /// [contactEmails] MAX_NAME_LENGTH = 256
  /// [contactPhone] MAX_NAME_LENGTH = 256
  /// [dataAccessScopesJson] data access scopes.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [deletionProtection] Whether Terraform will be prevented from destroying the environment. Deleting an environment will remove all its data and all playbooks, environments, integrations instances, reports and agents related to the environment. Once you delete an environment, it cannot be reversed. Deleting environments via terraform destroy or pulumi up will only succeed if this field is false in the Terraform state.
  /// [description] MAX_NAME_LENGTH = 256
  /// [displayName] Name of the environment
  /// [environmentId] Id of the environment record.
  /// [instance] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] Identifier. The unique name(ID) of the Environment.
  /// [project] The ID of the project in which the resource belongs.
  /// [retentionDuration] Environment data retention in months.
  const EnvironmentState({
    this.aliasesJson,
    this.contact,
    this.contactEmails,
    this.contactPhone,
    this.dataAccessScopesJson,
    this.deletionPolicy,
    this.deletionProtection,
    this.description,
    this.displayName,
    this.environmentId,
    this.instance,
    this.location,
    this.name,
    this.project,
    this.retentionDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasesJson': ?aliasesJson,
      'contact': ?contact,
      'contactEmails': ?contactEmails,
      'contactPhone': ?contactPhone,
      'dataAccessScopesJson': ?dataAccessScopesJson,
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'description': ?description,
      'displayName': ?displayName,
      'environmentId': ?environmentId,
      'instance': ?instance,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'retentionDuration': ?retentionDuration,
    };
  }

  factory EnvironmentState.fromMap(Map<String, dynamic> map) {
    return EnvironmentState(
      aliasesJson: (() { final guardedValue = map['aliasesJson']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contact: (() { final guardedValue = map['contact']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contactEmails: (() { final guardedValue = map['contactEmails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contactPhone: (() { final guardedValue = map['contactPhone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataAccessScopesJson: (() { final guardedValue = map['dataAccessScopesJson']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentId: (() { final guardedValue = map['environmentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instance: (() { final guardedValue = map['instance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionDuration: (() { final guardedValue = map['retentionDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
