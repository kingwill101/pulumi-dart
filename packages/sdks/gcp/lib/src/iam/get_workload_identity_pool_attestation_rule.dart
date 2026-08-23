// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkloadIdentityPoolAttestationRule {
  /// A single workload operating on Google Cloud. For example:
  /// '//run.googleapis.com/projects/123/type/Service/*'.
  final pulumi.Input<String> googleCloudResource;

  /// Creates a new [GetWorkloadIdentityPoolAttestationRule].
  /// [googleCloudResource] A single workload operating on Google Cloud. For example:
  const GetWorkloadIdentityPoolAttestationRule({
    required this.googleCloudResource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'googleCloudResource': googleCloudResource,
    };
  }

  factory GetWorkloadIdentityPoolAttestationRule.fromMap(Map<String, dynamic> map) {
    return GetWorkloadIdentityPoolAttestationRule(
      googleCloudResource: pulumi.Input.fromValue(map['googleCloudResource'] as String),
    );
  }
}
