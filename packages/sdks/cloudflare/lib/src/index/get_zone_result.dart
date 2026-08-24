// ignore_for_file: unused_element, unnecessary_cast

import 'get_zone_account.dart';
import 'get_zone_filter.dart';
import 'get_zone_meta.dart';
import 'get_zone_owner.dart';
import 'get_zone_plan.dart';
import 'get_zone_tenant.dart';
import 'get_zone_tenant_unit.dart';

/// Result data returned by getZone.
class GetZoneResult {
  final GetZoneAccount? account;
  final String? activatedOn;
  final String? cnameSuffix;
  final String? createdOn;
  final double? developmentMode;
  final GetZoneFilter? filter;
  final String? id;
  final GetZoneMeta? meta;
  final String? modifiedOn;
  final String? name;
  final List<String>? nameServers;
  final String? originalDnshost;
  final List<String>? originalNameServers;
  final String? originalRegistrar;
  final GetZoneOwner? owner;
  final bool? paused;
  final List<String>? permissions;
  final GetZonePlan? plan;
  final String? status;
  final GetZoneTenant? tenant;
  final GetZoneTenantUnit? tenantUnit;
  final String? type;
  final List<String>? vanityNameServers;
  final String? verificationKey;
  final String? zoneId;

  /// Creates a new [GetZoneResult].
  /// [account] Optional.
  /// [activatedOn] Optional.
  /// [cnameSuffix] Optional.
  /// [createdOn] Optional.
  /// [developmentMode] Optional.
  /// [filter] Optional.
  /// [id] Optional.
  /// [meta] Optional.
  /// [modifiedOn] Optional.
  /// [name] Optional.
  /// [nameServers] Optional.
  /// [originalDnshost] Optional.
  /// [originalNameServers] Optional.
  /// [originalRegistrar] Optional.
  /// [owner] Optional.
  /// [paused] Optional.
  /// [permissions] Optional.
  /// [plan] Optional.
  /// [status] Optional.
  /// [tenant] Optional.
  /// [tenantUnit] Optional.
  /// [type] Optional.
  /// [vanityNameServers] Optional.
  /// [verificationKey] Optional.
  /// [zoneId] Optional.
  const GetZoneResult({
    this.account,
    this.activatedOn,
    this.cnameSuffix,
    this.createdOn,
    this.developmentMode,
    this.filter,
    this.id,
    this.meta,
    this.modifiedOn,
    this.name,
    this.nameServers,
    this.originalDnshost,
    this.originalNameServers,
    this.originalRegistrar,
    this.owner,
    this.paused,
    this.permissions,
    this.plan,
    this.status,
    this.tenant,
    this.tenantUnit,
    this.type,
    this.vanityNameServers,
    this.verificationKey,
    this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'account': ?account?.toMap(),
      'activatedOn': ?activatedOn,
      'cnameSuffix': ?cnameSuffix,
      'createdOn': ?createdOn,
      'developmentMode': ?developmentMode,
      'filter': ?filter?.toMap(),
      'id': ?id,
      'meta': ?meta?.toMap(),
      'modifiedOn': ?modifiedOn,
      'name': ?name,
      'nameServers': ?nameServers,
      'originalDnshost': ?originalDnshost,
      'originalNameServers': ?originalNameServers,
      'originalRegistrar': ?originalRegistrar,
      'owner': ?owner?.toMap(),
      'paused': ?paused,
      'permissions': ?permissions,
      'plan': ?plan?.toMap(),
      'status': ?status,
      'tenant': ?tenant?.toMap(),
      'tenantUnit': ?tenantUnit?.toMap(),
      'type': ?type,
      'vanityNameServers': ?vanityNameServers,
      'verificationKey': ?verificationKey,
      'zoneId': ?zoneId,
    };
  }

  factory GetZoneResult.fromMap(Map<String, dynamic> map) {
    return GetZoneResult(
      account: (() { final guardedValue = map['account']; if (guardedValue == null) return null; return GetZoneAccount.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      activatedOn: (() { final guardedValue = map['activatedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cnameSuffix: (() { final guardedValue = map['cnameSuffix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      developmentMode: (() { final guardedValue = map['developmentMode']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return GetZoneFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      meta: (() { final guardedValue = map['meta']; if (guardedValue == null) return null; return GetZoneMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nameServers: (() { final guardedValue = map['nameServers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      originalDnshost: (() { final guardedValue = map['originalDnshost']; if (guardedValue == null) return null; return guardedValue as String; })(),
      originalNameServers: (() { final guardedValue = map['originalNameServers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      originalRegistrar: (() { final guardedValue = map['originalRegistrar']; if (guardedValue == null) return null; return guardedValue as String; })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return GetZoneOwner.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      paused: (() { final guardedValue = map['paused']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return GetZonePlan.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tenant: (() { final guardedValue = map['tenant']; if (guardedValue == null) return null; return GetZoneTenant.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tenantUnit: (() { final guardedValue = map['tenantUnit']; if (guardedValue == null) return null; return GetZoneTenantUnit.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vanityNameServers: (() { final guardedValue = map['vanityNameServers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      verificationKey: (() { final guardedValue = map['verificationKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zoneId: (() { final guardedValue = map['zoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
