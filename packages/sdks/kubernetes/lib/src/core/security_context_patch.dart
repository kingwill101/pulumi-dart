// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_armor_profile_patch.dart';
import 'capabilities_patch.dart';
import 'seccomp_profile_patch.dart';
import 'selinux_options_patch.dart';
import 'windows_security_context_options_patch.dart';

/// SecurityContext holds security configuration that will be applied to a container. Some fields are present in both SecurityContext and PodSecurityContext.  When both are set, the values in SecurityContext take precedence.
class SecurityContextPatch {
  /// AllowPrivilegeEscalation controls whether a process can gain more privileges than its parent process. This bool directly controls if the no_new_privs flag will be set on the container process. AllowPrivilegeEscalation is true always when the container is: 1) run as Privileged 2) has CAP_SYS_ADMIN Note that this field cannot be set when spec.os.name is windows.
  final pulumi.Input<bool>? allowPrivilegeEscalation;
  /// appArmorProfile is the AppArmor options to use by this container. If set, this profile overrides the pod's appArmorProfile. Note that this field cannot be set when spec.os.name is windows.
  final pulumi.Input<AppArmorProfilePatch>? appArmorProfile;
  /// The capabilities to add/drop when running containers. Defaults to the default set of capabilities granted by the container runtime. Note that this field cannot be set when spec.os.name is windows.
  final pulumi.Input<CapabilitiesPatch>? capabilities;
  /// Run container in privileged mode. Processes in privileged containers are essentially equivalent to root on the host. Defaults to false. Note that this field cannot be set when spec.os.name is windows.
  final pulumi.Input<bool>? privileged;
  /// procMount denotes the type of proc mount to use for the containers. The default value is Default which uses the container runtime defaults for readonly paths and masked paths. This requires the ProcMountType feature flag to be enabled. Note that this field cannot be set when spec.os.name is windows.
  final pulumi.Input<String>? procMount;
  /// Whether this container has a read-only root filesystem. Default is false. Note that this field cannot be set when spec.os.name is windows.
  final pulumi.Input<bool>? readOnlyRootFilesystem;
  /// The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows.
  final pulumi.Input<int>? runAsGroup;
  /// Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
  final pulumi.Input<bool>? runAsNonRoot;
  /// The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows.
  final pulumi.Input<int>? runAsUser;
  /// The SELinux context to be applied to the container. If unspecified, the container runtime will allocate a random SELinux context for each container.  May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows.
  final pulumi.Input<SELinuxOptionsPatch>? seLinuxOptions;
  /// The seccomp options to use by this container. If seccomp options are provided at both the pod & container level, the container options override the pod options. Note that this field cannot be set when spec.os.name is windows.
  final pulumi.Input<SeccompProfilePatch>? seccompProfile;
  /// The Windows specific settings applied to all containers. If unspecified, the options from the PodSecurityContext will be used. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is linux.
  final pulumi.Input<WindowsSecurityContextOptionsPatch>? windowsOptions;

