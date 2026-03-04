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

/// PodSecurityPolicySpec defines the policy enforced.
class PodSecurityPolicySpec {
  /// allowPrivilegeEscalation determines if a pod can request to allow privilege escalation. If unspecified, defaults to true.
  final pulumi.Input<bool>? allowPrivilegeEscalation;

  /// AllowedCSIDrivers is a whitelist of inline CSI drivers that must be explicitly set to be embedded within a pod spec. An empty value indicates that any CSI driver can be used for inline ephemeral volumes. This is an alpha field, and is only honored if the API server enables the CSIInlineVolume feature gate.
  final pulumi.Input<List<AllowedCSIDriver>>? allowedCSIDrivers;

  /// allowedCapabilities is a list of capabilities that can be requested to add to the container. Capabilities in this field may be added at the pod author's discretion. You must not list a capability in both allowedCapabilities and requiredDropCapabilities.
  final pulumi.Input<List<String>>? allowedCapabilities;

  /// allowedFlexVolumes is a whitelist of allowed Flexvolumes.  Empty or nil indicates that all Flexvolumes may be used.  This parameter is effective only when the usage of the Flexvolumes is allowed in the "volumes" field.
  final pulumi.Input<List<AllowedFlexVolume>>? allowedFlexVolumes;

  /// allowedHostPaths is a white list of allowed host paths. Empty indicates that all host paths may be used.
  final pulumi.Input<List<AllowedHostPath>>? allowedHostPaths;

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
  final pulumi.Input<FSGroupStrategyOptions> fsGroup;

  /// hostIPC determines if the policy allows the use of HostIPC in the pod spec.
  final pulumi.Input<bool>? hostIPC;

  /// hostNetwork determines if the policy allows the use of HostNetwork in the pod spec.
  final pulumi.Input<bool>? hostNetwork;

  /// hostPID determines if the policy allows the use of HostPID in the pod spec.
  final pulumi.Input<bool>? hostPID;

  /// hostPorts determines which host port ranges are allowed to be exposed.
  final pulumi.Input<List<HostPortRange>>? hostPorts;

  /// privileged determines if a pod can request to be run as privileged.
  final pulumi.Input<bool>? privileged;

  /// readOnlyRootFilesystem when set to true will force containers to run with a read only root file system.  If the container specifically requests to run with a non-read only root file system the PSP should deny the pod. If set to false the container may run with a read only root file system if it wishes but it will not be forced to.
  final pulumi.Input<bool>? readOnlyRootFilesystem;

  /// requiredDropCapabilities are the capabilities that will be dropped from the container.  These are required to be dropped and cannot be added.
  final pulumi.Input<List<String>>? requiredDropCapabilities;

  /// RunAsGroup is the strategy that will dictate the allowable RunAsGroup values that may be set. If this field is omitted, the pod's RunAsGroup can take any value. This field requires the RunAsGroup feature gate to be enabled.
  final pulumi.Input<RunAsGroupStrategyOptions>? runAsGroup;

  /// runAsUser is the strategy that will dictate the allowable RunAsUser values that may be set.
  final pulumi.Input<RunAsUserStrategyOptions> runAsUser;

  /// runtimeClass is the strategy that will dictate the allowable RuntimeClasses for a pod. If this field is omitted, the pod's runtimeClassName field is unrestricted. Enforcement of this field depends on the RuntimeClass feature gate being enabled.
  final pulumi.Input<RuntimeClassStrategyOptions>? runtimeClass;

  /// seLinux is the strategy that will dictate the allowable labels that may be set.
  final pulumi.Input<SELinuxStrategyOptions> seLinux;

  /// supplementalGroups is the strategy that will dictate what supplemental groups are used by the SecurityContext.
  final pulumi.Input<SupplementalGroupsStrategyOptions> supplementalGroups;

  /// volumes is a white list of allowed volume plugins. Empty indicates that no volumes may be used. To allow all volumes you may use '*'.
  final pulumi.Input<List<String>>? volumes;

