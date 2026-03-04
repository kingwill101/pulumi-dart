// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The euc configuration of NotebookRuntimeTemplate.
class GoogleCloudAiplatformV1NotebookEucConfigResponse {
  /// Whether ActAs check is bypassed for service account attached to the VM. If false, we need ActAs check for the default Compute Engine Service account. When a Runtime is created, a VM is allocated using Default Compute Engine Service Account. Any user requesting to use this Runtime requires Service Account User (ActAs) permission over this SA. If true, Runtime owner is using EUC and does not require the above permission as VM no longer use default Compute Engine SA, but a P4SA.
  final pulumi.Input<bool> bypassActasCheck;

  /// Input only. Whether EUC is disabled in this NotebookRuntimeTemplate. In proto3, the default value of a boolean is false. In this way, by default EUC will be enabled for NotebookRuntimeTemplate.
  final pulumi.Input<bool> eucDisabled;

  /// Creates a new [GoogleCloudAiplatformV1NotebookEucConfigResponse].
  /// [bypassActasCheck] Whether ActAs check is bypassed for service account attached to the VM. If false, we need ActAs check for the default Compute Engine Service account. When a Runtime is created, a VM is allocated using Default Compute Engine Service Account. Any user requesting to use this Runtime requires Service Account User (ActAs) permission over this SA. If true, Runtime owner is using EUC and does not require the above permission as VM no longer use default Compute Engine SA, but a P4SA.
  /// [eucDisabled] Input only. Whether EUC is disabled in this NotebookRuntimeTemplate. In proto3, the default value of a boolean is false. In this way, by default EUC will be enabled for NotebookRuntimeTemplate.
  GoogleCloudAiplatformV1NotebookEucConfigResponse({
    required this.bypassActasCheck,
    required this.eucDisabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bypassActasCheck': bypassActasCheck,
      'eucDisabled': eucDisabled,
    };
  }

  factory GoogleCloudAiplatformV1NotebookEucConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1NotebookEucConfigResponse(
      bypassActasCheck: pulumi.Input.fromValue(map['bypassActasCheck'] as bool),
      eucDisabled: pulumi.Input.fromValue(map['eucDisabled'] as bool),
    );
  }
}
