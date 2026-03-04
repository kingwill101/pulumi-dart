// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allowed_csidriver_patch.dart';
import 'allowed_flex_volume_patch.dart';
import 'allowed_host_path_patch.dart';
import 'fsgroup_strategy_options_patch.dart';
import 'host_port_range_patch.dart';
import 'run_as_group_strategy_options_patch.dart';
import 'run_as_user_strategy_options_patch.dart';
import 'runtime_class_strategy_options_patch.dart';
import 'selinux_strategy_options_patch.dart';
import 'supplemental_groups_strategy_options_patch.dart';

/// PodSecurityPolicySpec defines the policy enforced. Deprecated: use PodSecurityPolicySpec from policy API Group instead.
class PodSecurityPolicySpecPatch {
  /// allowPrivilegeEscalation determines if a pod can request to allow privilege escalation. If unspecified, defaults to true.
  final pulumi.Input<bool>? allowPrivilegeEscalation;

  /// AllowedCSIDrivers is a whitelist of inline CSI drivers that must be explicitly set to be embedded within a pod spec. An empty value indicates that any CSI driver can be used for inline ephemeral volumes.
  final pulumi.Input<List<AllowedCSIDriverPatch>>? allowedCSIDrivers;

  /// allowedCapabilities is a list of capabilities that can be requested to add to the container. Capabilities in this field may be added at the pod author's discretion. You must not list a capability in both allowedCapabilities and requiredDropCapabilities.
  final pulumi.Input<List<String>>? allowedCapabilities;

  /// allowedFlexVolumes is a whitelist of allowed Flexvolumes.  Empty or nil indicates that all Flexvolumes may be used.  This parameter is effective only when the usage of the Flexvolumes is allowed in the "volumes" field.
  final pulumi.Input<List<AllowedFlexVolumePatch>>? allowedFlexVolumes;

  /// allowedHostPaths is a white list of allowed host paths. Empty indicates that all host paths may be used.
  final pulumi.Input<List<AllowedHostPathPatch>>? allowedHostPaths;

  /// AllowedProcMountTypes is a whitelist of allowed ProcMountTypes. Empty or nil indicates that only the DefaultProcMountType may be used. This requires the ProcMountType feature flag to be enabled.
  final pulumi.Input<List<String>>? allowedProcMountTypes;

  /// allowedUnsafeSysctls is a list of explicitly allowed unsafe sysctls, defaults to none. Each entry is either a plain sysctl name or ends in "*" in which case it is considered as a prefix of allowed sysctls. Single * means all unsafe sysctls are allowed. Kubelet has to whitelist all allowed unsafe sysctls explicitly to avoid rejection.
  ///
  /// Examples: e.g. "foo/*" allows "foo/bar", "foo/baz", etc. e.g. "foo.*" allows "foo.bar", "foo.baz", etc.
  final pulumi.Input<List<String>>? allowedUnsafeSysctls;

  /// defaultAddCapabilities is the default set of capabilities that will be added to the container unless the pod spec specifically drops the capability.  You may not list a capability in both defaultAddCapabilities and requiredDropCapabilities. Capabilities added here are implicitly allowed, and need not be included in the allowedCapabilities list.
  final pulumi.Input<List<String>>? defaultAddCapabilities;

  /// defaultAllowPrivilegeEscalation controls the default setting for whether a process can gain more privileges than its parent process.
  final pulumi.Input<bool>? defaultAllowPrivilegeEscalation;

  /// forbiddenSysctls is a list of explicitly forbidden sysctls, defaults to none. Each entry is either a plain sysctl name or ends in "*" in which case it is considered as a prefix of forbidden sysctls. Single * means all sysctls are forbidden.
  ///
  /// Examples: e.g. "foo/*" forbids "foo/bar", "foo/baz", etc. e.g. "foo.*" forbids "foo.bar", "foo.baz", etc.
  final pulumi.Input<List<String>>? forbiddenSysctls;

  /// fsGroup is the strategy that will dictate what fs group is used by the SecurityContext.
  final pulumi.Input<FSGroupStrategyOptionsPatch>? fsGroup;

  /// hostIPC determines if the policy allows the use of HostIPC in the pod spec.
  final pulumi.Input<bool>? hostIPC;

  /// hostNetwork determines if the policy allows the use of HostNetwork in the pod spec.
  final pulumi.Input<bool>? hostNetwork;

