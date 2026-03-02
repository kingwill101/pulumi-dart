// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iam_audit_config_audit_log_config.dart';

/// Input properties used for looking up and filtering IamAuditConfig resources.
class IamAuditConfigState {
  /// The configuration for logging of each type of permission.  This can be specified multiple times.  Structure is documented below.
  final pulumi.Input<List<IamAuditConfigAuditLogConfig>>? auditLogConfigs;
  /// The etag of iam policy
  final pulumi.Input<String>? etag;
  /// The numeric ID of the organization in which you want to manage the audit logging config.
  final pulumi.Input<String>? orgId;
  /// Service which will be enabled for audit logging.  The special value `allServices` covers all services.  Note that if there are google\_organization\_iam\_audit\_config resources covering both `allServices` and a specific service then the union of the two AuditConfigs is used for that service: the `log_types` specified in each `audit_log_config` are enabled, and the `exempted_members` in each `audit_log_config` are exempted.
  final pulumi.Input<String>? service;

  /// Creates a new [IamAuditConfigState].
  /// [auditLogConfigs] The configuration for logging of each type of permission.  This can be specified multiple times.  Structure is documented below.
  /// [etag] The etag of iam policy
  /// [orgId] The numeric ID of the organization in which you want to manage the audit logging config.
  /// [service] Service which will be enabled for audit logging.  The special value `allServices` covers all services.  Note that if there are google\_organization\_iam\_audit\_config resources covering both `allServices` and a specific service then the union of the two AuditConfigs is used for that service: the `log_types` specified in each `audit_log_config` are enabled, and the `exempted_members` in each `audit_log_config` are exempted.
  IamAuditConfigState({
    this.auditLogConfigs,
    this.etag,
    this.orgId,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditLogConfigs': ?pulumi.Input.mapOptionalInputValue<List<IamAuditConfigAuditLogConfig>, List<Map<String, dynamic>>>(auditLogConfigs, (value) => pulumi.Input.encodeList<IamAuditConfigAuditLogConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'etag': ?etag,
      'orgId': ?orgId,
      'service': ?service,
    };
  }

  factory IamAuditConfigState.fromMap(Map<String, dynamic> map) {
    return IamAuditConfigState(
      auditLogConfigs: map['auditLogConfigs'] == null ? null : (pulumi.Input.decodeList<IamAuditConfigAuditLogConfig>(map['auditLogConfigs'], (value) => IamAuditConfigAuditLogConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      etag: map['etag'] == null ? null : (map['etag'] as String).input(),
      orgId: map['orgId'] == null ? null : (map['orgId'] as String).input(),
      service: map['service'] == null ? null : (map['service'] as String).input(),
    );
  }
}

