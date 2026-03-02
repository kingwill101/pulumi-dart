// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspaces.dart';

/// {@template pulumi_state_get_remote_reference_args_doc}
/// Arguments for getRemoteReference.
/// {@endtemplate}
/// {@macro pulumi_state_get_remote_reference_args_doc}
class GetRemoteReferenceArgs {
  /// The remote backend hostname to connect to.
  final pulumi.Input<String>? hostname;
  /// The name of the organization containing the targeted workspace(s).
  final pulumi.Input<String> organization;
  /// The token used to authenticate with the remote backend.
  final pulumi.Input<String>? token;
  final pulumi.Input<Workspaces> workspaces;

  /// Creates a new [GetRemoteReferenceArgs].
  /// [hostname] The remote backend hostname to connect to.
  /// [organization] The name of the organization containing the targeted workspace(s).
  /// [token] The token used to authenticate with the remote backend.
  /// [workspaces] Required.
  GetRemoteReferenceArgs({
    this.hostname,
    required this.organization,
    this.token,
    required this.workspaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': ?hostname,
      'organization': organization,
      'token': ?token,
      'workspaces': pulumi.Input.mapInputValue<Workspaces, Map<String, dynamic>>(workspaces, (value) => value.toMap()),
    };
  }

  factory GetRemoteReferenceArgs.fromMap(Map<String, dynamic> map) {
    return GetRemoteReferenceArgs(
      hostname: map['hostname'] == null ? null : (map['hostname']! as String).input(),
      organization: (map['organization'] as String).input(),
      token: map['token'] == null ? null : (map['token']! as String).input(),
      workspaces: (Workspaces.fromMap((map['workspaces'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

