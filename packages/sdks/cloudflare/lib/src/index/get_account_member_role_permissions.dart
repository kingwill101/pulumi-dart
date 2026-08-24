// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_member_role_permissions_analytics.dart';
import 'get_account_member_role_permissions_billing.dart';
import 'get_account_member_role_permissions_cache_purge.dart';
import 'get_account_member_role_permissions_dns.dart';
import 'get_account_member_role_permissions_dns_records.dart';
import 'get_account_member_role_permissions_lb.dart';
import 'get_account_member_role_permissions_logs.dart';
import 'get_account_member_role_permissions_organization.dart';
import 'get_account_member_role_permissions_ssl.dart';
import 'get_account_member_role_permissions_waf.dart';
import 'get_account_member_role_permissions_zone_settings.dart';
import 'get_account_member_role_permissions_zones.dart';

class GetAccountMemberRolePermissions {
  final pulumi.Input<GetAccountMemberRolePermissionsAnalytics> analytics;
  final pulumi.Input<GetAccountMemberRolePermissionsBilling> billing;
  final pulumi.Input<GetAccountMemberRolePermissionsCachePurge> cachePurge;
  final pulumi.Input<GetAccountMemberRolePermissionsDns> dns;
  final pulumi.Input<GetAccountMemberRolePermissionsDnsRecords> dnsRecords;
  final pulumi.Input<GetAccountMemberRolePermissionsLb> lb;
  final pulumi.Input<GetAccountMemberRolePermissionsLogs> logs;
  final pulumi.Input<GetAccountMemberRolePermissionsOrganization> organization;
  final pulumi.Input<GetAccountMemberRolePermissionsSsl> ssl;
  final pulumi.Input<GetAccountMemberRolePermissionsWaf> waf;
  final pulumi.Input<GetAccountMemberRolePermissionsZoneSettings> zoneSettings;
  final pulumi.Input<GetAccountMemberRolePermissionsZones> zones;

  /// Creates a new [GetAccountMemberRolePermissions].
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
  const GetAccountMemberRolePermissions({
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
      'analytics': pulumi.Input.mapInputValue<GetAccountMemberRolePermissionsAnalytics, Map<String, dynamic>>(analytics, (value) => value.toMap()),
      'billing': pulumi.Input.mapInputValue<GetAccountMemberRolePermissionsBilling, Map<String, dynamic>>(billing, (value) => value.toMap()),
      'cachePurge': pulumi.Input.mapInputValue<GetAccountMemberRolePermissionsCachePurge, Map<String, dynamic>>(cachePurge, (value) => value.toMap()),
      'dns': pulumi.Input.mapInputValue<GetAccountMemberRolePermissionsDns, Map<String, dynamic>>(dns, (value) => value.toMap()),
      'dnsRecords': pulumi.Input.mapInputValue<GetAccountMemberRolePermissionsDnsRecords, Map<String, dynamic>>(dnsRecords, (value) => value.toMap()),
      'lb': pulumi.Input.mapInputValue<GetAccountMemberRolePermissionsLb, Map<String, dynamic>>(lb, (value) => value.toMap()),
      'logs': pulumi.Input.mapInputValue<GetAccountMemberRolePermissionsLogs, Map<String, dynamic>>(logs, (value) => value.toMap()),
      'organization': pulumi.Input.mapInputValue<GetAccountMemberRolePermissionsOrganization, Map<String, dynamic>>(organization, (value) => value.toMap()),
      'ssl': pulumi.Input.mapInputValue<GetAccountMemberRolePermissionsSsl, Map<String, dynamic>>(ssl, (value) => value.toMap()),
      'waf': pulumi.Input.mapInputValue<GetAccountMemberRolePermissionsWaf, Map<String, dynamic>>(waf, (value) => value.toMap()),
      'zoneSettings': pulumi.Input.mapInputValue<GetAccountMemberRolePermissionsZoneSettings, Map<String, dynamic>>(zoneSettings, (value) => value.toMap()),
      'zones': pulumi.Input.mapInputValue<GetAccountMemberRolePermissionsZones, Map<String, dynamic>>(zones, (value) => value.toMap()),
    };
  }

  factory GetAccountMemberRolePermissions.fromMap(Map<String, dynamic> map) {
    return GetAccountMemberRolePermissions(
      analytics: pulumi.Input.fromValue(GetAccountMemberRolePermissionsAnalytics.fromMap((map['analytics']! as Map).cast<String, dynamic>())),
      billing: pulumi.Input.fromValue(GetAccountMemberRolePermissionsBilling.fromMap((map['billing']! as Map).cast<String, dynamic>())),
      cachePurge: pulumi.Input.fromValue(GetAccountMemberRolePermissionsCachePurge.fromMap((map['cachePurge']! as Map).cast<String, dynamic>())),
      dns: pulumi.Input.fromValue(GetAccountMemberRolePermissionsDns.fromMap((map['dns']! as Map).cast<String, dynamic>())),
      dnsRecords: pulumi.Input.fromValue(GetAccountMemberRolePermissionsDnsRecords.fromMap((map['dnsRecords']! as Map).cast<String, dynamic>())),
      lb: pulumi.Input.fromValue(GetAccountMemberRolePermissionsLb.fromMap((map['lb']! as Map).cast<String, dynamic>())),
      logs: pulumi.Input.fromValue(GetAccountMemberRolePermissionsLogs.fromMap((map['logs']! as Map).cast<String, dynamic>())),
      organization: pulumi.Input.fromValue(GetAccountMemberRolePermissionsOrganization.fromMap((map['organization']! as Map).cast<String, dynamic>())),
      ssl: pulumi.Input.fromValue(GetAccountMemberRolePermissionsSsl.fromMap((map['ssl']! as Map).cast<String, dynamic>())),
      waf: pulumi.Input.fromValue(GetAccountMemberRolePermissionsWaf.fromMap((map['waf']! as Map).cast<String, dynamic>())),
      zoneSettings: pulumi.Input.fromValue(GetAccountMemberRolePermissionsZoneSettings.fromMap((map['zoneSettings']! as Map).cast<String, dynamic>())),
      zones: pulumi.Input.fromValue(GetAccountMemberRolePermissionsZones.fromMap((map['zones']! as Map).cast<String, dynamic>())),
    );
  }
}
