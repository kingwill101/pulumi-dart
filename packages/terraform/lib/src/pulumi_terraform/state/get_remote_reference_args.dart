// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'workspaces.dart';

/// Arguments for getRemoteReference.
class GetRemoteReferenceArgs {
  /// The remote backend hostname to connect to.
  final Input<String>? hostname;

  /// The name of the organization containing the targeted workspace(s).
  final Input<String> organization;

  /// The token used to authenticate with the remote backend.
  final Input<String>? token;
  final Input<Workspaces> workspaces;

  GetRemoteReferenceArgs({
    this.hostname,
    required this.organization,
    this.token,
    required this.workspaces,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final hostnameValue = hostname;
    if (hostnameValue != null) {
      map['hostname'] = hostnameValue;
    }
    map['organization'] = organization;
    final tokenValue = token;
    if (tokenValue != null) {
      map['token'] = tokenValue;
    }
    map['workspaces'] = Input.mapInputValue<Workspaces, Map<String, dynamic>>(
        workspaces, (value) => value.toMap());
    return map;
  }

  factory GetRemoteReferenceArgs.fromMap(Map<String, dynamic> map) {
    return GetRemoteReferenceArgs(
      hostname: Input.asOptionalInput<String>(map['hostname']),
      organization: Input.asInput<String>(map['organization']),
      token: Input.asOptionalInput<String>(map['token']),
      workspaces: Input.asInput<Workspaces>(map['workspaces']),
    );
  }
}
