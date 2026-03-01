// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'acl_config_idp_config.dart';

/// Input properties used for looking up and filtering AclConfig resources.
class AclConfigState {
  /// Identity provider config.
  /// Structure is documented below.
  final pulumi.Input<AclConfigIdpConfig>? idpConfig;
  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final pulumi.Input<String>? location;
  /// The unique full resource name of the aclConfig. Values are of the format
  /// `projects/{project}/locations/{location}/aclConfig`.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [AclConfigState].
  /// [idpConfig] Identity provider config.
  /// [location] The geographic location where the data store should reside. The value can
  /// [name] The unique full resource name of the aclConfig. Values are of the format
  /// [project] The ID of the project in which the resource belongs.
  AclConfigState({
    pulumi.Output<AclConfigIdpConfig>? idpConfig,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
  }) :
      idpConfig = pulumi.Input.asOptionalInput<AclConfigIdpConfig>(idpConfig),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idpConfig': ?pulumi.Input.mapOptionalInputValue<AclConfigIdpConfig, Map<String, dynamic>>(idpConfig, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory AclConfigState.fromMap(Map<String, dynamic> map) {
    return AclConfigState(
      idpConfig: map['idpConfig'] == null ? null : pulumi.Output.create<AclConfigIdpConfig>(AclConfigIdpConfig.fromMap((map['idpConfig'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

