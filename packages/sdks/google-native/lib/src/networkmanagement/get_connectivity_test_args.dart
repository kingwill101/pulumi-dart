// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanagement_v1_get_connectivity_test_args_doc}
/// Arguments for getConnectivityTest.
/// {@endtemplate}
/// {@macro pulumi_networkmanagement_v1_get_connectivity_test_args_doc}
class GetConnectivityTestArgs {
  final pulumi.Input<String> connectivityTestId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConnectivityTestArgs].
  /// [connectivityTestId] Required.
  /// [project] Optional.
  const GetConnectivityTestArgs({
    required this.connectivityTestId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectivityTestId': connectivityTestId,
      'project': ?project,
    };
  }

  factory GetConnectivityTestArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectivityTestArgs(
      connectivityTestId: pulumi.Input.fromValue(map['connectivityTestId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

