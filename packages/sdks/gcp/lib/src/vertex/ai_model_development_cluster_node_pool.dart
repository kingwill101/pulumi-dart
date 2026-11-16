// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_model_development_cluster_node_pool_boot_disk.dart';
import 'ai_model_development_cluster_node_pool_machine_spec.dart';
import 'ai_model_development_cluster_node_pool_scaling_spec.dart';

class AiModelDevelopmentClusterNodePool {
  /// Represents the spec of disk options.
  /// Structure is documented below.
  final pulumi.Input<AiModelDevelopmentClusterNodePoolBootDisk?>? bootDisk;
  /// (Output)
  /// The effective maximum duration for instances in this node pool.
  /// This field reflects the value of `flexStartMaxDuration` if it is
  /// set by the user, or the server-applied default (for example, 7 days) if it
  /// is not.
  /// This field is only applicable when `provisioningModel` is set to
  /// `FLEX_START`.
  final pulumi.Input<String?>? effectiveFlexStartMaxDuration;
  /// Whether to enable public IPs for the node pool.
  final pulumi.Input<bool?>? enablePublicIps;
  /// List of the existing Filestore instances to be mounted.
  /// For example:
  /// if "projects/my-project/locations/us-central1-a/instances/my-instance" is
  /// specified, the instance will be mounted to the node pool under the path
  /// "mnt/filestore/"
  final pulumi.Input<List<String>?>? filestores;
  /// The maximum duration for instances in this node pool.
  /// This field is only applicable when `provisioningModel` is set to
  /// `FLEX_START`.
  final pulumi.Input<String?>? flexStartMaxDuration;
  /// The unique ID referring to this node pool.
  final pulumi.Input<String> id;
  /// The labels with user-defined metadata to organize the node pool. These
  /// labels are applied to the underlying compute resources (for example, the
  /// VM instances) of the node pool, so they appear in billing exports and
  /// Cloud Monitoring filters.
  /// Label keys and values can be no longer than 64 characters
  /// (Unicode codepoints), can only contain lowercase letters, numeric
  /// characters, underscores and dashes. International characters are allowed.
  /// See https://goo.gl/xmQnxf for more information and examples of labels.
  final pulumi.Input<Map<String, String>?>? labels;
  /// List of the existing Google Managed Lustre instances to be mounted.
  /// Similar to the filestores, the instance will be mounted to the node pool
  /// under the path "/mnt/lustre/"
  final pulumi.Input<List<String>?>? lustres;
  /// Specification of a single machine.
  /// Structure is documented below.
  final pulumi.Input<AiModelDevelopmentClusterNodePoolMachineSpec> machineSpec;
  /// The node image to be used for the VMs in the node pool.
  /// In format of "projects//global/images/" or
  /// "projects/test-project/global/images/family/"
  final pulumi.Input<String?>? nodeImage;
  /// Specifies the provisioning model for the node pool.
  /// Behavior for `PROVISIONING_MODEL_UNSPECIFIED`:
  /// - For CPU node pools: Defaults to `ON_DEMAND`.
  /// - For GPU node pools:
  /// - If
  /// `machine_spec.reservation_affinity`
  /// is set, it defaults to `RESERVATION`.
  /// - If
  /// `machine_spec.reservation_affinity`
  /// is NOT set, this is an INVALID state and the request will be rejected.
  /// An explicit `provisioningModel` must be provided.
  final pulumi.Input<String?>? provisioningModel;
  /// The scaling spec of the node pool.
  final pulumi.Input<AiModelDevelopmentClusterNodePoolScalingSpec?>? scalingSpec;
  /// Startup script for the node pool instances.
  final pulumi.Input<String?>? startupScript;
  /// The zone of the node pool.
  final pulumi.Input<String?>? zone;

  /// Creates a new [AiModelDevelopmentClusterNodePool].
  /// [bootDisk] Represents the spec of disk options.
  /// [effectiveFlexStartMaxDuration] (Output)
  /// [enablePublicIps] Whether to enable public IPs for the node pool.
  /// [filestores] List of the existing Filestore instances to be mounted.
  /// [flexStartMaxDuration] The maximum duration for instances in this node pool.
  /// [id] The unique ID referring to this node pool.
  /// [labels] The labels with user-defined metadata to organize the node pool. These
  /// [lustres] List of the existing Google Managed Lustre instances to be mounted.
  /// [machineSpec] Specification of a single machine.
  /// [nodeImage] The node image to be used for the VMs in the node pool.
  /// [provisioningModel] Specifies the provisioning model for the node pool.
  /// [scalingSpec] The scaling spec of the node pool.
  /// [startupScript] Startup script for the node pool instances.
  /// [zone] The zone of the node pool.
  const AiModelDevelopmentClusterNodePool({
    this.bootDisk,
    this.effectiveFlexStartMaxDuration,
    this.enablePublicIps,
    this.filestores,
    this.flexStartMaxDuration,
    required this.id,
    this.labels,
    this.lustres,
    required this.machineSpec,
    this.nodeImage,
    this.provisioningModel,
    this.scalingSpec,
    this.startupScript,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bootDisk': ?pulumi.Input.mapOptionalInputValue<AiModelDevelopmentClusterNodePoolBootDisk, Map<String, dynamic>>(bootDisk, (value) => value.toMap()),
      'effectiveFlexStartMaxDuration': ?effectiveFlexStartMaxDuration,
      'enablePublicIps': ?enablePublicIps,
      'filestores': ?filestores,
      'flexStartMaxDuration': ?flexStartMaxDuration,
      'id': id,
      'labels': ?labels,
      'lustres': ?lustres,
      'machineSpec': pulumi.Input.mapInputValue<AiModelDevelopmentClusterNodePoolMachineSpec, Map<String, dynamic>>(machineSpec, (value) => value.toMap()),
      'nodeImage': ?nodeImage,
      'provisioningModel': ?provisioningModel,
      'scalingSpec': ?pulumi.Input.mapOptionalInputValue<AiModelDevelopmentClusterNodePoolScalingSpec, Map<String, dynamic>>(scalingSpec, (value) => value.toMap()),
      'startupScript': ?startupScript,
      'zone': ?zone,
    };
  }

  factory AiModelDevelopmentClusterNodePool.fromMap(Map<String, dynamic> map) {
    return AiModelDevelopmentClusterNodePool(
      bootDisk: (() { final guardedValue = map['bootDisk']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiModelDevelopmentClusterNodePoolBootDisk.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      effectiveFlexStartMaxDuration: (() { final guardedValue = map['effectiveFlexStartMaxDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enablePublicIps: (() { final guardedValue = map['enablePublicIps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      filestores: (() { final guardedValue = map['filestores']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      flexStartMaxDuration: (() { final guardedValue = map['flexStartMaxDuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      lustres: (() { final guardedValue = map['lustres']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      machineSpec: pulumi.Input.fromValue(AiModelDevelopmentClusterNodePoolMachineSpec.fromMap((map['machineSpec']! as Map).cast<String, dynamic>())),
      nodeImage: (() { final guardedValue = map['nodeImage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningModel: (() { final guardedValue = map['provisioningModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scalingSpec: (() { final guardedValue = map['scalingSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AiModelDevelopmentClusterNodePoolScalingSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startupScript: (() { final guardedValue = map['startupScript']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
