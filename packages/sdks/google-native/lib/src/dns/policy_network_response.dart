// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyNetworkResponse {
  final pulumi.Input<String> kind;

  /// The fully qualified URL of the VPC network to bind to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  final pulumi.Input<String> networkUrl;

  /// Creates a new [PolicyNetworkResponse].
  /// [kind] Required.
  /// [networkUrl] The fully qualified URL of the VPC network to bind to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  PolicyNetworkResponse({required this.kind, required this.networkUrl});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'kind': kind, 'networkUrl': networkUrl};
  }

  factory PolicyNetworkResponse.fromMap(Map<String, dynamic> map) {
    return PolicyNetworkResponse(
      kind: pulumi.Input.fromValue(map['kind'] as String),
      networkUrl: pulumi.Input.fromValue(map['networkUrl'] as String),
    );
  }
}
