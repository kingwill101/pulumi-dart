// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'acl_config_idp_config.dart';

/// {@template pulumi_discoveryengine_acl_config_acl_config_args_doc}
/// The set of arguments for AclConfig.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_acl_config_acl_config_args_doc}
class AclConfigArgs {
  /// Identity provider config.
  /// Structure is documented below.
  final pulumi.Input<AclConfigIdpConfig>? idpConfig;
  /// The geographic location where the data store should reside. The value can
  /// only be one of "global", "us" and "eu".
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [AclConfigArgs].
  /// [idpConfig] Identity provider config.
  /// [location] The geographic location where the data store should reside. The value can
  /// [project] The ID of the project in which the resource belongs.
  const AclConfigArgs({
    this.idpConfig,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idpConfig': ?pulumi.Input.mapOptionalInputValue<AclConfigIdpConfig, Map<String, dynamic>>(idpConfig, (value) => value.toMap()),
      'location': location,
      'project': ?project,
    };
  }

  factory AclConfigArgs.fromMap(Map<String, dynamic> map) {
    return AclConfigArgs(
      idpConfig: (() { final guardedValue = map['idpConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AclConfigIdpConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

