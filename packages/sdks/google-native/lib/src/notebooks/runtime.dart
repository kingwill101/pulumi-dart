import 'package:pulumi/pulumi.dart' as pulumi;
import 'runtime_access_config_response.dart';
import 'runtime_args.dart';
import 'runtime_metrics_response.dart';
import 'runtime_migration_eligibility_response.dart';
import 'runtime_software_config_response.dart';
import 'virtual_machine_response.dart';

/// Creates a new Runtime in a given project and location.
/// Auto-naming is currently not supported for this resource.
class Runtime extends pulumi.CustomResource {
  /// The config settings for accessing runtime.
  late final pulumi.Output<RuntimeAccessConfigResponse> accessConfig;
  /// Runtime creation time.
  late final pulumi.Output<String> createTime;
  /// Runtime health_state.
  late final pulumi.Output<String> healthState;
  /// Optional. The labels to associate with this Managed Notebook or Runtime. Label **keys** must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). Label **values** may be empty, but, if present, must contain 1 to 63 characters, and must conform to [RFC 1035](https://www.ietf.org/rfc/rfc1035.txt). No more than 32 labels can be associated with a cluster.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;
  /// Contains Runtime daemon metrics such as Service status and JupyterLab stats.
  late final pulumi.Output<RuntimeMetricsResponse> metrics;
  /// Bool indicating whether this notebook has been migrated to a Workbench Instance
  late final pulumi.Output<bool> migrated;
  /// The resource name of the runtime. Format: `projects/{project}/locations/{location}/runtimes/{runtimeId}`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Idempotent request UUID.
  late final pulumi.Output<String?> requestId;
  /// Required. User-defined unique ID of this Runtime.
  late final pulumi.Output<String> runtimeId;
  /// Checks how feasible a migration from GmN to WbI is.
  late final pulumi.Output<RuntimeMigrationEligibilityResponse> runtimeMigrationEligibility;
  /// The config settings for software inside the runtime.
  late final pulumi.Output<RuntimeSoftwareConfigResponse> softwareConfig;
  /// Runtime state.
  late final pulumi.Output<String> state;
  /// Runtime update time.
  late final pulumi.Output<String> updateTime;
  /// Use a Compute Engine VM image to start the managed notebook instance.
  late final pulumi.Output<VirtualMachineResponse> virtualMachine;

  /// Creates a new [Runtime].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Runtime]. {@macro pulumi_notebooks_v1_runtime_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Runtime(
    String name, {
    RuntimeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:notebooks/v1:Runtime',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessConfig = registerOutput<RuntimeAccessConfigResponse>('accessConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeAccessConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    healthState = registerOutput<String>('healthState');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    metrics = registerOutput<RuntimeMetricsResponse>('metrics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeMetricsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    migrated = registerOutput<bool>('migrated');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    requestId = registerOutput<String?>('requestId');
    runtimeId = registerOutput<String>('runtimeId');
    runtimeMigrationEligibility = registerOutput<RuntimeMigrationEligibilityResponse>('runtimeMigrationEligibility', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeMigrationEligibilityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    softwareConfig = registerOutput<RuntimeSoftwareConfigResponse>('softwareConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RuntimeSoftwareConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
    updateTime = registerOutput<String>('updateTime');
    virtualMachine = registerOutput<VirtualMachineResponse>('virtualMachine', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualMachineResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
