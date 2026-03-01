// ignore_for_file: unused_element, unnecessary_cast


class ResponsePolicyNetworkResponse {
  final String kind;
  /// The fully qualified URL of the VPC network to bind to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  final String networkUrl;

  /// Creates a new [ResponsePolicyNetworkResponse].
  /// [kind] Required.
  /// [networkUrl] The fully qualified URL of the VPC network to bind to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  ResponsePolicyNetworkResponse({
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
      kind: map['kind'] as String,
      networkUrl: map['networkUrl'] as String,
    );
  }
}