  /// hostPID determines if the policy allows the use of HostPID in the pod spec.
  final pulumi.Input<bool>? hostPID;

  /// hostPorts determines which host port ranges are allowed to be exposed.
  final pulumi.Input<List<HostPortRangePatch>>? hostPorts;

  /// privileged determines if a pod can request to be run as privileged.
  final pulumi.Input<bool>? privileged;

  /// readOnlyRootFilesystem when set to true will force containers to run with a read only root file system.  If the container specifically requests to run with a non-read only root file system the PSP should deny the pod. If set to false the container may run with a read only root file system if it wishes but it will not be forced to.
  final pulumi.Input<bool>? readOnlyRootFilesystem;

  /// requiredDropCapabilities are the capabilities that will be dropped from the container.  These are required to be dropped and cannot be added.
  final pulumi.Input<List<String>>? requiredDropCapabilities;

  /// RunAsGroup is the strategy that will dictate the allowable RunAsGroup values that may be set. If this field is omitted, the pod's RunAsGroup can take any value. This field requires the RunAsGroup feature gate to be enabled.
  final pulumi.Input<RunAsGroupStrategyOptionsPatch>? runAsGroup;

  /// runAsUser is the strategy that will dictate the allowable RunAsUser values that may be set.
  final pulumi.Input<RunAsUserStrategyOptionsPatch>? runAsUser;

  /// runtimeClass is the strategy that will dictate the allowable RuntimeClasses for a pod. If this field is omitted, the pod's runtimeClassName field is unrestricted. Enforcement of this field depends on the RuntimeClass feature gate being enabled.
  final pulumi.Input<RuntimeClassStrategyOptionsPatch>? runtimeClass;

  /// seLinux is the strategy that will dictate the allowable labels that may be set.
  final pulumi.Input<SELinuxStrategyOptionsPatch>? seLinux;

  /// supplementalGroups is the strategy that will dictate what supplemental groups are used by the SecurityContext.
  final pulumi.Input<SupplementalGroupsStrategyOptionsPatch>?
  supplementalGroups;

  /// volumes is a white list of allowed volume plugins. Empty indicates that no volumes may be used. To allow all volumes you may use '*'.
  final pulumi.Input<List<String>>? volumes;

