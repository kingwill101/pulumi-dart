// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanagement_v1beta1_get_connectivity_test_networkmanagement_v1beta1_args_doc}
/// Arguments for getConnectivityTest.
/// {@endtemplate}
/// {@macro pulumi_networkmanagement_v1beta1_get_connectivity_test_networkmanagement_v1beta1_args_doc}
class GetConnectivityTestNetworkmanagementV1beta1Args {
  final pulumi.Input<String> connectivityTestId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetConnectivityTestNetworkmanagementV1beta1Args].
  /// [connectivityTestId] Required.
  /// [project] Optional.
  GetConnectivityTestNetworkmanagementV1beta1Args({
    required this.connectivityTestId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectivityTestId': connectivityTestId,
      'project': ?project,
    };
  }

  factory GetConnectivityTestNetworkmanagementV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetConnectivityTestNetworkmanagementV1beta1Args(
      connectivityTestId: (map['connectivityTestId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

