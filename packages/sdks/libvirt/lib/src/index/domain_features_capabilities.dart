// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'domain_features_capabilities_audit_control.dart';
import 'domain_features_capabilities_audit_write.dart';
import 'domain_features_capabilities_block_suspend.dart';
import 'domain_features_capabilities_chown.dart';
import 'domain_features_capabilities_dac_override.dart';
import 'domain_features_capabilities_dac_read_search.dart';
import 'domain_features_capabilities_fowner.dart';
import 'domain_features_capabilities_fset_id.dart';
import 'domain_features_capabilities_ipc_lock.dart';
import 'domain_features_capabilities_ipc_owner.dart';
import 'domain_features_capabilities_kill.dart';
import 'domain_features_capabilities_lease.dart';
import 'domain_features_capabilities_linux_immutable.dart';
import 'domain_features_capabilities_mac_admin.dart';
import 'domain_features_capabilities_mac_override.dart';
import 'domain_features_capabilities_mk_nod.dart';
import 'domain_features_capabilities_net_admin.dart';
import 'domain_features_capabilities_net_bind_service.dart';
import 'domain_features_capabilities_net_broadcast.dart';
import 'domain_features_capabilities_net_raw.dart';
import 'domain_features_capabilities_set_fcap.dart';
import 'domain_features_capabilities_set_gid.dart';
import 'domain_features_capabilities_set_pcap.dart';
import 'domain_features_capabilities_set_uid.dart';
import 'domain_features_capabilities_sys_admin.dart';
import 'domain_features_capabilities_sys_boot.dart';
import 'domain_features_capabilities_sys_ch_root.dart';
import 'domain_features_capabilities_sys_log.dart';
import 'domain_features_capabilities_sys_module.dart';
import 'domain_features_capabilities_sys_nice.dart';
import 'domain_features_capabilities_sys_pacct.dart';
import 'domain_features_capabilities_sys_ptrace.dart';
import 'domain_features_capabilities_sys_raw_io.dart';
import 'domain_features_capabilities_sys_resource.dart';
import 'domain_features_capabilities_sys_time.dart';
import 'domain_features_capabilities_sys_tty_cnofig.dart';
import 'domain_features_capabilities_wake_alarm.dart';

class DomainFeaturesCapabilities {
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesAuditControl?>? auditControl;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesAuditWrite?>? auditWrite;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesBlockSuspend?>? blockSuspend;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesChown?>? chown;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesDacOverride?>? dacOverride;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesDacReadSearch?>? dacReadSearch;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesFowner?>? fowner;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesFsetId?>? fsetId;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesIpcLock?>? ipcLock;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesIpcOwner?>? ipcOwner;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesKill?>? kill;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesLease?>? lease;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesLinuxImmutable?>? linuxImmutable;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesMacAdmin?>? macAdmin;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesMacOverride?>? macOverride;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesMkNod?>? mkNod;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesNetAdmin?>? netAdmin;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesNetBindService?>? netBindService;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesNetBroadcast?>? netBroadcast;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesNetRaw?>? netRaw;
  /// Specifies the security policy applied to the domain features.
  final pulumi.Input<String?>? policy;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesSetFCap?>? setFCap;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesSetGid?>? setGid;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesSetPCap?>? setPCap;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesSetUid?>? setUid;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesSysAdmin?>? sysAdmin;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesSysBoot?>? sysBoot;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesSysChRoot?>? sysChRoot;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesSysLog?>? sysLog;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesSysModule?>? sysModule;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesSysNice?>? sysNice;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesSysPAcct?>? sysPAcct;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesSysPTrace?>? sysPTrace;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesSysRawIo?>? sysRawIo;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesSysResource?>? sysResource;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesSysTime?>? sysTime;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesSysTtyCnofig?>? sysTtyCnofig;
  /// Configures whether the domain can wake from an alarm.
  final pulumi.Input<DomainFeaturesCapabilitiesWakeAlarm?>? wakeAlarm;