  /// Creates a new [PodSecurityPolicySpecPatch].
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
  PodSecurityPolicySpecPatch({
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
    this.fsGroup,
    this.hostIPC,
    this.hostNetwork,
    this.hostPID,
    this.hostPorts,
    this.privileged,
    this.readOnlyRootFilesystem,
    this.requiredDropCapabilities,
    this.runAsGroup,
    this.runAsUser,
    this.runtimeClass,
    this.seLinux,
    this.supplementalGroups,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowPrivilegeEscalation': ?allowPrivilegeEscalation,
      'allowedCSIDrivers':
          ?pulumi.Input.mapOptionalInputValue<
            List<AllowedCSIDriverPatch>,
            List<Map<String, dynamic>>
          >(
            allowedCSIDrivers,
            (value) =>
                pulumi.Input.encodeList<
                  AllowedCSIDriverPatch,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'allowedCapabilities': ?allowedCapabilities,
      'allowedFlexVolumes':
          ?pulumi.Input.mapOptionalInputValue<
            List<AllowedFlexVolumePatch>,
            List<Map<String, dynamic>>
          >(
            allowedFlexVolumes,
            (value) =>
                pulumi.Input.encodeList<
                  AllowedFlexVolumePatch,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'allowedHostPaths':
          ?pulumi.Input.mapOptionalInputValue<
            List<AllowedHostPathPatch>,
            List<Map<String, dynamic>>
          >(
            allowedHostPaths,
            (value) =>
                pulumi.Input.encodeList<
                  AllowedHostPathPatch,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'allowedProcMountTypes': ?allowedProcMountTypes,
      'allowedUnsafeSysctls': ?allowedUnsafeSysctls,
      'defaultAddCapabilities': ?defaultAddCapabilities,
      'defaultAllowPrivilegeEscalation': ?defaultAllowPrivilegeEscalation,
      'forbiddenSysctls': ?forbiddenSysctls,
      'fsGroup':
          ?pulumi.Input.mapOptionalInputValue<
            FSGroupStrategyOptionsPatch,
            Map<String, dynamic>
          >(fsGroup, (value) => value.toMap()),
      'hostIPC': ?hostIPC,
      'hostNetwork': ?hostNetwork,
      'hostPID': ?hostPID,
      'hostPorts':
          ?pulumi.Input.mapOptionalInputValue<
            List<HostPortRangePatch>,
            List<Map<String, dynamic>>
          >(
            hostPorts,
            (value) =>
                pulumi.Input.encodeList<
                  HostPortRangePatch,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'privileged': ?privileged,
      'readOnlyRootFilesystem': ?readOnlyRootFilesystem,
      'requiredDropCapabilities': ?requiredDropCapabilities,
      'runAsGroup':
          ?pulumi.Input.mapOptionalInputValue<
            RunAsGroupStrategyOptionsPatch,
            Map<String, dynamic>
          >(runAsGroup, (value) => value.toMap()),
      'runAsUser':
          ?pulumi.Input.mapOptionalInputValue<
            RunAsUserStrategyOptionsPatch,
            Map<String, dynamic>
          >(runAsUser, (value) => value.toMap()),
      'runtimeClass':
          ?pulumi.Input.mapOptionalInputValue<
            RuntimeClassStrategyOptionsPatch,
            Map<String, dynamic>
          >(runtimeClass, (value) => value.toMap()),
      'seLinux':
          ?pulumi.Input.mapOptionalInputValue<
            SELinuxStrategyOptionsPatch,
            Map<String, dynamic>
          >(seLinux, (value) => value.toMap()),
      'supplementalGroups':
          ?pulumi.Input.mapOptionalInputValue<
            SupplementalGroupsStrategyOptionsPatch,
            Map<String, dynamic>
          >(supplementalGroups, (value) => value.toMap()),
      'volumes': ?volumes,
    };
  }

  factory PodSecurityPolicySpecPatch.fromMap(Map<String, dynamic> map) {
    return PodSecurityPolicySpecPatch(
      allowPrivilegeEscalation: (() {
        final guardedValue = map['allowPrivilegeEscalation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      allowedCSIDrivers: (() {
        final guardedValue = map['allowedCSIDrivers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AllowedCSIDriverPatch>(
            guardedValue,
            (value) => AllowedCSIDriverPatch.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      allowedCapabilities: (() {
        final guardedValue = map['allowedCapabilities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      allowedFlexVolumes: (() {
        final guardedValue = map['allowedFlexVolumes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AllowedFlexVolumePatch>(
            guardedValue,
            (value) => AllowedFlexVolumePatch.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      allowedHostPaths: (() {
        final guardedValue = map['allowedHostPaths'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AllowedHostPathPatch>(
            guardedValue,
            (value) => AllowedHostPathPatch.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      allowedProcMountTypes: (() {
        final guardedValue = map['allowedProcMountTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      allowedUnsafeSysctls: (() {
        final guardedValue = map['allowedUnsafeSysctls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      defaultAddCapabilities: (() {
        final guardedValue = map['defaultAddCapabilities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      defaultAllowPrivilegeEscalation: (() {
        final guardedValue = map['defaultAllowPrivilegeEscalation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      forbiddenSysctls: (() {
        final guardedValue = map['forbiddenSysctls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      fsGroup: (() {
        final guardedValue = map['fsGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FSGroupStrategyOptionsPatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      hostIPC: (() {
        final guardedValue = map['hostIPC'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      hostNetwork: (() {
        final guardedValue = map['hostNetwork'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      hostPID: (() {
        final guardedValue = map['hostPID'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      hostPorts: (() {
        final guardedValue = map['hostPorts'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<HostPortRangePatch>(
            guardedValue,
            (value) => HostPortRangePatch.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      privileged: (() {
        final guardedValue = map['privileged'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      readOnlyRootFilesystem: (() {
        final guardedValue = map['readOnlyRootFilesystem'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      requiredDropCapabilities: (() {
        final guardedValue = map['requiredDropCapabilities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      runAsGroup: (() {
        final guardedValue = map['runAsGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RunAsGroupStrategyOptionsPatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      runAsUser: (() {
        final guardedValue = map['runAsUser'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RunAsUserStrategyOptionsPatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      runtimeClass: (() {
        final guardedValue = map['runtimeClass'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RuntimeClassStrategyOptionsPatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      seLinux: (() {
        final guardedValue = map['seLinux'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SELinuxStrategyOptionsPatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      supplementalGroups: (() {
        final guardedValue = map['supplementalGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SupplementalGroupsStrategyOptionsPatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      volumes: (() {
        final guardedValue = map['volumes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
