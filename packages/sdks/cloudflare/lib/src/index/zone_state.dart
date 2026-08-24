// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_account.dart';
import 'zone_meta.dart';
import 'zone_owner.dart';
import 'zone_plan.dart';
import 'zone_tenant.dart';
import 'zone_tenant_unit.dart';

/// Input properties used for looking up and filtering Zone resources.
class ZoneState {
  final pulumi.Input<ZoneAccount?>? account;
  /// The last time proof of ownership was detected and the zone was made
  /// active.
  final pulumi.Input<String?>? activatedOn;
  /// Allows the customer to use a custom apex.
  /// *Tenants Only Configuration*.
  final pulumi.Input<String?>? cnameSuffix;
  /// When the zone was created.
  final pulumi.Input<String?>? createdOn;
  /// The interval (in seconds) from when development mode expires
  /// (positive integer) or last expired (negative integer) for the
  /// domain. If development mode has never been enabled, this value is 0.
  final pulumi.Input<double?>? developmentMode;
  /// Metadata about the zone.
  final pulumi.Input<ZoneMeta?>? meta;
  /// When the zone was last modified.
  final pulumi.Input<String?>? modifiedOn;
  /// The domain name. Per [RFC 1035](https://datatracker.ietf.org/doc/html/rfc1035#section-2.3.4) the overall zone name can be up to 253 characters, with each segment ("label") not exceeding 63 characters.
  final pulumi.Input<String?>? name;
  /// The name servers Cloudflare assigns to a zone.
  final pulumi.Input<List<String>?>? nameServers;
  /// DNS host at the time of switching to Cloudflare.
  final pulumi.Input<String?>? originalDnshost;
  /// Original name servers before moving to Cloudflare.
  final pulumi.Input<List<String>?>? originalNameServers;
  /// Registrar for the domain at the time of switching to Cloudflare.
  final pulumi.Input<String?>? originalRegistrar;
  /// The owner of the zone.
  final pulumi.Input<ZoneOwner?>? owner;
  /// Indicates whether the zone is only using Cloudflare DNS services. A
  /// true value means the zone will not receive security or performance
  /// benefits.
  final pulumi.Input<bool?>? paused;
  /// Legacy permissions based on legacy user membership information.
  final pulumi.Input<List<String>?>? permissions;
  /// A Zones subscription information.
  final pulumi.Input<ZonePlan?>? plan;
  /// The zone status on Cloudflare.
  /// Available values: "initializing", "pending", "active", "moved".
  final pulumi.Input<String?>? status;
  /// The root organizational unit that this zone belongs to (such as a tenant or organization).
  final pulumi.Input<ZoneTenant?>? tenant;
  /// The immediate parent organizational unit that this zone belongs to (such as under a tenant or sub-organization).
  final pulumi.Input<ZoneTenantUnit?>? tenantUnit;
  /// A full zone implies that DNS is hosted with Cloudflare. A partial zone is
  /// typically a partner-hosted zone or a CNAME setup.
  /// Available values: "full", "partial", "secondary", "internal".
  final pulumi.Input<String?>? type;
  /// An array of domains used for custom name servers. This is only
  /// available for Business and Enterprise plans.
  final pulumi.Input<List<String>?>? vanityNameServers;
  /// Verification key for partial zone setup.
  final pulumi.Input<String?>? verificationKey;

