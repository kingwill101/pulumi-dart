// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'restore_workload_target_resource_gcp_resource.dart';

class RestoreWorkloadTargetResource {
  /// Output only. Details of the native Google Cloud resource created as part of restore.
  /// Structure is documented below.
  final pulumi.Input<RestoreWorkloadTargetResourceGcpResource?>? gcpResource;

  /// Creates a new [RestoreWorkloadTargetResource].
  /// [gcpResource] Output only. Details of the native Google Cloud resource created as part of restore.
  const RestoreWorkloadTargetResource({
    this.gcpResource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpResource': ?pulumi.Input.mapOptionalInputValue<RestoreWorkloadTargetResourceGcpResource, Map<String, dynamic>>(gcpResource, (value) => value.toMap()),
    };
  }

  factory RestoreWorkloadTargetResource.fromMap(Map<String, dynamic> map) {
    return RestoreWorkloadTargetResource(
      gcpResource: (() { final guardedValue = map['gcpResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RestoreWorkloadTargetResourceGcpResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