  /// Creates a new [DomainFeaturesCapabilities].
  /// [auditControl] Configures whether the domain can wake from an alarm.
  /// [auditWrite] Configures whether the domain can wake from an alarm.
  /// [blockSuspend] Configures whether the domain can wake from an alarm.
  /// [chown] Configures whether the domain can wake from an alarm.
  /// [dacOverride] Configures whether the domain can wake from an alarm.
  /// [dacReadSearch] Configures whether the domain can wake from an alarm.
  /// [fowner] Configures whether the domain can wake from an alarm.
  /// [fsetId] Configures whether the domain can wake from an alarm.
  /// [ipcLock] Configures whether the domain can wake from an alarm.
  /// [ipcOwner] Configures whether the domain can wake from an alarm.
  /// [kill] Configures whether the domain can wake from an alarm.
  /// [lease] Configures whether the domain can wake from an alarm.
  /// [linuxImmutable] Configures whether the domain can wake from an alarm.
  /// [macAdmin] Configures whether the domain can wake from an alarm.
  /// [macOverride] Configures whether the domain can wake from an alarm.
  /// [mkNod] Configures whether the domain can wake from an alarm.
  /// [netAdmin] Configures whether the domain can wake from an alarm.
  /// [netBindService] Configures whether the domain can wake from an alarm.
  /// [netBroadcast] Configures whether the domain can wake from an alarm.
  /// [netRaw] Configures whether the domain can wake from an alarm.
  /// [policy] Specifies the security policy applied to the domain features.
  /// [setFCap] Configures whether the domain can wake from an alarm.
  /// [setGid] Configures whether the domain can wake from an alarm.
  /// [setPCap] Configures whether the domain can wake from an alarm.
  /// [setUid] Configures whether the domain can wake from an alarm.
  /// [sysAdmin] Configures whether the domain can wake from an alarm.
  /// [sysBoot] Configures whether the domain can wake from an alarm.
  /// [sysChRoot] Configures whether the domain can wake from an alarm.
  /// [sysLog] Configures whether the domain can wake from an alarm.
  /// [sysModule] Configures whether the domain can wake from an alarm.
  /// [sysNice] Configures whether the domain can wake from an alarm.
  /// [sysPAcct] Configures whether the domain can wake from an alarm.
  /// [sysPTrace] Configures whether the domain can wake from an alarm.
  /// [sysRawIo] Configures whether the domain can wake from an alarm.
  /// [sysResource] Configures whether the domain can wake from an alarm.
  /// [sysTime] Configures whether the domain can wake from an alarm.
  /// [sysTtyCnofig] Configures whether the domain can wake from an alarm.
  /// [wakeAlarm] Configures whether the domain can wake from an alarm.
  const DomainFeaturesCapabilities({
    this.auditControl,
    this.auditWrite,
    this.blockSuspend,
    this.chown,
    this.dacOverride,
    this.dacReadSearch,
    this.fowner,
    this.fsetId,
    this.ipcLock,
    this.ipcOwner,
    this.kill,
    this.lease,
    this.linuxImmutable,
    this.macAdmin,
    this.macOverride,
    this.mkNod,
    this.netAdmin,
    this.netBindService,
    this.netBroadcast,
    this.netRaw,
    this.policy,
    this.setFCap,
    this.setGid,
    this.setPCap,
    this.setUid,
    this.sysAdmin,
    this.sysBoot,
    this.sysChRoot,
    this.sysLog,
    this.sysModule,
    this.sysNice,
    this.sysPAcct,
    this.sysPTrace,
    this.sysRawIo,
    this.sysResource,
    this.sysTime,
    this.sysTtyCnofig,
    this.wakeAlarm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditControl': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesAuditControl, Map<String, dynamic>>(auditControl, (value) => value.toMap()),
      'auditWrite': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesAuditWrite, Map<String, dynamic>>(auditWrite, (value) => value.toMap()),
      'blockSuspend': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesBlockSuspend, Map<String, dynamic>>(blockSuspend, (value) => value.toMap()),
      'chown': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesChown, Map<String, dynamic>>(chown, (value) => value.toMap()),
      'dacOverride': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesDacOverride, Map<String, dynamic>>(dacOverride, (value) => value.toMap()),
      'dacReadSearch': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesDacReadSearch, Map<String, dynamic>>(dacReadSearch, (value) => value.toMap()),
      'fowner': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesFowner, Map<String, dynamic>>(fowner, (value) => value.toMap()),
      'fsetId': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesFsetId, Map<String, dynamic>>(fsetId, (value) => value.toMap()),
      'ipcLock': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesIpcLock, Map<String, dynamic>>(ipcLock, (value) => value.toMap()),
      'ipcOwner': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesIpcOwner, Map<String, dynamic>>(ipcOwner, (value) => value.toMap()),
      'kill': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesKill, Map<String, dynamic>>(kill, (value) => value.toMap()),
      'lease': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesLease, Map<String, dynamic>>(lease, (value) => value.toMap()),
      'linuxImmutable': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesLinuxImmutable, Map<String, dynamic>>(linuxImmutable, (value) => value.toMap()),
      'macAdmin': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesMacAdmin, Map<String, dynamic>>(macAdmin, (value) => value.toMap()),
      'macOverride': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesMacOverride, Map<String, dynamic>>(macOverride, (value) => value.toMap()),
      'mkNod': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesMkNod, Map<String, dynamic>>(mkNod, (value) => value.toMap()),
      'netAdmin': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesNetAdmin, Map<String, dynamic>>(netAdmin, (value) => value.toMap()),
      'netBindService': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesNetBindService, Map<String, dynamic>>(netBindService, (value) => value.toMap()),
      'netBroadcast': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesNetBroadcast, Map<String, dynamic>>(netBroadcast, (value) => value.toMap()),
      'netRaw': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesNetRaw, Map<String, dynamic>>(netRaw, (value) => value.toMap()),
      'policy': ?policy,
      'setFCap': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesSetFCap, Map<String, dynamic>>(setFCap, (value) => value.toMap()),
      'setGid': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesSetGid, Map<String, dynamic>>(setGid, (value) => value.toMap()),
      'setPCap': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesSetPCap, Map<String, dynamic>>(setPCap, (value) => value.toMap()),
      'setUid': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesSetUid, Map<String, dynamic>>(setUid, (value) => value.toMap()),
      'sysAdmin': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesSysAdmin, Map<String, dynamic>>(sysAdmin, (value) => value.toMap()),
      'sysBoot': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesSysBoot, Map<String, dynamic>>(sysBoot, (value) => value.toMap()),
      'sysChRoot': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesSysChRoot, Map<String, dynamic>>(sysChRoot, (value) => value.toMap()),
      'sysLog': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesSysLog, Map<String, dynamic>>(sysLog, (value) => value.toMap()),
      'sysModule': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesSysModule, Map<String, dynamic>>(sysModule, (value) => value.toMap()),
      'sysNice': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesSysNice, Map<String, dynamic>>(sysNice, (value) => value.toMap()),
      'sysPAcct': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesSysPAcct, Map<String, dynamic>>(sysPAcct, (value) => value.toMap()),
      'sysPTrace': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesSysPTrace, Map<String, dynamic>>(sysPTrace, (value) => value.toMap()),
      'sysRawIo': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesSysRawIo, Map<String, dynamic>>(sysRawIo, (value) => value.toMap()),
      'sysResource': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesSysResource, Map<String, dynamic>>(sysResource, (value) => value.toMap()),
      'sysTime': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesSysTime, Map<String, dynamic>>(sysTime, (value) => value.toMap()),
      'sysTtyCnofig': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesSysTtyCnofig, Map<String, dynamic>>(sysTtyCnofig, (value) => value.toMap()),
      'wakeAlarm': ?pulumi.Input.mapOptionalInputValue<DomainFeaturesCapabilitiesWakeAlarm, Map<String, dynamic>>(wakeAlarm, (value) => value.toMap()),
    };
  }

