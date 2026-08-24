// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zones_result_account.dart';
import 'get_zones_result_meta.dart';
import 'get_zones_result_owner.dart';
import 'get_zones_result_plan.dart';
import 'get_zones_result_tenant.dart';
import 'get_zones_result_tenant_unit.dart';

class GetZonesResult {
  /// The account the zone belongs to.
  final pulumi.Input<GetZonesResultAccount> account;
  /// The last time proof of ownership was detected and the zone was made
  /// active.
  final pulumi.Input<String> activatedOn;
  /// Allows the customer to use a custom apex.
  /// *Tenants Only Configuration*.
  final pulumi.Input<String> cnameSuffix;
  /// When the zone was created.
  final pulumi.Input<String> createdOn;
  /// The interval (in seconds) from when development mode expires
  /// (positive integer) or last expired (negative integer) for the
  /// domain. If development mode has never been enabled, this value is 0.
  final pulumi.Input<double> developmentMode;
  /// Identifier
  final pulumi.Input<String> id;
  /// Metadata about the zone.
  final pulumi.Input<GetZonesResultMeta> meta;
  /// When the zone was last modified.
  final pulumi.Input<String> modifiedOn;
  /// The domain name. Per [RFC 1035](https://datatracker.ietf.org/doc/html/rfc1035#section-2.3.4) the overall zone name can be up to 253 characters, with each segment ("label") not exceeding 63 characters.
  final pulumi.Input<String> name;
  /// The name servers Cloudflare assigns to a zone.
  final pulumi.Input<List<String>> nameServers;
  /// DNS host at the time of switching to Cloudflare.
  final pulumi.Input<String> originalDnshost;
  /// Original name servers before moving to Cloudflare.
  final pulumi.Input<List<String>> originalNameServers;
  /// Registrar for the domain at the time of switching to Cloudflare.
  final pulumi.Input<String> originalRegistrar;
  /// The owner of the zone.
  final pulumi.Input<GetZonesResultOwner> owner;
  /// Indicates whether the zone is only using Cloudflare DNS services. A
  /// true value means the zone will not receive security or performance
  /// benefits.
  final pulumi.Input<bool> paused;
  /// Legacy permissions based on legacy user membership information.
  final pulumi.Input<List<String>> permissions;
  /// A Zones subscription information.
  final pulumi.Input<GetZonesResultPlan> plan;
  /// The zone status on Cloudflare.
  /// Available values: "initializing", "pending", "active", "moved".
  final pulumi.Input<String> status;
  /// The root organizational unit that this zone belongs to (such as a tenant or organization).
  final pulumi.Input<GetZonesResultTenant> tenant;
  /// The immediate parent organizational unit that this zone belongs to (such as under a tenant or sub-organization).
  final pulumi.Input<GetZonesResultTenantUnit> tenantUnit;
  /// A full zone implies that DNS is hosted with Cloudflare. A partial zone is
  /// typically a partner-hosted zone or a CNAME setup.
  /// Available values: "full", "partial", "secondary", "internal".
  final pulumi.Input<String> type;
  /// An array of domains used for custom name servers. This is only available for Business and Enterprise plans.
  final pulumi.Input<List<String>> vanityNameServers;
  /// Verification key for partial zone setup.
  final pulumi.Input<String> verificationKey;

