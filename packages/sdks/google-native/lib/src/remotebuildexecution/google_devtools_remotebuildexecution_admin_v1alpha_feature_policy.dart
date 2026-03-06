// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_remotebuildexecution_admin_v1alpha_feature_policy_feature.dart';
import 'google_devtools_remotebuildexecution_admin_v1alpha_feature_policy_linux_isolation.dart';

/// FeaturePolicy defines features allowed to be used on RBE instances, as well as instance-wide behavior changes that take effect without opt-in or opt-out at usage time.
class GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy {
  /// Which container image sources are allowed. Currently only RBE-supported registry (gcr.io) is allowed. One can allow all repositories under a project or one specific repository only. E.g. container_image_sources { policy: RESTRICTED allowed_values: [ "gcr.io/project-foo", "gcr.io/project-bar/repo-baz", ] } will allow any repositories under "gcr.io/project-foo" plus the repository "gcr.io/project-bar/repo-baz". Default (UNSPECIFIED) is equivalent to any source is allowed.
  final pulumi.Input<GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature>? containerImageSources;
  /// Whether dockerAddCapabilities can be used or what capabilities are allowed.
  final pulumi.Input<GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature>? dockerAddCapabilities;
  /// Whether dockerChrootPath can be used.
  final pulumi.Input<GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature>? dockerChrootPath;
  /// Whether dockerNetwork can be used or what network modes are allowed. E.g. one may allow `off` value only via `allowed_values`.
  final pulumi.Input<GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature>? dockerNetwork;
  /// Whether dockerPrivileged can be used.
  final pulumi.Input<GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature>? dockerPrivileged;
  /// Whether dockerRunAsRoot can be used.
  final pulumi.Input<GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature>? dockerRunAsRoot;
  /// Whether dockerRuntime is allowed to be set or what runtimes are allowed. Note linux_isolation takes precedence, and if set, docker_runtime values may be rejected if they are incompatible with the selected isolation.
  final pulumi.Input<GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature>? dockerRuntime;
  /// Whether dockerSiblingContainers can be used.
  final pulumi.Input<GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature>? dockerSiblingContainers;
  /// linux_isolation allows overriding the docker runtime used for containers started on Linux.
  final pulumi.Input<GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyLinuxIsolation>? linuxIsolation;

  /// Creates a new [GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy].
  /// [containerImageSources] Which container image sources are allowed. Currently only RBE-supported registry (gcr.io) is allowed. One can allow all repositories under a project or one specific repository only. E.g. container_image_sources { policy: RESTRICTED allowed_values: [ "gcr.io/project-foo", "gcr.io/project-bar/repo-baz", ] } will allow any repositories under "gcr.io/project-foo" plus the repository "gcr.io/project-bar/repo-baz". Default (UNSPECIFIED) is equivalent to any source is allowed.
  /// [dockerAddCapabilities] Whether dockerAddCapabilities can be used or what capabilities are allowed.
  /// [dockerChrootPath] Whether dockerChrootPath can be used.
  /// [dockerNetwork] Whether dockerNetwork can be used or what network modes are allowed. E.g. one may allow `off` value only via `allowed_values`.
  /// [dockerPrivileged] Whether dockerPrivileged can be used.
  /// [dockerRunAsRoot] Whether dockerRunAsRoot can be used.
  /// [dockerRuntime] Whether dockerRuntime is allowed to be set or what runtimes are allowed. Note linux_isolation takes precedence, and if set, docker_runtime values may be rejected if they are incompatible with the selected isolation.
  /// [dockerSiblingContainers] Whether dockerSiblingContainers can be used.
  /// [linuxIsolation] linux_isolation allows overriding the docker runtime used for containers started on Linux.
  const GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy({
    this.containerImageSources,
    this.dockerAddCapabilities,
    this.dockerChrootPath,
    this.dockerNetwork,
    this.dockerPrivileged,
    this.dockerRunAsRoot,
    this.dockerRuntime,
    this.dockerSiblingContainers,
    this.linuxIsolation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerImageSources': ?pulumi.Input.mapOptionalInputValue<GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature, Map<String, dynamic>>(containerImageSources, (value) => value.toMap()),
      'dockerAddCapabilities': ?pulumi.Input.mapOptionalInputValue<GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature, Map<String, dynamic>>(dockerAddCapabilities, (value) => value.toMap()),
      'dockerChrootPath': ?pulumi.Input.mapOptionalInputValue<GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature, Map<String, dynamic>>(dockerChrootPath, (value) => value.toMap()),
      'dockerNetwork': ?pulumi.Input.mapOptionalInputValue<GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature, Map<String, dynamic>>(dockerNetwork, (value) => value.toMap()),
      'dockerPrivileged': ?pulumi.Input.mapOptionalInputValue<GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature, Map<String, dynamic>>(dockerPrivileged, (value) => value.toMap()),
      'dockerRunAsRoot': ?pulumi.Input.mapOptionalInputValue<GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature, Map<String, dynamic>>(dockerRunAsRoot, (value) => value.toMap()),
      'dockerRuntime': ?pulumi.Input.mapOptionalInputValue<GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature, Map<String, dynamic>>(dockerRuntime, (value) => value.toMap()),
      'dockerSiblingContainers': ?pulumi.Input.mapOptionalInputValue<GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature, Map<String, dynamic>>(dockerSiblingContainers, (value) => value.toMap()),
      'linuxIsolation': ?pulumi.Input.mapOptionalInputValue<GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyLinuxIsolation, String>(linuxIsolation, (value) => value.wireValue),
    };
  }

  factory GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicy(
      containerImageSources: (() { final guardedValue = map['containerImageSources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dockerAddCapabilities: (() { final guardedValue = map['dockerAddCapabilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dockerChrootPath: (() { final guardedValue = map['dockerChrootPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dockerNetwork: (() { final guardedValue = map['dockerNetwork']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dockerPrivileged: (() { final guardedValue = map['dockerPrivileged']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dockerRunAsRoot: (() { final guardedValue = map['dockerRunAsRoot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dockerRuntime: (() { final guardedValue = map['dockerRuntime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dockerSiblingContainers: (() { final guardedValue = map['dockerSiblingContainers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linuxIsolation: (() { final guardedValue = map['linuxIsolation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyLinuxIsolation.fromValue(guardedValue as String)); })(),
    );
  }
}

