// ignore_for_file: unused_element, unnecessary_cast

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
  final DomainFeaturesCapabilitiesAuditControl? auditControl;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesAuditWrite? auditWrite;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesBlockSuspend? blockSuspend;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesChown? chown;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesDacOverride? dacOverride;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesDacReadSearch? dacReadSearch;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesFowner? fowner;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesFsetId? fsetId;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesIpcLock? ipcLock;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesIpcOwner? ipcOwner;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesKill? kill;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesLease? lease;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesLinuxImmutable? linuxImmutable;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesMacAdmin? macAdmin;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesMacOverride? macOverride;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesMkNod? mkNod;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesNetAdmin? netAdmin;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesNetBindService? netBindService;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesNetBroadcast? netBroadcast;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesNetRaw? netRaw;
  /// Specifies the security policy applied to the domain features.
  final String? policy;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesSetFCap? setFCap;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesSetGid? setGid;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesSetPCap? setPCap;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesSetUid? setUid;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesSysAdmin? sysAdmin;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesSysBoot? sysBoot;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesSysChRoot? sysChRoot;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesSysLog? sysLog;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesSysModule? sysModule;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesSysNice? sysNice;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesSysPAcct? sysPAcct;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesSysPTrace? sysPTrace;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesSysRawIo? sysRawIo;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesSysResource? sysResource;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesSysTime? sysTime;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesSysTtyCnofig? sysTtyCnofig;
  /// Configures whether the domain can wake from an alarm.
  final DomainFeaturesCapabilitiesWakeAlarm? wakeAlarm;

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
  DomainFeaturesCapabilities({
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
      'auditControl': ?auditControl == null ? null : auditControl!.toMap(),
      'auditWrite': ?auditWrite == null ? null : auditWrite!.toMap(),
      'blockSuspend': ?blockSuspend == null ? null : blockSuspend!.toMap(),
      'chown': ?chown == null ? null : chown!.toMap(),
      'dacOverride': ?dacOverride == null ? null : dacOverride!.toMap(),
      'dacReadSearch': ?dacReadSearch == null ? null : dacReadSearch!.toMap(),
      'fowner': ?fowner == null ? null : fowner!.toMap(),
      'fsetId': ?fsetId == null ? null : fsetId!.toMap(),
      'ipcLock': ?ipcLock == null ? null : ipcLock!.toMap(),
      'ipcOwner': ?ipcOwner == null ? null : ipcOwner!.toMap(),
      'kill': ?kill == null ? null : kill!.toMap(),
      'lease': ?lease == null ? null : lease!.toMap(),
      'linuxImmutable': ?linuxImmutable == null ? null : linuxImmutable!.toMap(),
      'macAdmin': ?macAdmin == null ? null : macAdmin!.toMap(),
      'macOverride': ?macOverride == null ? null : macOverride!.toMap(),
      'mkNod': ?mkNod == null ? null : mkNod!.toMap(),
      'netAdmin': ?netAdmin == null ? null : netAdmin!.toMap(),
      'netBindService': ?netBindService == null ? null : netBindService!.toMap(),
      'netBroadcast': ?netBroadcast == null ? null : netBroadcast!.toMap(),
      'netRaw': ?netRaw == null ? null : netRaw!.toMap(),
      'policy': ?policy,
      'setFCap': ?setFCap == null ? null : setFCap!.toMap(),
      'setGid': ?setGid == null ? null : setGid!.toMap(),
      'setPCap': ?setPCap == null ? null : setPCap!.toMap(),
      'setUid': ?setUid == null ? null : setUid!.toMap(),
      'sysAdmin': ?sysAdmin == null ? null : sysAdmin!.toMap(),
      'sysBoot': ?sysBoot == null ? null : sysBoot!.toMap(),
      'sysChRoot': ?sysChRoot == null ? null : sysChRoot!.toMap(),
      'sysLog': ?sysLog == null ? null : sysLog!.toMap(),
      'sysModule': ?sysModule == null ? null : sysModule!.toMap(),
      'sysNice': ?sysNice == null ? null : sysNice!.toMap(),
      'sysPAcct': ?sysPAcct == null ? null : sysPAcct!.toMap(),
      'sysPTrace': ?sysPTrace == null ? null : sysPTrace!.toMap(),
      'sysRawIo': ?sysRawIo == null ? null : sysRawIo!.toMap(),
      'sysResource': ?sysResource == null ? null : sysResource!.toMap(),
      'sysTime': ?sysTime == null ? null : sysTime!.toMap(),
      'sysTtyCnofig': ?sysTtyCnofig == null ? null : sysTtyCnofig!.toMap(),
      'wakeAlarm': ?wakeAlarm == null ? null : wakeAlarm!.toMap(),
    };
  }

  factory DomainFeaturesCapabilities.fromMap(Map<String, dynamic> map) {
    return DomainFeaturesCapabilities(
      auditControl: map['auditControl'] == null ? null : DomainFeaturesCapabilitiesAuditControl.fromMap((map['auditControl'] as Map).cast<String, dynamic>()),
      auditWrite: map['auditWrite'] == null ? null : DomainFeaturesCapabilitiesAuditWrite.fromMap((map['auditWrite'] as Map).cast<String, dynamic>()),
      blockSuspend: map['blockSuspend'] == null ? null : DomainFeaturesCapabilitiesBlockSuspend.fromMap((map['blockSuspend'] as Map).cast<String, dynamic>()),
      chown: map['chown'] == null ? null : DomainFeaturesCapabilitiesChown.fromMap((map['chown'] as Map).cast<String, dynamic>()),
      dacOverride: map['dacOverride'] == null ? null : DomainFeaturesCapabilitiesDacOverride.fromMap((map['dacOverride'] as Map).cast<String, dynamic>()),
      dacReadSearch: map['dacReadSearch'] == null ? null : DomainFeaturesCapabilitiesDacReadSearch.fromMap((map['dacReadSearch'] as Map).cast<String, dynamic>()),
      fowner: map['fowner'] == null ? null : DomainFeaturesCapabilitiesFowner.fromMap((map['fowner'] as Map).cast<String, dynamic>()),
      fsetId: map['fsetId'] == null ? null : DomainFeaturesCapabilitiesFsetId.fromMap((map['fsetId'] as Map).cast<String, dynamic>()),
      ipcLock: map['ipcLock'] == null ? null : DomainFeaturesCapabilitiesIpcLock.fromMap((map['ipcLock'] as Map).cast<String, dynamic>()),
      ipcOwner: map['ipcOwner'] == null ? null : DomainFeaturesCapabilitiesIpcOwner.fromMap((map['ipcOwner'] as Map).cast<String, dynamic>()),
      kill: map['kill'] == null ? null : DomainFeaturesCapabilitiesKill.fromMap((map['kill'] as Map).cast<String, dynamic>()),
      lease: map['lease'] == null ? null : DomainFeaturesCapabilitiesLease.fromMap((map['lease'] as Map).cast<String, dynamic>()),
      linuxImmutable: map['linuxImmutable'] == null ? null : DomainFeaturesCapabilitiesLinuxImmutable.fromMap((map['linuxImmutable'] as Map).cast<String, dynamic>()),
      macAdmin: map['macAdmin'] == null ? null : DomainFeaturesCapabilitiesMacAdmin.fromMap((map['macAdmin'] as Map).cast<String, dynamic>()),
      macOverride: map['macOverride'] == null ? null : DomainFeaturesCapabilitiesMacOverride.fromMap((map['macOverride'] as Map).cast<String, dynamic>()),
      mkNod: map['mkNod'] == null ? null : DomainFeaturesCapabilitiesMkNod.fromMap((map['mkNod'] as Map).cast<String, dynamic>()),
      netAdmin: map['netAdmin'] == null ? null : DomainFeaturesCapabilitiesNetAdmin.fromMap((map['netAdmin'] as Map).cast<String, dynamic>()),
      netBindService: map['netBindService'] == null ? null : DomainFeaturesCapabilitiesNetBindService.fromMap((map['netBindService'] as Map).cast<String, dynamic>()),
      netBroadcast: map['netBroadcast'] == null ? null : DomainFeaturesCapabilitiesNetBroadcast.fromMap((map['netBroadcast'] as Map).cast<String, dynamic>()),
      netRaw: map['netRaw'] == null ? null : DomainFeaturesCapabilitiesNetRaw.fromMap((map['netRaw'] as Map).cast<String, dynamic>()),
      policy: map['policy'] == null ? null : map['policy'] as String,
      setFCap: map['setFCap'] == null ? null : DomainFeaturesCapabilitiesSetFCap.fromMap((map['setFCap'] as Map).cast<String, dynamic>()),
      setGid: map['setGid'] == null ? null : DomainFeaturesCapabilitiesSetGid.fromMap((map['setGid'] as Map).cast<String, dynamic>()),
      setPCap: map['setPCap'] == null ? null : DomainFeaturesCapabilitiesSetPCap.fromMap((map['setPCap'] as Map).cast<String, dynamic>()),
      setUid: map['setUid'] == null ? null : DomainFeaturesCapabilitiesSetUid.fromMap((map['setUid'] as Map).cast<String, dynamic>()),
      sysAdmin: map['sysAdmin'] == null ? null : DomainFeaturesCapabilitiesSysAdmin.fromMap((map['sysAdmin'] as Map).cast<String, dynamic>()),
      sysBoot: map['sysBoot'] == null ? null : DomainFeaturesCapabilitiesSysBoot.fromMap((map['sysBoot'] as Map).cast<String, dynamic>()),
      sysChRoot: map['sysChRoot'] == null ? null : DomainFeaturesCapabilitiesSysChRoot.fromMap((map['sysChRoot'] as Map).cast<String, dynamic>()),
      sysLog: map['sysLog'] == null ? null : DomainFeaturesCapabilitiesSysLog.fromMap((map['sysLog'] as Map).cast<String, dynamic>()),
      sysModule: map['sysModule'] == null ? null : DomainFeaturesCapabilitiesSysModule.fromMap((map['sysModule'] as Map).cast<String, dynamic>()),
      sysNice: map['sysNice'] == null ? null : DomainFeaturesCapabilitiesSysNice.fromMap((map['sysNice'] as Map).cast<String, dynamic>()),
      sysPAcct: map['sysPAcct'] == null ? null : DomainFeaturesCapabilitiesSysPAcct.fromMap((map['sysPAcct'] as Map).cast<String, dynamic>()),
      sysPTrace: map['sysPTrace'] == null ? null : DomainFeaturesCapabilitiesSysPTrace.fromMap((map['sysPTrace'] as Map).cast<String, dynamic>()),
      sysRawIo: map['sysRawIo'] == null ? null : DomainFeaturesCapabilitiesSysRawIo.fromMap((map['sysRawIo'] as Map).cast<String, dynamic>()),
      sysResource: map['sysResource'] == null ? null : DomainFeaturesCapabilitiesSysResource.fromMap((map['sysResource'] as Map).cast<String, dynamic>()),
      sysTime: map['sysTime'] == null ? null : DomainFeaturesCapabilitiesSysTime.fromMap((map['sysTime'] as Map).cast<String, dynamic>()),
      sysTtyCnofig: map['sysTtyCnofig'] == null ? null : DomainFeaturesCapabilitiesSysTtyCnofig.fromMap((map['sysTtyCnofig'] as Map).cast<String, dynamic>()),
      wakeAlarm: map['wakeAlarm'] == null ? null : DomainFeaturesCapabilitiesWakeAlarm.fromMap((map['wakeAlarm'] as Map).cast<String, dynamic>()),
    );
  }
}

