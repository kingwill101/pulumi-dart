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
  const AclConfigState({
    this.idpConfig,
    this.location,
    this.name,
    this.project,
  });

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
      idpConfig: (() { final guardedValue = map['idpConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AclConfigIdpConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

