// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyNetwork {
  final pulumi.Input<String>? kind;
  /// The fully qualified URL of the VPC network to bind to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  final pulumi.Input<String>? networkUrl;

  /// Creates a new [PolicyNetwork].
  /// [kind] Optional.
  /// [networkUrl] The fully qualified URL of the VPC network to bind to. This should be formatted like https://www.googleapis.com/compute/v1/projects/{project}/global/networks/{network}
  const PolicyNetwork({
    this.kind,
    this.networkUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'networkUrl': ?networkUrl,
    };
  }

  factory PolicyNetwork.fromMap(Map<String, dynamic> map) {
    return PolicyNetwork(
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkUrl: (() { final guardedValue = map['networkUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
