// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allowed_csidriver.dart';
import 'allowed_flex_volume.dart';
import 'allowed_host_path.dart';
import 'fsgroup_strategy_options.dart';
import 'host_port_range.dart';
import 'run_as_group_strategy_options.dart';
import 'run_as_user_strategy_options.dart';
import 'runtime_class_strategy_options.dart';
import 'selinux_strategy_options.dart';
import 'supplemental_groups_strategy_options.dart';

/// PodSecurityPolicySpec defines the policy enforced. Deprecated: use PodSecurityPolicySpec from policy API Group instead.
class PodSecurityPolicySpec {
  /// allowPrivilegeEscalation determines if a pod can request to allow privilege escalation. If unspecified, defaults to true.
  final bool? allowPrivilegeEscalation;
  /// AllowedCSIDrivers is a whitelist of inline CSI drivers that must be explicitly set to be embedded within a pod spec. An empty value indicates that any CSI driver can be used for inline ephemeral volumes.
  final List<AllowedCSIDriver>? allowedCSIDrivers;
  /// allowedCapabilities is a list of capabilities that can be requested to add to the container. Capabilities in this field may be added at the pod author's discretion. You must not list a capability in both allowedCapabilities and requiredDropCapabilities.
  final List<String>? allowedCapabilities;
  /// allowedFlexVolumes is a whitelist of allowed Flexvolumes.  Empty or nil indicates that all Flexvolumes may be used.  This parameter is effective only when the usage of the Flexvolumes is allowed in the "volumes" field.
  final List<AllowedFlexVolume>? allowedFlexVolumes;
  /// allowedHostPaths is a white list of allowed host paths. Empty indicates that all host paths may be used.
  final List<AllowedHostPath>? allowedHostPaths;
  /// AllowedProcMountTypes is a whitelist of allowed ProcMountTypes. Empty or nil indicates that only the DefaultProcMountType may be used. This requires the ProcMountType feature flag to be enabled.
  final List<String>? allowedProcMountTypes;
  /// allowedUnsafeSysctls is a list of explicitly allowed unsafe sysctls, defaults to none. Each entry is either a plain sysctl name or ends in "*" in which case it is considered as a prefix of allowed sysctls. Single * means all unsafe sysctls are allowed. Kubelet has to whitelist all allowed unsafe sysctls explicitly to avoid rejection.
  ///
  /// Examples: e.g. "foo/*" allows "foo/bar", "foo/baz", etc. e.g. "foo.*" allows "foo.bar", "foo.baz", etc.
  final List<String>? allowedUnsafeSysctls;
  /// defaultAddCapabilities is the default set of capabilities that will be added to the container unless the pod spec specifically drops the capability.  You may not list a capability in both defaultAddCapabilities and requiredDropCapabilities. Capabilities added here are implicitly allowed, and need not be included in the allowedCapabilities list.
  final List<String>? defaultAddCapabilities;
  /// defaultAllowPrivilegeEscalation controls the default setting for whether a process can gain more privileges than its parent process.
  final bool? defaultAllowPrivilegeEscalation;
  /// forbiddenSysctls is a list of explicitly forbidden sysctls, defaults to none. Each entry is either a plain sysctl name or ends in "*" in which case it is considered as a prefix of forbidden sysctls. Single * means all sysctls are forbidden.
  ///
  /// Examples: e.g. "foo/*" forbids "foo/bar", "foo/baz", etc. e.g. "foo.*" forbids "foo.bar", "foo.baz", etc.
  final List<String>? forbiddenSysctls;
  /// fsGroup is the strategy that will dictate what fs group is used by the SecurityContext.
  final FSGroupStrategyOptions fsGroup;
  /// hostIPC determines if the policy allows the use of HostIPC in the pod spec.
  final bool? hostIPC;
  /// hostNetwork determines if the policy allows the use of HostNetwork in the pod spec.
  final bool? hostNetwork;
  /// hostPID determines if the policy allows the use of HostPID in the pod spec.
  final bool? hostPID;
  /// hostPorts determines which host port ranges are allowed to be exposed.
  final List<HostPortRange>? hostPorts;
  /// privileged determines if a pod can request to be run as privileged.
  final bool? privileged;
  /// readOnlyRootFilesystem when set to true will force containers to run with a read only root file system.  If the container specifically requests to run with a non-read only root file system the PSP should deny the pod. If set to false the container may run with a read only root file system if it wishes but it will not be forced to.
  final bool? readOnlyRootFilesystem;
  /// requiredDropCapabilities are the capabilities that will be dropped from the container.  These are required to be dropped and cannot be added.
  final List<String>? requiredDropCapabilities;
  /// RunAsGroup is the strategy that will dictate the allowable RunAsGroup values that may be set. If this field is omitted, the pod's RunAsGroup can take any value. This field requires the RunAsGroup feature gate to be enabled.
  final RunAsGroupStrategyOptions? runAsGroup;
  /// runAsUser is the strategy that will dictate the allowable RunAsUser values that may be set.
  final RunAsUserStrategyOptions runAsUser;
  /// runtimeClass is the strategy that will dictate the allowable RuntimeClasses for a pod. If this field is omitted, the pod's runtimeClassName field is unrestricted. Enforcement of this field depends on the RuntimeClass feature gate being enabled.
  final RuntimeClassStrategyOptions? runtimeClass;
  /// seLinux is the strategy that will dictate the allowable labels that may be set.
  final SELinuxStrategyOptions seLinux;
  /// supplementalGroups is the strategy that will dictate what supplemental groups are used by the SecurityContext.
  final SupplementalGroupsStrategyOptions supplementalGroups;
  /// volumes is a white list of allowed volume plugins. Empty indicates that no volumes may be used. To allow all volumes you may use '*'.
  final List<String>? volumes;

