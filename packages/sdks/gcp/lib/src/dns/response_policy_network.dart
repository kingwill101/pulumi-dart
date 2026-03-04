// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResponsePolicyNetwork {
  /// The fully qualified URL of the VPC network to bind to.
  /// This should be formatted like
  /// `https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}`
  final pulumi.Input<String> networkUrl;

  /// Creates a new [ResponsePolicyNetwork].
  /// [networkUrl] The fully qualified URL of the VPC network to bind to.
  ResponsePolicyNetwork({required this.networkUrl});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'networkUrl': networkUrl};
  }

  factory ResponsePolicyNetwork.fromMap(Map<String, dynamic> map) {
    return ResponsePolicyNetwork(
      networkUrl: pulumi.Input.fromValue(map['networkUrl'] as String),
    );
  }
}
