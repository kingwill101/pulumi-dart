// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_ca_external_account_key_ca_external_account_key_args_doc}
/// The set of arguments for CaExternalAccountKey.
/// {@endtemplate}
/// {@macro pulumi_compute_ca_external_account_key_ca_external_account_key_args_doc}
class CaExternalAccountKeyArgs {
  /// Location for the externalAccountKey. Currently only `global` is supported.
  final pulumi.Input<String>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [CaExternalAccountKeyArgs].
  /// [location] Location for the externalAccountKey. Currently only `global` is supported.
  /// [project] The ID of the project in which the resource belongs.
  CaExternalAccountKeyArgs({
    this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'project': ?project,
    };
  }

  factory CaExternalAccountKeyArgs.fromMap(Map<String, dynamic> map) {
    return CaExternalAccountKeyArgs(
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

