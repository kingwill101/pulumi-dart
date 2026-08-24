// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_role_permissions_analytics.dart';
import 'get_account_role_permissions_billing.dart';
import 'get_account_role_permissions_cache_purge.dart';
import 'get_account_role_permissions_dns.dart';
import 'get_account_role_permissions_dns_records.dart';
import 'get_account_role_permissions_lb.dart';
import 'get_account_role_permissions_logs.dart';
import 'get_account_role_permissions_organization.dart';
import 'get_account_role_permissions_ssl.dart';
import 'get_account_role_permissions_waf.dart';
import 'get_account_role_permissions_zone_settings.dart';
import 'get_account_role_permissions_zones.dart';

class GetAccountRolePermissions {
  final pulumi.Input<GetAccountRolePermissionsAnalytics> analytics;
  final pulumi.Input<GetAccountRolePermissionsBilling> billing;
  final pulumi.Input<GetAccountRolePermissionsCachePurge> cachePurge;
  final pulumi.Input<GetAccountRolePermissionsDns> dns;
  final pulumi.Input<GetAccountRolePermissionsDnsRecords> dnsRecords;
  final pulumi.Input<GetAccountRolePermissionsLb> lb;
  final pulumi.Input<GetAccountRolePermissionsLogs> logs;
  final pulumi.Input<GetAccountRolePermissionsOrganization> organization;
  final pulumi.Input<GetAccountRolePermissionsSsl> ssl;
  final pulumi.Input<GetAccountRolePermissionsWaf> waf;
  final pulumi.Input<GetAccountRolePermissionsZoneSettings> zoneSettings;
  final pulumi.Input<GetAccountRolePermissionsZones> zones;

  /// Creates a new [GetAccountRolePermissions].
  /// [analytics] Required.
  /// [billing] Required.
  /// [cachePurge] Required.
  /// [dns] Required.
  /// [dnsRecords] Required.
  /// [lb] Required.
  /// [logs] Required.
  /// [organization] Required.
  /// [ssl] Required.
  /// [waf] Required.
  /// [zoneSettings] Required.
  /// [zones] Required.
  const GetAccountRolePermissions({
    required this.analytics,
    required this.billing,
    required this.cachePurge,
    required this.dns,
    required this.dnsRecords,
    required this.lb,
    required this.logs,
    required this.organization,
    required this.ssl,
    required this.waf,
    required this.zoneSettings,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analytics': pulumi.Input.mapInputValue<GetAccountRolePermissionsAnalytics, Map<String, dynamic>>(analytics, (value) => value.toMap()),
      'billing': pulumi.Input.mapInputValue<GetAccountRolePermissionsBilling, Map<String, dynamic>>(billing, (value) => value.toMap()),
      'cachePurge': pulumi.Input.mapInputValue<GetAccountRolePermissionsCachePurge, Map<String, dynamic>>(cachePurge, (value) => value.toMap()),
      'dns': pulumi.Input.mapInputValue<GetAccountRolePermissionsDns, Map<String, dynamic>>(dns, (value) => value.toMap()),
      'dnsRecords': pulumi.Input.mapInputValue<GetAccountRolePermissionsDnsRecords, Map<String, dynamic>>(dnsRecords, (value) => value.toMap()),
      'lb': pulumi.Input.mapInputValue<GetAccountRolePermissionsLb, Map<String, dynamic>>(lb, (value) => value.toMap()),
      'logs': pulumi.Input.mapInputValue<GetAccountRolePermissionsLogs, Map<String, dynamic>>(logs, (value) => value.toMap()),
      'organization': pulumi.Input.mapInputValue<GetAccountRolePermissionsOrganization, Map<String, dynamic>>(organization, (value) => value.toMap()),
      'ssl': pulumi.Input.mapInputValue<GetAccountRolePermissionsSsl, Map<String, dynamic>>(ssl, (value) => value.toMap()),
      'waf': pulumi.Input.mapInputValue<GetAccountRolePermissionsWaf, Map<String, dynamic>>(waf, (value) => value.toMap()),
      'zoneSettings': pulumi.Input.mapInputValue<GetAccountRolePermissionsZoneSettings, Map<String, dynamic>>(zoneSettings, (value) => value.toMap()),
      'zones': pulumi.Input.mapInputValue<GetAccountRolePermissionsZones, Map<String, dynamic>>(zones, (value) => value.toMap()),
    };
  }

  factory GetAccountRolePermissions.fromMap(Map<String, dynamic> map) {
    return GetAccountRolePermissions(
      analytics: pulumi.Input.fromValue(GetAccountRolePermissionsAnalytics.fromMap((map['analytics']! as Map).cast<String, dynamic>())),
      billing: pulumi.Input.fromValue(GetAccountRolePermissionsBilling.fromMap((map['billing']! as Map).cast<String, dynamic>())),
      cachePurge: pulumi.Input.fromValue(GetAccountRolePermissionsCachePurge.fromMap((map['cachePurge']! as Map).cast<String, dynamic>())),
      dns: pulumi.Input.fromValue(GetAccountRolePermissionsDns.fromMap((map['dns']! as Map).cast<String, dynamic>())),
      dnsRecords: pulumi.Input.fromValue(GetAccountRolePermissionsDnsRecords.fromMap((map['dnsRecords']! as Map).cast<String, dynamic>())),
      lb: pulumi.Input.fromValue(GetAccountRolePermissionsLb.fromMap((map['lb']! as Map).cast<String, dynamic>())),
      logs: pulumi.Input.fromValue(GetAccountRolePermissionsLogs.fromMap((map['logs']! as Map).cast<String, dynamic>())),
      organization: pulumi.Input.fromValue(GetAccountRolePermissionsOrganization.fromMap((map['organization']! as Map).cast<String, dynamic>())),
      ssl: pulumi.Input.fromValue(GetAccountRolePermissionsSsl.fromMap((map['ssl']! as Map).cast<String, dynamic>())),
      waf: pulumi.Input.fromValue(GetAccountRolePermissionsWaf.fromMap((map['waf']! as Map).cast<String, dynamic>())),
      zoneSettings: pulumi.Input.fromValue(GetAccountRolePermissionsZoneSettings.fromMap((map['zoneSettings']! as Map).cast<String, dynamic>())),
      zones: pulumi.Input.fromValue(GetAccountRolePermissionsZones.fromMap((map['zones']! as Map).cast<String, dynamic>())),
    );
  }
}
