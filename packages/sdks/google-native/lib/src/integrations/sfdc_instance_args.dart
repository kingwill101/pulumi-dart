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
    this.authConfigId,
    this.description,
    this.displayName,
    this.location,
    this.name,
    required this.productId,
    this.project,
    this.serviceAuthority,
    this.sfdcOrgId,
  });

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
      authConfigId: map['authConfigId'] == null ? null : ((map['authConfigId'] as List).cast<String>()).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      productId: (map['productId'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      serviceAuthority: map['serviceAuthority'] == null ? null : (map['serviceAuthority'] as String).input(),
      sfdcOrgId: map['sfdcOrgId'] == null ? null : (map['sfdcOrgId'] as String).input(),
    );
  }
}

