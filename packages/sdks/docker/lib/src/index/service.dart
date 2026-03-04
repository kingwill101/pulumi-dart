import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_args.dart';
import 'service_auth.dart';
import 'service_converge_config.dart';
import 'service_endpoint_spec.dart';
import 'service_mode.dart';
import 'service_rollback_config.dart';
import 'service_state.dart';
import 'service_task_spec.dart';
import 'service_update_config.dart';

/// ## Import
///
/// ### Example
///
/// Assuming you created a `service` as follows
///
/// #!/bin/bash
///
/// docker service create --name foo -p 8080:80 nginx
///
/// prints th ID
///
/// 4pcphbxkfn2rffhbhe6czytgi
///
/// you provide the definition for the resource as follows
///
/// terraform
///
/// resource "docker_service" "foo" {
///
/// name = "foo"
///
/// task_spec {
///
/// container_spec {
///
/// image = "nginx"
///
/// }
///
/// }
///
/// endpoint_spec {
///
/// ports {
///
/// target_port    = "80"
///
/// published_port = "8080"
///
/// }
///
/// }
///
/// }
///
/// then the import command is as follows
///
/// #!/bin/bash
///
/// ```sh
/// $ pulumi import docker:index/service:Service foo 4pcphbxkfn2rffhbhe6czytgi
/// ```
class Service extends pulumi.CustomResource {
  /// Configuration for the authentication for pulling the images of the service
  late final pulumi.Output<ServiceAuth?> auth;

  /// A configuration to ensure that a service converges aka reaches the desired that of all task up and running
  late final pulumi.Output<ServiceConvergeConfig?> convergeConfig;

  /// Properties that can be configured to access and load balance a service
  late final pulumi.Output<ServiceEndpointSpec> endpointSpec;

  /// User-defined key/value metadata
  late final pulumi.Output<List<Map<String, dynamic>>> labels;

  /// Scheduling mode for the service
  late final pulumi.Output<ServiceMode> mode;

  /// Name of the service
  late final pulumi.Output<String> name;

  /// Specification for the rollback strategy of the service
  late final pulumi.Output<ServiceRollbackConfig?> rollbackConfig;

  /// User modifiable task configuration
  late final pulumi.Output<ServiceTaskSpec> taskSpec;

  /// Specification for the update strategy of the service
  late final pulumi.Output<ServiceUpdateConfig?> updateConfig;

  /// Creates a new [Service].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Service]. {@macro pulumi_index_service_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Service(
    String name, {
    ServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'docker:index/service:Service',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    auth = registerOutput<ServiceAuth?>('auth');
    convergeConfig = registerOutput<ServiceConvergeConfig?>('convergeConfig');
    endpointSpec = registerOutput<ServiceEndpointSpec>('endpointSpec');
    labels = registerOutput<List<Map<String, dynamic>>>('labels');
    mode = registerOutput<ServiceMode>('mode');
    this.name = registerOutput<String>('name');
    rollbackConfig = registerOutput<ServiceRollbackConfig?>('rollbackConfig');
    taskSpec = registerOutput<ServiceTaskSpec>('taskSpec');
    updateConfig = registerOutput<ServiceUpdateConfig?>('updateConfig');
  }

  /// Gets an existing [Service] resource's state with the given [name] and [id].
  static Service get(
    String name,
    pulumi.Input<String> id, {
    ServiceState? state,
  }) {
    return Service._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Service._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'docker:index/service:Service',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    auth = registerOutput<ServiceAuth?>('auth');
    convergeConfig = registerOutput<ServiceConvergeConfig?>('convergeConfig');
    endpointSpec = registerOutput<ServiceEndpointSpec>('endpointSpec');
    labels = registerOutput<List<Map<String, dynamic>>>('labels');
    mode = registerOutput<ServiceMode>('mode');
    this.name = registerOutput<String>('name');
    rollbackConfig = registerOutput<ServiceRollbackConfig?>('rollbackConfig');
    taskSpec = registerOutput<ServiceTaskSpec>('taskSpec');
    updateConfig = registerOutput<ServiceUpdateConfig?>('updateConfig');
  }
}