  /// Creates a new [ZoneState].
  /// [account] Optional.
  /// [activatedOn] The last time proof of ownership was detected and the zone was made
  /// [cnameSuffix] Allows the customer to use a custom apex.
  /// [createdOn] When the zone was created.
  /// [developmentMode] The interval (in seconds) from when development mode expires
  /// [meta] Metadata about the zone.
  /// [modifiedOn] When the zone was last modified.
  /// [name] The domain name. Per [RFC 1035](https://datatracker.ietf.org/doc/html/rfc1035#section-2.3.4) the overall zone name can be up to 253 characters, with each segment ("label") not exceeding 63 characters.
  /// [nameServers] The name servers Cloudflare assigns to a zone.
  /// [originalDnshost] DNS host at the time of switching to Cloudflare.
  /// [originalNameServers] Original name servers before moving to Cloudflare.
  /// [originalRegistrar] Registrar for the domain at the time of switching to Cloudflare.
  /// [owner] The owner of the zone.
  /// [paused] Indicates whether the zone is only using Cloudflare DNS services. A
  /// [permissions] Legacy permissions based on legacy user membership information.
  /// [plan] A Zones subscription information.
  /// [status] The zone status on Cloudflare.
  /// [tenant] The root organizational unit that this zone belongs to (such as a tenant or organization).
  /// [tenantUnit] The immediate parent organizational unit that this zone belongs to (such as under a tenant or sub-organization).
  /// [type] A full zone implies that DNS is hosted with Cloudflare. A partial zone is
  /// [vanityNameServers] An array of domains used for custom name servers. This is only
  /// [verificationKey] Verification key for partial zone setup.
  const ZoneState({
    this.account,
    this.activatedOn,
    this.cnameSuffix,
    this.createdOn,
    this.developmentMode,
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
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'account': ?pulumi.Input.mapOptionalInputValue<ZoneAccount, Map<String, dynamic>>(account, (value) => value.toMap()),
      'activatedOn': ?activatedOn,
      'cnameSuffix': ?cnameSuffix,
      'createdOn': ?createdOn,
      'developmentMode': ?developmentMode,
      'meta': ?pulumi.Input.mapOptionalInputValue<ZoneMeta, Map<String, dynamic>>(meta, (value) => value.toMap()),
      'modifiedOn': ?modifiedOn,
      'name': ?name,
      'nameServers': ?nameServers,
      'originalDnshost': ?originalDnshost,
      'originalNameServers': ?originalNameServers,
      'originalRegistrar': ?originalRegistrar,
      'owner': ?pulumi.Input.mapOptionalInputValue<ZoneOwner, Map<String, dynamic>>(owner, (value) => value.toMap()),
      'paused': ?paused,
      'permissions': ?permissions,
      'plan': ?pulumi.Input.mapOptionalInputValue<ZonePlan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'status': ?status,
      'tenant': ?pulumi.Input.mapOptionalInputValue<ZoneTenant, Map<String, dynamic>>(tenant, (value) => value.toMap()),
      'tenantUnit': ?pulumi.Input.mapOptionalInputValue<ZoneTenantUnit, Map<String, dynamic>>(tenantUnit, (value) => value.toMap()),
      'type': ?type,
      'vanityNameServers': ?vanityNameServers,
      'verificationKey': ?verificationKey,
    };
  }

  factory ZoneState.fromMap(Map<String, dynamic> map) {
    return ZoneState(
      account: (() { final guardedValue = map['account']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZoneAccount.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      activatedOn: (() { final guardedValue = map['activatedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cnameSuffix: (() { final guardedValue = map['cnameSuffix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdOn: (() { final guardedValue = map['createdOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      developmentMode: (() { final guardedValue = map['developmentMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      meta: (() { final guardedValue = map['meta']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZoneMeta.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      modifiedOn: (() { final guardedValue = map['modifiedOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nameServers: (() { final guardedValue = map['nameServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      originalDnshost: (() { final guardedValue = map['originalDnshost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      originalNameServers: (() { final guardedValue = map['originalNameServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      originalRegistrar: (() { final guardedValue = map['originalRegistrar']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZoneOwner.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      paused: (() { final guardedValue = map['paused']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      plan: (() { final guardedValue = map['plan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZonePlan.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenant: (() { final guardedValue = map['tenant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZoneTenant.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tenantUnit: (() { final guardedValue = map['tenantUnit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ZoneTenantUnit.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vanityNameServers: (() { final guardedValue = map['vanityNameServers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      verificationKey: (() { final guardedValue = map['verificationKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
