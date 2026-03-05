// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Workspaces {
  /// The full name of one remote workspace. When configured, only the default workspace can be used. This option conflicts with prefix.
  final pulumi.Input<String>? name;
  /// A prefix used in the names of one or more remote workspaces, all of which can be used with this configuration. The full workspace names are used in HCP Terraform, and the short names (minus the prefix) are used on the command line for Terraform CLI workspaces. If omitted, only the default workspace can be used. This option conflicts with name.
  final pulumi.Input<String>? prefix;

  /// Creates a new [Workspaces].
  /// [name] The full name of one remote workspace. When configured, only the default workspace can be used. This option conflicts with prefix.
  /// [prefix] A prefix used in the names of one or more remote workspaces, all of which can be used with this configuration. The full workspace names are used in HCP Terraform, and the short names (minus the prefix) are used on the command line for Terraform CLI workspaces. If omitted, only the default workspace can be used. This option conflicts with name.
  Workspaces({
    this.name,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'prefix': ?prefix,
    };
  }

  factory Workspaces.fromMap(Map<String, dynamic> map) {
    return Workspaces(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      prefix: (() { final guardedValue = map['prefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

