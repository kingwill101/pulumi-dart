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
    pulumi.Output<String>? hostname,
    required pulumi.Output<String> organization,
    pulumi.Output<String>? token,
    required pulumi.Output<Workspaces> workspaces,
  }) :
      hostname = pulumi.Input.asOptionalInput<String>(hostname),
      organization = pulumi.Input.asInput<String>(organization),
      token = pulumi.Input.asOptionalInput<String>(token),
      workspaces = pulumi.Input.asInput<Workspaces>(workspaces);

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
      hostname: map['hostname'] == null ? null : pulumi.Output.create<String>(map['hostname'] as String),
      organization: pulumi.Output.create<String>(map['organization'] as String),
      token: map['token'] == null ? null : pulumi.Output.create<String>(map['token'] as String),
      workspaces: pulumi.Output.create<Workspaces>(Workspaces.fromMap((map['workspaces'] as Map).cast<String, dynamic>())),
    );
  }
}

