// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_remotebuildexecution_admin_v1alpha_feature_policy_feature_response.dart';

/// FeaturePolicy defines features allowed to be used on RBE instances, as well as instance-wide behavior changes that take effect without opt-in or opt-out at usage time.
class GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyResponse {
  /// Which container image sources are allowed. Currently only RBE-supported registry (gcr.io) is allowed. One can allow all repositories under a project or one specific repository only. E.g. container_image_sources { policy: RESTRICTED allowed_values: [ "gcr.io/project-foo", "gcr.io/project-bar/repo-baz", ] } will allow any repositories under "gcr.io/project-foo" plus the repository "gcr.io/project-bar/repo-baz". Default (UNSPECIFIED) is equivalent to any source is allowed.
  final pulumi.Input<
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse
  >
  containerImageSources;

  /// Whether dockerAddCapabilities can be used or what capabilities are allowed.
  final pulumi.Input<
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse
  >
  dockerAddCapabilities;

  /// Whether dockerChrootPath can be used.
  final pulumi.Input<
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse
  >
  dockerChrootPath;

  /// Whether dockerNetwork can be used or what network modes are allowed. E.g. one may allow `off` value only via `allowed_values`.
  final pulumi.Input<
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse
  >
  dockerNetwork;

  /// Whether dockerPrivileged can be used.
  final pulumi.Input<
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse
  >
  dockerPrivileged;

  /// Whether dockerRunAsRoot can be used.
  final pulumi.Input<
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse
  >
  dockerRunAsRoot;

  /// Whether dockerRuntime is allowed to be set or what runtimes are allowed. Note linux_isolation takes precedence, and if set, docker_runtime values may be rejected if they are incompatible with the selected isolation.
  final pulumi.Input<
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse
  >
  dockerRuntime;

  /// Whether dockerSiblingContainers can be used.
  final pulumi.Input<
    GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse
  >
  dockerSiblingContainers;

  /// linux_isolation allows overriding the docker runtime used for containers started on Linux.
  final pulumi.Input<String> linuxIsolation;

  /// Creates a new [GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyResponse].
  /// [containerImageSources] Which container image sources are allowed. Currently only RBE-supported registry (gcr.io) is allowed. One can allow all repositories under a project or one specific repository only. E.g. container_image_sources { policy: RESTRICTED allowed_values: [ "gcr.io/project-foo", "gcr.io/project-bar/repo-baz", ] } will allow any repositories under "gcr.io/project-foo" plus the repository "gcr.io/project-bar/repo-baz". Default (UNSPECIFIED) is equivalent to any source is allowed.
  /// [dockerAddCapabilities] Whether dockerAddCapabilities can be used or what capabilities are allowed.
  /// [dockerChrootPath] Whether dockerChrootPath can be used.
  /// [dockerNetwork] Whether dockerNetwork can be used or what network modes are allowed. E.g. one may allow `off` value only via `allowed_values`.
  /// [dockerPrivileged] Whether dockerPrivileged can be used.
  /// [dockerRunAsRoot] Whether dockerRunAsRoot can be used.
  /// [dockerRuntime] Whether dockerRuntime is allowed to be set or what runtimes are allowed. Note linux_isolation takes precedence, and if set, docker_runtime values may be rejected if they are incompatible with the selected isolation.
  /// [dockerSiblingContainers] Whether dockerSiblingContainers can be used.
  /// [linuxIsolation] linux_isolation allows overriding the docker runtime used for containers started on Linux.
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyResponse({
    required this.containerImageSources,
    required this.dockerAddCapabilities,
    required this.dockerChrootPath,
    required this.dockerNetwork,
    required this.dockerPrivileged,
    required this.dockerRunAsRoot,
    required this.dockerRuntime,
    required this.dockerSiblingContainers,
    required this.linuxIsolation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerImageSources':
          pulumi.Input.mapInputValue<
            GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse,
            Map<String, dynamic>
          >(containerImageSources, (value) => value.toMap()),
      'dockerAddCapabilities':
          pulumi.Input.mapInputValue<
            GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse,
            Map<String, dynamic>
          >(dockerAddCapabilities, (value) => value.toMap()),
      'dockerChrootPath':
          pulumi.Input.mapInputValue<
            GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse,
            Map<String, dynamic>
          >(dockerChrootPath, (value) => value.toMap()),
      'dockerNetwork':
          pulumi.Input.mapInputValue<
            GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse,
            Map<String, dynamic>
          >(dockerNetwork, (value) => value.toMap()),
      'dockerPrivileged':
          pulumi.Input.mapInputValue<
            GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse,
            Map<String, dynamic>
          >(dockerPrivileged, (value) => value.toMap()),
      'dockerRunAsRoot':
          pulumi.Input.mapInputValue<
            GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse,
            Map<String, dynamic>
          >(dockerRunAsRoot, (value) => value.toMap()),
      'dockerRuntime':
          pulumi.Input.mapInputValue<
            GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse,
            Map<String, dynamic>
          >(dockerRuntime, (value) => value.toMap()),
      'dockerSiblingContainers':
          pulumi.Input.mapInputValue<
            GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse,
            Map<String, dynamic>
          >(dockerSiblingContainers, (value) => value.toMap()),
      'linuxIsolation': linuxIsolation,
    };
  }

  factory GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyResponse(
      containerImageSources: pulumi.Input.fromValue(
        GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse.fromMap(
          (map['containerImageSources']! as Map).cast<String, dynamic>(),
        ),
      ),
      dockerAddCapabilities: pulumi.Input.fromValue(
        GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse.fromMap(
          (map['dockerAddCapabilities']! as Map).cast<String, dynamic>(),
        ),
      ),
      dockerChrootPath: pulumi.Input.fromValue(
        GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse.fromMap(
          (map['dockerChrootPath']! as Map).cast<String, dynamic>(),
        ),
      ),
      dockerNetwork: pulumi.Input.fromValue(
        GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse.fromMap(
          (map['dockerNetwork']! as Map).cast<String, dynamic>(),
        ),
      ),
      dockerPrivileged: pulumi.Input.fromValue(
        GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse.fromMap(
          (map['dockerPrivileged']! as Map).cast<String, dynamic>(),
        ),
      ),
      dockerRunAsRoot: pulumi.Input.fromValue(
        GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse.fromMap(
          (map['dockerRunAsRoot']! as Map).cast<String, dynamic>(),
        ),
      ),
      dockerRuntime: pulumi.Input.fromValue(
        GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse.fromMap(
          (map['dockerRuntime']! as Map).cast<String, dynamic>(),
        ),
      ),
      dockerSiblingContainers: pulumi.Input.fromValue(
        GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse.fromMap(
          (map['dockerSiblingContainers']! as Map).cast<String, dynamic>(),
        ),
      ),
      linuxIsolation: pulumi.Input.fromValue(map['linuxIsolation'] as String),
    );
  }
}
