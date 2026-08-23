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
  const SfdcInstanceArgs({
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
      authConfigId: (() { final guardedValue = map['authConfigId']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      productId: pulumi.Input.fromValue(map['productId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAuthority: (() { final guardedValue = map['serviceAuthority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sfdcOrgId: (() { final guardedValue = map['sfdcOrgId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
