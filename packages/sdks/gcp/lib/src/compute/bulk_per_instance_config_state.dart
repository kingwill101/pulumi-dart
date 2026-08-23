// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'bulk_per_instance_config_instance.dart';

/// Input properties used for looking up and filtering BulkPerInstanceConfig resources.
class BulkPerInstanceConfigState {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The instance group manager this instance config is part of.
  final pulumi.Input<String>? instanceGroupManager;
  /// The list of per-instance configs.
  /// Structure is documented below.
  final pulumi.Input<List<BulkPerInstanceConfigInstance>>? instances;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Zone where the containing instance group manager is located
  final pulumi.Input<String>? zone;

  /// Creates a new [BulkPerInstanceConfigState].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [instanceGroupManager] The instance group manager this instance config is part of.
  /// [instances] The list of per-instance configs.
  /// [project] The ID of the project in which the resource belongs.
  /// [zone] Zone where the containing instance group manager is located
  const BulkPerInstanceConfigState({
    this.deletionPolicy,
    this.instanceGroupManager,
    this.instances,
    this.project,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'instanceGroupManager': ?instanceGroupManager,
      'instances': ?pulumi.Input.mapOptionalInputValue<List<BulkPerInstanceConfigInstance>, List<Map<String, dynamic>>>(instances, (value) => pulumi.Input.encodeList<BulkPerInstanceConfigInstance, Map<String, dynamic>>(value, (value) => value.toMap())),
      'project': ?project,
      'zone': ?zone,
    };
  }

  factory BulkPerInstanceConfigState.fromMap(Map<String, dynamic> map) {
    return BulkPerInstanceConfigState(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceGroupManager: (() { final guardedValue = map['instanceGroupManager']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instances: (() { final guardedValue = map['instances']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<BulkPerInstanceConfigInstance>(guardedValue, (value) => BulkPerInstanceConfigInstance.fromMap((value as Map).cast<String, dynamic>()))); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
