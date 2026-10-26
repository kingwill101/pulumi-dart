// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_dynamic_parameter.dart';

/// {@template pulumi_chronicle_environment_environment_args_doc}
/// The set of arguments for Environment.
/// {@endtemplate}
/// {@macro pulumi_chronicle_environment_environment_args_doc}
class EnvironmentArgs {
  /// Environment nicknames.
  final pulumi.Input<String?>? aliasesJson;
  /// Environment icon.
  final pulumi.Input<String?>? base64Image;
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
  /// Additional custom properties for enriching the environment.
  /// Structure is documented below.
  final pulumi.Input<List<EnvironmentDynamicParameter>?>? dynamicParameters;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> instance;
  /// URL of the environment. Used to route UI links to the correct SIEM instance
  /// when making cross-SecOps requests from SOAR.
  final pulumi.Input<String?>? instanceUri;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The optional parallel SIEM instance used as a data source. Used to route
  /// API requests to the correct SIEM instance when making cross-SecOps requests
  /// from SOAR. For most customers, this is not required, since the parent
  /// instance is used as the data source by default.
  /// Format:
  /// projects/{project}/locations/{location}/instances/{instance}
  final pulumi.Input<String?>? parallelInstance;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// Environment data retention in months.
  final pulumi.Input<int> retentionDuration;
  /// The weight of the environment, enabling customers to control distribution
  /// of resources between the separate environments in a single instance of
  /// Chronicle SOAR.
  final pulumi.Input<int?>? weight;

  /// Creates a new [EnvironmentArgs].
  /// [aliasesJson] Environment nicknames.
  /// [base64Image] Environment icon.
  /// [contact] MAX_NAME_LENGTH = 256
  /// [contactEmails] MAX_NAME_LENGTH = 256
  /// [contactPhone] MAX_NAME_LENGTH = 256
  /// [dataAccessScopesJson] data access scopes.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [deletionProtection] Whether Terraform will be prevented from destroying the environment. Deleting an environment will remove all its data and all playbooks, environments, integrations instances, reports and agents related to the environment. Once you delete an environment, it cannot be reversed. Deleting environments via terraform destroy or pulumi up will only succeed if this field is false in the Terraform state.
  /// [description] MAX_NAME_LENGTH = 256
  /// [displayName] Name of the environment
  /// [dynamicParameters] Additional custom properties for enriching the environment.
  /// [instance] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [instanceUri] URL of the environment. Used to route UI links to the correct SIEM instance
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [parallelInstance] The optional parallel SIEM instance used as a data source. Used to route
  /// [project] The ID of the project in which the resource belongs.
  /// [retentionDuration] Environment data retention in months.
  /// [weight] The weight of the environment, enabling customers to control distribution
  const EnvironmentArgs({
    this.aliasesJson,
    this.base64Image,
    required this.contact,
    required this.contactEmails,
    required this.contactPhone,
    this.dataAccessScopesJson,
    this.deletionPolicy,
    this.deletionProtection,
    required this.description,
    required this.displayName,
    this.dynamicParameters,
    required this.instance,
    this.instanceUri,
    required this.location,
    this.parallelInstance,
    this.project,
    required this.retentionDuration,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasesJson': ?aliasesJson,
      'base64Image': ?base64Image,
      'contact': contact,
      'contactEmails': contactEmails,
      'contactPhone': contactPhone,
      'dataAccessScopesJson': ?dataAccessScopesJson,
      'deletionPolicy': ?deletionPolicy,
      'deletionProtection': ?deletionProtection,
      'description': description,
      'displayName': displayName,
      'dynamicParameters': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentDynamicParameter>, List<Map<String, dynamic>>>(dynamicParameters, (value) => pulumi.Input.encodeList<EnvironmentDynamicParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instance': instance,
      'instanceUri': ?instanceUri,
      'location': location,
      'parallelInstance': ?parallelInstance,
      'project': ?project,
      'retentionDuration': retentionDuration,
      'weight': ?weight,
    };
  }

  factory EnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs(
      aliasesJson: (() { final guardedValue = map['aliasesJson']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      base64Image: (() { final guardedValue = map['base64Image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contact: pulumi.Input.fromValue(map['contact'] as String),
      contactEmails: pulumi.Input.fromValue(map['contactEmails'] as String),
      contactPhone: pulumi.Input.fromValue(map['contactPhone'] as String),
      dataAccessScopesJson: (() { final guardedValue = map['dataAccessScopesJson']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionProtection: (() { final guardedValue = map['deletionProtection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      description: pulumi.Input.fromValue(map['description'] as String),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      dynamicParameters: (() { final guardedValue = map['dynamicParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvironmentDynamicParameter>(guardedValue, (value) => EnvironmentDynamicParameter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instance: pulumi.Input.fromValue(map['instance'] as String),
      instanceUri: (() { final guardedValue = map['instanceUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      parallelInstance: (() { final guardedValue = map['parallelInstance']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retentionDuration: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['retentionDuration'])),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