  /// Creates a new [PodSecurityPolicySpec].
  /// [allowPrivilegeEscalation] allowPrivilegeEscalation determines if a pod can request to allow privilege escalation. If unspecified, defaults to true.
  /// [allowedCSIDrivers] AllowedCSIDrivers is a whitelist of inline CSI drivers that must be explicitly set to be embedded within a pod spec. An empty value indicates that any CSI driver can be used for inline ephemeral volumes.
  /// [allowedCapabilities] allowedCapabilities is a list of capabilities that can be requested to add to the container. Capabilities in this field may be added at the pod author's discretion. You must not list a capability in both allowedCapabilities and requiredDropCapabilities.
  /// [allowedFlexVolumes] allowedFlexVolumes is a whitelist of allowed Flexvolumes.  Empty or nil indicates that all Flexvolumes may be used.  This parameter is effective only when the usage of the Flexvolumes is allowed in the "volumes" field.
  /// [allowedHostPaths] allowedHostPaths is a white list of allowed host paths. Empty indicates that all host paths may be used.
  /// [allowedProcMountTypes] AllowedProcMountTypes is a whitelist of allowed ProcMountTypes. Empty or nil indicates that only the DefaultProcMountType may be used. This requires the ProcMountType feature flag to be enabled.
  /// [allowedUnsafeSysctls] allowedUnsafeSysctls is a list of explicitly allowed unsafe sysctls, defaults to none. Each entry is either a plain sysctl name or ends in "*" in which case it is considered as a prefix of allowed sysctls. Single * means all unsafe sysctls are allowed. Kubelet has to whitelist all allowed unsafe sysctls explicitly to avoid rejection.
  /// [defaultAddCapabilities] defaultAddCapabilities is the default set of capabilities that will be added to the container unless the pod spec specifically drops the capability.  You may not list a capability in both defaultAddCapabilities and requiredDropCapabilities. Capabilities added here are implicitly allowed, and need not be included in the allowedCapabilities list.
  /// [defaultAllowPrivilegeEscalation] defaultAllowPrivilegeEscalation controls the default setting for whether a process can gain more privileges than its parent process.
  /// [forbiddenSysctls] forbiddenSysctls is a list of explicitly forbidden sysctls, defaults to none. Each entry is either a plain sysctl name or ends in "*" in which case it is considered as a prefix of forbidden sysctls. Single * means all sysctls are forbidden.
  /// [fsGroup] fsGroup is the strategy that will dictate what fs group is used by the SecurityContext.
  /// [hostIPC] hostIPC determines if the policy allows the use of HostIPC in the pod spec.
  /// [hostNetwork] hostNetwork determines if the policy allows the use of HostNetwork in the pod spec.
  /// [hostPID] hostPID determines if the policy allows the use of HostPID in the pod spec.
  /// [hostPorts] hostPorts determines which host port ranges are allowed to be exposed.
  /// [privileged] privileged determines if a pod can request to be run as privileged.
  /// [readOnlyRootFilesystem] readOnlyRootFilesystem when set to true will force containers to run with a read only root file system.  If the container specifically requests to run with a non-read only root file system the PSP should deny the pod. If set to false the container may run with a read only root file system if it wishes but it will not be forced to.
  /// [requiredDropCapabilities] requiredDropCapabilities are the capabilities that will be dropped from the container.  These are required to be dropped and cannot be added.
  /// [runAsGroup] RunAsGroup is the strategy that will dictate the allowable RunAsGroup values that may be set. If this field is omitted, the pod's RunAsGroup can take any value. This field requires the RunAsGroup feature gate to be enabled.
  /// [runAsUser] runAsUser is the strategy that will dictate the allowable RunAsUser values that may be set.
  /// [runtimeClass] runtimeClass is the strategy that will dictate the allowable RuntimeClasses for a pod. If this field is omitted, the pod's runtimeClassName field is unrestricted. Enforcement of this field depends on the RuntimeClass feature gate being enabled.
  /// [seLinux] seLinux is the strategy that will dictate the allowable labels that may be set.
  /// [supplementalGroups] supplementalGroups is the strategy that will dictate what supplemental groups are used by the SecurityContext.
  /// [volumes] volumes is a white list of allowed volume plugins. Empty indicates that no volumes may be used. To allow all volumes you may use '*'.
  PodSecurityPolicySpec({
    this.allowPrivilegeEscalation,
    this.allowedCSIDrivers,
    this.allowedCapabilities,
    this.allowedFlexVolumes,
    this.allowedHostPaths,
    this.allowedProcMountTypes,
    this.allowedUnsafeSysctls,
    this.defaultAddCapabilities,
    this.defaultAllowPrivilegeEscalation,
    this.forbiddenSysctls,
    required this.fsGroup,
    this.hostIPC,
    this.hostNetwork,
    this.hostPID,
    this.hostPorts,
    this.privileged,
    this.readOnlyRootFilesystem,
    this.requiredDropCapabilities,
    this.runAsGroup,
    required this.runAsUser,
    this.runtimeClass,
    required this.seLinux,
    required this.supplementalGroups,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPrivilegeEscalation': ?allowPrivilegeEscalation,
      'allowedCSIDrivers': ?allowedCSIDrivers == null ? null : pulumi.Input.encodeList<AllowedCSIDriver, Map<String, dynamic>>(allowedCSIDrivers!, (value) => value.toMap()),
      'allowedCapabilities': ?allowedCapabilities,
      'allowedFlexVolumes': ?allowedFlexVolumes == null ? null : pulumi.Input.encodeList<AllowedFlexVolume, Map<String, dynamic>>(allowedFlexVolumes!, (value) => value.toMap()),
      'allowedHostPaths': ?allowedHostPaths == null ? null : pulumi.Input.encodeList<AllowedHostPath, Map<String, dynamic>>(allowedHostPaths!, (value) => value.toMap()),
      'allowedProcMountTypes': ?allowedProcMountTypes,
      'allowedUnsafeSysctls': ?allowedUnsafeSysctls,
      'defaultAddCapabilities': ?defaultAddCapabilities,
      'defaultAllowPrivilegeEscalation': ?defaultAllowPrivilegeEscalation,
      'forbiddenSysctls': ?forbiddenSysctls,
      'fsGroup': fsGroup.toMap(),
      'hostIPC': ?hostIPC,
      'hostNetwork': ?hostNetwork,
      'hostPID': ?hostPID,
      'hostPorts': ?hostPorts == null ? null : pulumi.Input.encodeList<HostPortRange, Map<String, dynamic>>(hostPorts!, (value) => value.toMap()),
      'privileged': ?privileged,
      'readOnlyRootFilesystem': ?readOnlyRootFilesystem,
      'requiredDropCapabilities': ?requiredDropCapabilities,
      'runAsGroup': ?runAsGroup == null ? null : runAsGroup!.toMap(),
      'runAsUser': runAsUser.toMap(),
      'runtimeClass': ?runtimeClass == null ? null : runtimeClass!.toMap(),
      'seLinux': seLinux.toMap(),
      'supplementalGroups': supplementalGroups.toMap(),
      'volumes': ?volumes,
    };
  }