  /// Creates a new [GetZonesResult].
  /// [account] The account the zone belongs to.
  /// [activatedOn] The last time proof of ownership was detected and the zone was made
  /// [cnameSuffix] Allows the customer to use a custom apex.
  /// [createdOn] When the zone was created.
  /// [developmentMode] The interval (in seconds) from when development mode expires
  /// [id] Identifier
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
  /// [vanityNameServers] An array of domains used for custom name servers. This is only available for Business and Enterprise plans.
  /// [verificationKey] Verification key for partial zone setup.
  const GetZonesResult({
    required this.account,
    required this.activatedOn,
    required this.cnameSuffix,
    required this.createdOn,
    required this.developmentMode,
    required this.id,
    required this.meta,
    required this.modifiedOn,
    required this.name,
    required this.nameServers,
    required this.originalDnshost,
    required this.originalNameServers,
    required this.originalRegistrar,
    required this.owner,
    required this.paused,
    required this.permissions,
    required this.plan,
    required this.status,
    required this.tenant,
    required this.tenantUnit,
    required this.type,
    required this.vanityNameServers,
    required this.verificationKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'account': pulumi.Input.mapInputValue<GetZonesResultAccount, Map<String, dynamic>>(account, (value) => value.toMap()),
      'activatedOn': activatedOn,
      'cnameSuffix': cnameSuffix,
      'createdOn': createdOn,
      'developmentMode': developmentMode,
      'id': id,
      'meta': pulumi.Input.mapInputValue<GetZonesResultMeta, Map<String, dynamic>>(meta, (value) => value.toMap()),
      'modifiedOn': modifiedOn,
      'name': name,
      'nameServers': nameServers,
      'originalDnshost': originalDnshost,
      'originalNameServers': originalNameServers,
      'originalRegistrar': originalRegistrar,
      'owner': pulumi.Input.mapInputValue<GetZonesResultOwner, Map<String, dynamic>>(owner, (value) => value.toMap()),
      'paused': paused,
      'permissions': permissions,
      'plan': pulumi.Input.mapInputValue<GetZonesResultPlan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'status': status,
      'tenant': pulumi.Input.mapInputValue<GetZonesResultTenant, Map<String, dynamic>>(tenant, (value) => value.toMap()),
      'tenantUnit': pulumi.Input.mapInputValue<GetZonesResultTenantUnit, Map<String, dynamic>>(tenantUnit, (value) => value.toMap()),
      'type': type,
      'vanityNameServers': vanityNameServers,
      'verificationKey': verificationKey,
    };
  }

  factory GetZonesResult.fromMap(Map<String, dynamic> map) {
    return GetZonesResult(
      account: pulumi.Input.fromValue(GetZonesResultAccount.fromMap((map['account']! as Map).cast<String, dynamic>())),
      activatedOn: pulumi.Input.fromValue(map['activatedOn'] as String),
      cnameSuffix: pulumi.Input.fromValue(map['cnameSuffix'] as String),
      createdOn: pulumi.Input.fromValue(map['createdOn'] as String),
      developmentMode: pulumi.Input.fromValue((map['developmentMode'] as num).toDouble()),
      id: pulumi.Input.fromValue(map['id'] as String),
      meta: pulumi.Input.fromValue(GetZonesResultMeta.fromMap((map['meta']! as Map).cast<String, dynamic>())),
      modifiedOn: pulumi.Input.fromValue(map['modifiedOn'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      nameServers: pulumi.Input.fromValue((map['nameServers'] as List).cast<String>()),
      originalDnshost: pulumi.Input.fromValue(map['originalDnshost'] as String),
      originalNameServers: pulumi.Input.fromValue((map['originalNameServers'] as List).cast<String>()),
      originalRegistrar: pulumi.Input.fromValue(map['originalRegistrar'] as String),
      owner: pulumi.Input.fromValue(GetZonesResultOwner.fromMap((map['owner']! as Map).cast<String, dynamic>())),
      paused: pulumi.Input.fromValue(map['paused'] as bool),
      permissions: pulumi.Input.fromValue((map['permissions'] as List).cast<String>()),
      plan: pulumi.Input.fromValue(GetZonesResultPlan.fromMap((map['plan']! as Map).cast<String, dynamic>())),
      status: pulumi.Input.fromValue(map['status'] as String),
      tenant: pulumi.Input.fromValue(GetZonesResultTenant.fromMap((map['tenant']! as Map).cast<String, dynamic>())),
      tenantUnit: pulumi.Input.fromValue(GetZonesResultTenantUnit.fromMap((map['tenantUnit']! as Map).cast<String, dynamic>())),
      type: pulumi.Input.fromValue(map['type'] as String),
      vanityNameServers: pulumi.Input.fromValue((map['vanityNameServers'] as List).cast<String>()),
      verificationKey: pulumi.Input.fromValue(map['verificationKey'] as String),
    );
  }
}
