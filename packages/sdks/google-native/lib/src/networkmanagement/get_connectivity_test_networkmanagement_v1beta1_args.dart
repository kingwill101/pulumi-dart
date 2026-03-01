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
    required pulumi.Output<String> connectivityTestId,
    pulumi.Output<String>? project,
  }) :
      connectivityTestId = pulumi.Input.asInput<String>(connectivityTestId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectivityTestId': connectivityTestId,
      'project': ?project,
    };
  }

  factory GetConnectivityTestNetworkmanagementV1beta1Args.fromMap(Map<String, dynamic> map) {
    return GetConnectivityTestNetworkmanagementV1beta1Args(
      connectivityTestId: pulumi.Output.create<String>(map['connectivityTestId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}