  factory DomainFeaturesCapabilities.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilities(
      auditControl: (() { final guardedValue = map['auditControl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesAuditControl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      auditWrite: (() { final guardedValue = map['auditWrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesAuditWrite.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      blockSuspend: (() { final guardedValue = map['blockSuspend']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesBlockSuspend.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      chown: (() { final guardedValue = map['chown']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesChown.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dacOverride: (() { final guardedValue = map['dacOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesDacOverride.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dacReadSearch: (() { final guardedValue = map['dacReadSearch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesDacReadSearch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fowner: (() { final guardedValue = map['fowner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesFowner.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fsetId: (() { final guardedValue = map['fsetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesFsetId.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipcLock: (() { final guardedValue = map['ipcLock']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesIpcLock.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ipcOwner: (() { final guardedValue = map['ipcOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesIpcOwner.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kill: (() { final guardedValue = map['kill']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesKill.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lease: (() { final guardedValue = map['lease']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesLease.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linuxImmutable: (() { final guardedValue = map['linuxImmutable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesLinuxImmutable.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      macAdmin: (() { final guardedValue = map['macAdmin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesMacAdmin.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      macOverride: (() { final guardedValue = map['macOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesMacOverride.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mkNod: (() { final guardedValue = map['mkNod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesMkNod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      netAdmin: (() { final guardedValue = map['netAdmin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesNetAdmin.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      netBindService: (() { final guardedValue = map['netBindService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesNetBindService.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      netBroadcast: (() { final guardedValue = map['netBroadcast']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesNetBroadcast.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      netRaw: (() { final guardedValue = map['netRaw']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesNetRaw.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      setFCap: (() { final guardedValue = map['setFCap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesSetFCap.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      setGid: (() { final guardedValue = map['setGid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesSetGid.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      setPCap: (() { final guardedValue = map['setPCap']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesSetPCap.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      setUid: (() { final guardedValue = map['setUid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesSetUid.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sysAdmin: (() { final guardedValue = map['sysAdmin']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesSysAdmin.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sysBoot: (() { final guardedValue = map['sysBoot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesSysBoot.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sysChRoot: (() { final guardedValue = map['sysChRoot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesSysChRoot.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sysLog: (() { final guardedValue = map['sysLog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesSysLog.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sysModule: (() { final guardedValue = map['sysModule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesSysModule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sysNice: (() { final guardedValue = map['sysNice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesSysNice.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sysPAcct: (() { final guardedValue = map['sysPAcct']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesSysPAcct.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sysPTrace: (() { final guardedValue = map['sysPTrace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesSysPTrace.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sysRawIo: (() { final guardedValue = map['sysRawIo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesSysRawIo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sysResource: (() { final guardedValue = map['sysResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesSysResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sysTime: (() { final guardedValue = map['sysTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesSysTime.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sysTtyCnofig: (() { final guardedValue = map['sysTtyCnofig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesSysTtyCnofig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      wakeAlarm: (() { final guardedValue = map['wakeAlarm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DomainFeaturesCapabilitiesWakeAlarm.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