  /// Creates a new [PodSecurityPolicySpec].
  /// [allowPrivilegeEscalation] allowPrivilegeEscalation determines if a pod can request to allow privilege escalation. If unspecified, defaults to true.
  /// [allowedCSIDrivers] AllowedCSIDrivers is a whitelist of inline CSI drivers that must be explicitly set to be embedded within a pod spec. An empty value indicates that any CSI driver can be used for inline ephemeral volumes. This is an alpha field, and is only honored if the API server enables the CSIInlineVolume feature gate.
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
      'allowedCSIDrivers':
          ?pulumi.Input.mapOptionalInputValue<
            List<AllowedCSIDriver>,
            List<Map<String, dynamic>>
          >(
            allowedCSIDrivers,
            (value) =>
                pulumi.Input.encodeList<AllowedCSIDriver, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'allowedCapabilities': ?allowedCapabilities,
      'allowedFlexVolumes':
          ?pulumi.Input.mapOptionalInputValue<
            List<AllowedFlexVolume>,
            List<Map<String, dynamic>>
          >(
            allowedFlexVolumes,
            (value) =>
                pulumi.Input.encodeList<
                  AllowedFlexVolume,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'allowedHostPaths':
          ?pulumi.Input.mapOptionalInputValue<
            List<AllowedHostPath>,
            List<Map<String, dynamic>>
          >(
            allowedHostPaths,
            (value) =>
                pulumi.Input.encodeList<AllowedHostPath, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'allowedProcMountTypes': ?allowedProcMountTypes,
      'allowedUnsafeSysctls': ?allowedUnsafeSysctls,
      'defaultAddCapabilities': ?defaultAddCapabilities,
      'defaultAllowPrivilegeEscalation': ?defaultAllowPrivilegeEscalation,
      'forbiddenSysctls': ?forbiddenSysctls,
      'fsGroup':
          pulumi.Input.mapInputValue<
            FSGroupStrategyOptions,
            Map<String, dynamic>
          >(fsGroup, (value) => value.toMap()),
      'hostIPC': ?hostIPC,
      'hostNetwork': ?hostNetwork,
      'hostPID': ?hostPID,
      'hostPorts':
          ?pulumi.Input.mapOptionalInputValue<
            List<HostPortRange>,
            List<Map<String, dynamic>>
          >(
            hostPorts,
            (value) =>
                pulumi.Input.encodeList<HostPortRange, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'privileged': ?privileged,
      'readOnlyRootFilesystem': ?readOnlyRootFilesystem,
      'requiredDropCapabilities': ?requiredDropCapabilities,
      'runAsGroup':
          ?pulumi.Input.mapOptionalInputValue<
            RunAsGroupStrategyOptions,
            Map<String, dynamic>
          >(runAsGroup, (value) => value.toMap()),
      'runAsUser':
          pulumi.Input.mapInputValue<
            RunAsUserStrategyOptions,
            Map<String, dynamic>
          >(runAsUser, (value) => value.toMap()),
      'runtimeClass':
          ?pulumi.Input.mapOptionalInputValue<
            RuntimeClassStrategyOptions,
            Map<String, dynamic>
          >(runtimeClass, (value) => value.toMap()),
      'seLinux':
          pulumi.Input.mapInputValue<
            SELinuxStrategyOptions,
            Map<String, dynamic>
          >(seLinux, (value) => value.toMap()),
      'supplementalGroups':
          pulumi.Input.mapInputValue<
            SupplementalGroupsStrategyOptions,
            Map<String, dynamic>
          >(supplementalGroups, (value) => value.toMap()),
      'volumes': ?volumes,
    };
  }

  factory PodSecurityPolicySpec.fromMap(Map<String, dynamic> map) {
    return PodSecurityPolicySpec(
      allowPrivilegeEscalation: (() {
        final guardedValue = map['allowPrivilegeEscalation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      allowedCSIDrivers: (() {
        final guardedValue = map['allowedCSIDrivers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AllowedCSIDriver>(
            guardedValue,
            (value) => AllowedCSIDriver.fromMap(
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
          pulumi.Input.decodeList<AllowedFlexVolume>(
            guardedValue,
            (value) => AllowedFlexVolume.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      allowedHostPaths: (() {
        final guardedValue = map['allowedHostPaths'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AllowedHostPath>(
            guardedValue,
            (value) =>
                AllowedHostPath.fromMap((value as Map).cast<String, dynamic>()),
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
      fsGroup: pulumi.Input.fromValue(
        FSGroupStrategyOptions.fromMap(
          (map['fsGroup']! as Map).cast<String, dynamic>(),
        ),
      ),
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
          pulumi.Input.decodeList<HostPortRange>(
            guardedValue,
            (value) =>
                HostPortRange.fromMap((value as Map).cast<String, dynamic>()),
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
          RunAsGroupStrategyOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      runAsUser: pulumi.Input.fromValue(
        RunAsUserStrategyOptions.fromMap(
          (map['runAsUser']! as Map).cast<String, dynamic>(),
        ),
      ),
      runtimeClass: (() {
        final guardedValue = map['runtimeClass'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RuntimeClassStrategyOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      seLinux: pulumi.Input.fromValue(
        SELinuxStrategyOptions.fromMap(
          (map['seLinux']! as Map).cast<String, dynamic>(),
        ),
      ),
      supplementalGroups: pulumi.Input.fromValue(
        SupplementalGroupsStrategyOptions.fromMap(
          (map['supplementalGroups']! as Map).cast<String, dynamic>(),
        ),
      ),
      volumes: (() {
        final guardedValue = map['volumes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
