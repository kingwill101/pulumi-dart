// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_hmac_key_hmac_key_args_doc}
/// The set of arguments for HmacKey.
/// {@endtemplate}
/// {@macro pulumi_storage_hmac_key_hmac_key_args_doc}
class HmacKeyArgs {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The email address of the key's associated service account.
  final pulumi.Input<String> serviceAccountEmail;
  /// The state of the key. Can be set to one of ACTIVE, INACTIVE.
  /// Default value is `ACTIVE`.
  /// Possible values are: `ACTIVE`, `INACTIVE`.
  final pulumi.Input<String>? state;

  /// Creates a new [HmacKeyArgs].
  /// [project] The ID of the project in which the resource belongs.
  /// [serviceAccountEmail] The email address of the key's associated service account.
  /// [state] The state of the key. Can be set to one of ACTIVE, INACTIVE.
  const HmacKeyArgs({
    this.project,
    required this.serviceAccountEmail,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'project': ?project,
      'serviceAccountEmail': serviceAccountEmail,
      'state': ?state,
    };
  }

  factory HmacKeyArgs.fromMap(Map<String, dynamic> map) {
    return HmacKeyArgs(
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccountEmail: pulumi.Input.fromValue(map['serviceAccountEmail'] as String),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

