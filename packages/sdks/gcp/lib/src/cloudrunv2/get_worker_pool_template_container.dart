// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_worker_pool_template_container_env.dart';
import 'get_worker_pool_template_container_liveness_probe.dart';
import 'get_worker_pool_template_container_resource.dart';
import 'get_worker_pool_template_container_startup_probe.dart';
import 'get_worker_pool_template_container_volume_mount.dart';

class GetWorkerPoolTemplateContainer {
  /// Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references are not supported in Cloud Run.
  final pulumi.Input<List<String>> args;

  /// Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  final pulumi.Input<List<String>> commands;

  /// Names of the containers that must start before this container.
  final pulumi.Input<List<String>> dependsOns;

  /// List of environment variables to set in the container.
  final pulumi.Input<List<GetWorkerPoolTemplateContainerEnv>> envs;

  /// URL of the Container image in Google Container Registry or Google Artifact Registry. More info: https://kubernetes.io/docs/concepts/containers/images
  final pulumi.Input<String> image;

  /// Periodic probe of container liveness. Container will be restarted if the probe fails.
  final pulumi.Input<List<GetWorkerPoolTemplateContainerLivenessProbe>>
  livenessProbes;

  /// The name of the Cloud Run v2 Worker Pool.
  final pulumi.Input<String> name;

  /// Compute Resource requirements by this container. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources
  final pulumi.Input<List<GetWorkerPoolTemplateContainerResource>> resources;

  /// Startup probe of application within the container. All other probes are disabled if a startup probe is provided, until it succeeds. Container will not be added to service endpoints if the probe fails.
  final pulumi.Input<List<GetWorkerPoolTemplateContainerStartupProbe>>
  startupProbes;

  /// Volume to mount into the container's filesystem.
  final pulumi.Input<List<GetWorkerPoolTemplateContainerVolumeMount>>
  volumeMounts;

  /// Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image.
  final pulumi.Input<String> workingDir;

  /// Creates a new [GetWorkerPoolTemplateContainer].
  /// [args] Arguments to the entrypoint. The docker image's CMD is used if this is not provided. Variable references are not supported in Cloud Run.
  /// [commands] Entrypoint array. Not executed within a shell. The docker image's ENTRYPOINT is used if this is not provided. Variable references $(VAR_NAME) are expanded using the container's environment. If a variable cannot be resolved, the reference in the input string will be unchanged. The $(VAR_NAME) syntax can be escaped with a double $$, ie: $$(VAR_NAME). Escaped references will never be expanded, regardless of whether the variable exists or not. More info: https://kubernetes.io/docs/tasks/inject-data-application/define-command-argument-container/#running-a-command-in-a-shell
  /// [dependsOns] Names of the containers that must start before this container.
  /// [envs] List of environment variables to set in the container.
  /// [image] URL of the Container image in Google Container Registry or Google Artifact Registry. More info: https://kubernetes.io/docs/concepts/containers/images
  /// [livenessProbes] Periodic probe of container liveness. Container will be restarted if the probe fails.
  /// [name] The name of the Cloud Run v2 Worker Pool.
  /// [resources] Compute Resource requirements by this container. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources
  /// [startupProbes] Startup probe of application within the container. All other probes are disabled if a startup probe is provided, until it succeeds. Container will not be added to service endpoints if the probe fails.
  /// [volumeMounts] Volume to mount into the container's filesystem.
  /// [workingDir] Container's working directory. If not specified, the container runtime's default will be used, which might be configured in the container image.
  GetWorkerPoolTemplateContainer({
    required this.args,
    required this.commands,
    required this.dependsOns,
    required this.envs,
    required this.image,
    required this.livenessProbes,
    required this.name,
    required this.resources,
    required this.startupProbes,
    required this.volumeMounts,
    required this.workingDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': args,
      'commands': commands,
      'dependsOns': dependsOns,
      'envs':
          pulumi.Input.mapInputValue<
            List<GetWorkerPoolTemplateContainerEnv>,
            List<Map<String, dynamic>>
          >(
            envs,
            (value) =>
                pulumi.Input.encodeList<
                  GetWorkerPoolTemplateContainerEnv,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'image': image,
      'livenessProbes':
          pulumi.Input.mapInputValue<
            List<GetWorkerPoolTemplateContainerLivenessProbe>,
            List<Map<String, dynamic>>
          >(
            livenessProbes,
            (value) =>
                pulumi.Input.encodeList<
                  GetWorkerPoolTemplateContainerLivenessProbe,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'name': name,
      'resources':
          pulumi.Input.mapInputValue<
            List<GetWorkerPoolTemplateContainerResource>,
            List<Map<String, dynamic>>
          >(
            resources,
            (value) =>
                pulumi.Input.encodeList<
                  GetWorkerPoolTemplateContainerResource,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'startupProbes':
          pulumi.Input.mapInputValue<
            List<GetWorkerPoolTemplateContainerStartupProbe>,
            List<Map<String, dynamic>>
          >(
            startupProbes,
            (value) =>
                pulumi.Input.encodeList<
                  GetWorkerPoolTemplateContainerStartupProbe,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'volumeMounts':
          pulumi.Input.mapInputValue<
            List<GetWorkerPoolTemplateContainerVolumeMount>,
            List<Map<String, dynamic>>
          >(
            volumeMounts,
            (value) =>
                pulumi.Input.encodeList<
                  GetWorkerPoolTemplateContainerVolumeMount,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'workingDir': workingDir,
    };
  }

  factory GetWorkerPoolTemplateContainer.fromMap(Map<String, dynamic> map) {
    return GetWorkerPoolTemplateContainer(
      args: pulumi.Input.fromValue((map['args'] as List).cast<String>()),
      commands: pulumi.Input.fromValue(
        (map['commands'] as List).cast<String>(),
      ),
      dependsOns: pulumi.Input.fromValue(
        (map['dependsOns'] as List).cast<String>(),
      ),
      envs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetWorkerPoolTemplateContainerEnv>(
          map['envs']!,
          (value) => GetWorkerPoolTemplateContainerEnv.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      image: pulumi.Input.fromValue(map['image'] as String),
      livenessProbes: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetWorkerPoolTemplateContainerLivenessProbe>(
          map['livenessProbes']!,
          (value) => GetWorkerPoolTemplateContainerLivenessProbe.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      resources: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetWorkerPoolTemplateContainerResource>(
          map['resources']!,
          (value) => GetWorkerPoolTemplateContainerResource.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      startupProbes: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetWorkerPoolTemplateContainerStartupProbe>(
          map['startupProbes']!,
          (value) => GetWorkerPoolTemplateContainerStartupProbe.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      volumeMounts: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetWorkerPoolTemplateContainerVolumeMount>(
          map['volumeMounts']!,
          (value) => GetWorkerPoolTemplateContainerVolumeMount.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      workingDir: pulumi.Input.fromValue(map['workingDir'] as String),
    );
  }
}