  factory PodSecurityPolicySpec.fromMap(Map<String, dynamic> map) {
    return PodSecurityPolicySpec(
      allowPrivilegeEscalation: map['allowPrivilegeEscalation'] == null ? null : map['allowPrivilegeEscalation'] as bool,
      allowedCSIDrivers: map['allowedCSIDrivers'] == null ? null : pulumi.Input.decodeList<AllowedCSIDriver>(map['allowedCSIDrivers'], (value) => AllowedCSIDriver.fromMap((value as Map).cast<String, dynamic>())),
      allowedCapabilities: map['allowedCapabilities'] == null ? null : (map['allowedCapabilities'] as List).cast<String>(),
      allowedFlexVolumes: map['allowedFlexVolumes'] == null ? null : pulumi.Input.decodeList<AllowedFlexVolume>(map['allowedFlexVolumes'], (value) => AllowedFlexVolume.fromMap((value as Map).cast<String, dynamic>())),
      allowedHostPaths: map['allowedHostPaths'] == null ? null : pulumi.Input.decodeList<AllowedHostPath>(map['allowedHostPaths'], (value) => AllowedHostPath.fromMap((value as Map).cast<String, dynamic>())),
      allowedProcMountTypes: map['allowedProcMountTypes'] == null ? null : (map['allowedProcMountTypes'] as List).cast<String>(),
      allowedUnsafeSysctls: map['allowedUnsafeSysctls'] == null ? null : (map['allowedUnsafeSysctls'] as List).cast<String>(),
      defaultAddCapabilities: map['defaultAddCapabilities'] == null ? null : (map['defaultAddCapabilities'] as List).cast<String>(),
      defaultAllowPrivilegeEscalation: map['defaultAllowPrivilegeEscalation'] == null ? null : map['defaultAllowPrivilegeEscalation'] as bool,
      forbiddenSysctls: map['forbiddenSysctls'] == null ? null : (map['forbiddenSysctls'] as List).cast<String>(),
      fsGroup: FSGroupStrategyOptions.fromMap((map['fsGroup'] as Map).cast<String, dynamic>()),
      hostIPC: map['hostIPC'] == null ? null : map['hostIPC'] as bool,
      hostNetwork: map['hostNetwork'] == null ? null : map['hostNetwork'] as bool,
      hostPID: map['hostPID'] == null ? null : map['hostPID'] as bool,
      hostPorts: map['hostPorts'] == null ? null : pulumi.Input.decodeList<HostPortRange>(map['hostPorts'], (value) => HostPortRange.fromMap((value as Map).cast<String, dynamic>())),
      privileged: map['privileged'] == null ? null : map['privileged'] as bool,
      readOnlyRootFilesystem: map['readOnlyRootFilesystem'] == null ? null : map['readOnlyRootFilesystem'] as bool,
      requiredDropCapabilities: map['requiredDropCapabilities'] == null ? null : (map['requiredDropCapabilities'] as List).cast<String>(),
      runAsGroup: map['runAsGroup'] == null ? null : RunAsGroupStrategyOptions.fromMap((map['runAsGroup'] as Map).cast<String, dynamic>()),
      runAsUser: RunAsUserStrategyOptions.fromMap((map['runAsUser'] as Map).cast<String, dynamic>()),
      runtimeClass: map['runtimeClass'] == null ? null : RuntimeClassStrategyOptions.fromMap((map['runtimeClass'] as Map).cast<String, dynamic>()),
      seLinux: SELinuxStrategyOptions.fromMap((map['seLinux'] as Map).cast<String, dynamic>()),
      supplementalGroups: SupplementalGroupsStrategyOptions.fromMap((map['supplementalGroups'] as Map).cast<String, dynamic>()),
      volumes: map['volumes'] == null ? null : (map['volumes'] as List).cast<String>(),
    );
  }
}

