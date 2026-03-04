// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration for the use of custom service account to run the workloads.
class GoogleCloudAiplatformV1beta1ServiceAccountSpecResponse {
  /// If true, custom user-managed service account is enforced to run any workloads (for example, Vertex Jobs) on the resource. Otherwise, uses the [Vertex AI Custom Code Service Agent](https://cloud.google.com/vertex-ai/docs/general/access-control#service-agents).
  final pulumi.Input<bool> enableCustomServiceAccount;

  /// Optional. Default service account that this PersistentResource's workloads run as. The workloads include: * Any runtime specified via `ResourceRuntimeSpec` on creation time, for example, Ray. * Jobs submitted to PersistentResource, if no other service account specified in the job specs. Only works when custom service account is enabled and users have the `iam.serviceAccounts.actAs` permission on this service account. Required if any containers are specified in `ResourceRuntimeSpec`.
  final pulumi.Input<String> serviceAccount;

  /// Creates a new [GoogleCloudAiplatformV1beta1ServiceAccountSpecResponse].
  /// [enableCustomServiceAccount] If true, custom user-managed service account is enforced to run any workloads (for example, Vertex Jobs) on the resource. Otherwise, uses the [Vertex AI Custom Code Service Agent](https://cloud.google.com/vertex-ai/docs/general/access-control#service-agents).
  /// [serviceAccount] Optional. Default service account that this PersistentResource's workloads run as. The workloads include: * Any runtime specified via `ResourceRuntimeSpec` on creation time, for example, Ray. * Jobs submitted to PersistentResource, if no other service account specified in the job specs. Only works when custom service account is enabled and users have the `iam.serviceAccounts.actAs` permission on this service account. Required if any containers are specified in `ResourceRuntimeSpec`.
  GoogleCloudAiplatformV1beta1ServiceAccountSpecResponse({
    required this.enableCustomServiceAccount,
    required this.serviceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableCustomServiceAccount': enableCustomServiceAccount,
      'serviceAccount': serviceAccount,
    };
  }

  factory GoogleCloudAiplatformV1beta1ServiceAccountSpecResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1ServiceAccountSpecResponse(
      enableCustomServiceAccount: pulumi.Input.fromValue(
        map['enableCustomServiceAccount'] as bool,
      ),
      serviceAccount: pulumi.Input.fromValue(map['serviceAccount'] as String),
    );
  }
}
