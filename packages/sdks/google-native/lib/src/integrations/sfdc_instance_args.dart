// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_integrations_v1alpha_sfdc_instance_args_doc}
/// The set of arguments for SfdcInstance.
/// {@endtemplate}
/// {@macro pulumi_integrations_v1alpha_sfdc_instance_args_doc}
class SfdcInstanceArgs {
  /// A list of AuthConfigs that can be tried to open the channel to SFDC
  final pulumi.Input<List<String>>? authConfigId;
  /// A description of the sfdc instance.
  final pulumi.Input<String>? description;
  /// User selected unique name/alias to easily reference an instance.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<String>? location;
  /// Resource name of the SFDC instance projects/{project}/locations/{location}/sfdcInstances/{sfdcInstance}.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> productId;
  final pulumi.Input<String>? project;
  /// URL used for API calls after authentication (the login authority is configured within the referenced AuthConfig).
  final pulumi.Input<String>? serviceAuthority;
  /// The SFDC Org Id. This is defined in salesforce.
  final pulumi.Input<String>? sfdcOrgId;

  /// Creates a new [SfdcInstanceArgs].
  /// [authConfigId] A list of AuthConfigs that can be tried to open the channel to SFDC
  /// [description] A description of the sfdc instance.
  /// [displayName] User selected unique name/alias to easily reference an instance.
  /// [location] Optional.
  /// [name] Resource name of the SFDC instance projects/{project}/locations/{location}/sfdcInstances/{sfdcInstance}.
  /// [productId] Required.
  /// [project] Optional.
  /// [serviceAuthority] URL used for API calls after authentication (the login authority is configured within the referenced AuthConfig).
  /// [sfdcOrgId] The SFDC Org Id. This is defined in salesforce.
  SfdcInstanceArgs({
    pulumi.Output<List<String>>? authConfigId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    required pulumi.Output<String> productId,
    pulumi.Output<String>? project,
    pulumi.Output<String>? serviceAuthority,
    pulumi.Output<String>? sfdcOrgId,
  }) :
      authConfigId = pulumi.Input.asOptionalInput<List<String>>(authConfigId),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      productId = pulumi.Input.asInput<String>(productId),
      project = pulumi.Input.asOptionalInput<String>(project),
      serviceAuthority = pulumi.Input.asOptionalInput<String>(serviceAuthority),
      sfdcOrgId = pulumi.Input.asOptionalInput<String>(sfdcOrgId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authConfigId': ?authConfigId,
      'description': ?description,
      'displayName': ?displayName,
      'location': ?location,
      'name': ?name,
      'productId': productId,
      'project': ?project,
      'serviceAuthority': ?serviceAuthority,
      'sfdcOrgId': ?sfdcOrgId,
    };
  }

  factory SfdcInstanceArgs.fromMap(Map<String, dynamic> map) {
    return SfdcInstanceArgs(
      authConfigId: map['authConfigId'] == null ? null : pulumi.Output.create<List<String>>((map['authConfigId'] as List).cast<String>()),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      productId: pulumi.Output.create<String>(map['productId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      serviceAuthority: map['serviceAuthority'] == null ? null : pulumi.Output.create<String>(map['serviceAuthority'] as String),
      sfdcOrgId: map['sfdcOrgId'] == null ? null : pulumi.Output.create<String>(map['sfdcOrgId'] as String),
    );
  }
}