  /// Creates a new [SecurityContextPatch].
  /// [allowPrivilegeEscalation] AllowPrivilegeEscalation controls whether a process can gain more privileges than its parent process. This bool directly controls if the no_new_privs flag will be set on the container process. AllowPrivilegeEscalation is true always when the container is: 1) run as Privileged 2) has CAP_SYS_ADMIN Note that this field cannot be set when spec.os.name is windows.
  /// [appArmorProfile] appArmorProfile is the AppArmor options to use by this container. If set, this profile overrides the pod's appArmorProfile. Note that this field cannot be set when spec.os.name is windows.
  /// [capabilities] The capabilities to add/drop when running containers. Defaults to the default set of capabilities granted by the container runtime. Note that this field cannot be set when spec.os.name is windows.
  /// [privileged] Run container in privileged mode. Processes in privileged containers are essentially equivalent to root on the host. Defaults to false. Note that this field cannot be set when spec.os.name is windows.
  /// [procMount] procMount denotes the type of proc mount to use for the containers. The default value is Default which uses the container runtime defaults for readonly paths and masked paths. This requires the ProcMountType feature flag to be enabled. Note that this field cannot be set when spec.os.name is windows.
  /// [readOnlyRootFilesystem] Whether this container has a read-only root filesystem. Default is false. Note that this field cannot be set when spec.os.name is windows.
  /// [runAsGroup] The GID to run the entrypoint of the container process. Uses runtime default if unset. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows.
  /// [runAsNonRoot] Indicates that the container must run as a non-root user. If true, the Kubelet will validate the image at runtime to ensure that it does not run as UID 0 (root) and fail to start the container if it does. If unset or false, no such validation will be performed. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence.
  /// [runAsUser] The UID to run the entrypoint of the container process. Defaults to user specified in image metadata if unspecified. May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows.
  /// [seLinuxOptions] The SELinux context to be applied to the container. If unspecified, the container runtime will allocate a random SELinux context for each container.  May also be set in PodSecurityContext.  If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is windows.
  /// [seccompProfile] The seccomp options to use by this container. If seccomp options are provided at both the pod & container level, the container options override the pod options. Note that this field cannot be set when spec.os.name is windows.
  /// [windowsOptions] The Windows specific settings applied to all containers. If unspecified, the options from the PodSecurityContext will be used. If set in both SecurityContext and PodSecurityContext, the value specified in SecurityContext takes precedence. Note that this field cannot be set when spec.os.name is linux.
  SecurityContextPatch({
    this.allowPrivilegeEscalation,
    this.appArmorProfile,
    this.capabilities,
    this.privileged,
    this.procMount,
    this.readOnlyRootFilesystem,
    this.runAsGroup,
    this.runAsNonRoot,
    this.runAsUser,
    this.seLinuxOptions,
    this.seccompProfile,
    this.windowsOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPrivilegeEscalation': ?allowPrivilegeEscalation,
      'appArmorProfile': ?pulumi.Input.mapOptionalInputValue<AppArmorProfilePatch, Map<String, dynamic>>(appArmorProfile, (value) => value.toMap()),
      'capabilities': ?pulumi.Input.mapOptionalInputValue<CapabilitiesPatch, Map<String, dynamic>>(capabilities, (value) => value.toMap()),
      'privileged': ?privileged,
      'procMount': ?procMount,
      'readOnlyRootFilesystem': ?readOnlyRootFilesystem,
      'runAsGroup': ?runAsGroup,
      'runAsNonRoot': ?runAsNonRoot,
      'runAsUser': ?runAsUser,
      'seLinuxOptions': ?pulumi.Input.mapOptionalInputValue<SELinuxOptionsPatch, Map<String, dynamic>>(seLinuxOptions, (value) => value.toMap()),
      'seccompProfile': ?pulumi.Input.mapOptionalInputValue<SeccompProfilePatch, Map<String, dynamic>>(seccompProfile, (value) => value.toMap()),
      'windowsOptions': ?pulumi.Input.mapOptionalInputValue<WindowsSecurityContextOptionsPatch, Map<String, dynamic>>(windowsOptions, (value) => value.toMap()),
    };
  }

  factory SecurityContextPatch.fromMap(Map<String, dynamic> map) {
    return SecurityContextPatch(
      allowPrivilegeEscalation: map['allowPrivilegeEscalation'] == null ? null : (map['allowPrivilegeEscalation'] as bool).input(),
      appArmorProfile: map['appArmorProfile'] == null ? null : (AppArmorProfilePatch.fromMap((map['appArmorProfile'] as Map).cast<String, dynamic>())).input(),
      capabilities: map['capabilities'] == null ? null : (CapabilitiesPatch.fromMap((map['capabilities'] as Map).cast<String, dynamic>())).input(),
      privileged: map['privileged'] == null ? null : (map['privileged'] as bool).input(),
      procMount: map['procMount'] == null ? null : (map['procMount'] as String).input(),
      readOnlyRootFilesystem: map['readOnlyRootFilesystem'] == null ? null : (map['readOnlyRootFilesystem'] as bool).input(),
      runAsGroup: map['runAsGroup'] == null ? null : (map['runAsGroup'] as int).input(),
      runAsNonRoot: map['runAsNonRoot'] == null ? null : (map['runAsNonRoot'] as bool).input(),
      runAsUser: map['runAsUser'] == null ? null : (map['runAsUser'] as int).input(),
      seLinuxOptions: map['seLinuxOptions'] == null ? null : (SELinuxOptionsPatch.fromMap((map['seLinuxOptions'] as Map).cast<String, dynamic>())).input(),
      seccompProfile: map['seccompProfile'] == null ? null : (SeccompProfilePatch.fromMap((map['seccompProfile'] as Map).cast<String, dynamic>())).input(),
      windowsOptions: map['windowsOptions'] == null ? null : (WindowsSecurityContextOptionsPatch.fromMap((map['windowsOptions'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

