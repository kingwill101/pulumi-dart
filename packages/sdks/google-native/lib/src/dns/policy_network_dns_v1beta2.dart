// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyNetworkDnsV1beta2 {
  final pulumi.Input<String>? kind;
  /// The fully qualified URL of the VPC network to bind to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  final pulumi.Input<String>? networkUrl;

  /// Creates a new [PolicyNetworkDnsV1beta2].
  /// [kind] Optional.
  /// [networkUrl] The fully qualified URL of the VPC network to bind to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  PolicyNetworkDnsV1beta2({
    this.kind,
    this.networkUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'networkUrl': ?networkUrl,
    };
  }

  factory PolicyNetworkDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return PolicyNetworkDnsV1beta2(
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      networkUrl: map['networkUrl'] == null ? null : (map['networkUrl']! as String).input(),
    );
  }
}

