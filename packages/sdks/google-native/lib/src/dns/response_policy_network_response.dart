// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResponsePolicyNetworkResponse {
  final pulumi.Input<String> kind;
  /// The fully qualified URL of the VPC network to bind to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  final pulumi.Input<String> networkUrl;

  /// Creates a new [ResponsePolicyNetworkResponse].
  /// [kind] Required.
  /// [networkUrl] The fully qualified URL of the VPC network to bind to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  const ResponsePolicyNetworkResponse({
    required this.kind,
    required this.networkUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'networkUrl': networkUrl,
    };
  }

  factory ResponsePolicyNetworkResponse.fromMap(Map<String, dynamic> map) {
    return ResponsePolicyNetworkResponse(
      kind: pulumi.Input.fromValue(map['kind'] as String),
      networkUrl: pulumi.Input.fromValue(map['networkUrl'] as String),
    );
  }
}

