// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iamaudit_config_audit_log_config.dart';

/// Input properties used for looking up and filtering IAMAuditConfig resources.
class IAMAuditConfigState {
  /// The configuration for logging of each type of permission.  This can be specified multiple times.  Structure is documented below.
  final pulumi.Input<List<IAMAuditConfigAuditLogConfig>>? auditLogConfigs;
  /// (Computed) The etag of the project's IAM policy.
  final pulumi.Input<String>? etag;
  /// The project id of the target project. This is not
  /// inferred from the provider.
  final pulumi.Input<String>? project;
  /// Service which will be enabled for audit logging.  The special value `allServices` covers all services.  Note that if there are gcp.projects.IAMAuditConfig resources covering both `allServices` and a specific service then the union of the two AuditConfigs is used for that service: the `log_types` specified in each `audit_log_config` are enabled, and the `exempted_members` in each `audit_log_config` are exempted.
  final pulumi.Input<String>? service;

  /// Creates a new [IAMAuditConfigState].
  /// [auditLogConfigs] The configuration for logging of each type of permission.  This can be specified multiple times.  Structure is documented below.
  /// [etag] (Computed) The etag of the project's IAM policy.
  /// [project] The project id of the target project. This is not
  /// [service] Service which will be enabled for audit logging.  The special value `allServices` covers all services.  Note that if there are gcp.projects.IAMAuditConfig resources covering both `allServices` and a specific service then the union of the two AuditConfigs is used for that service: the `log_types` specified in each `audit_log_config` are enabled, and the `exempted_members` in each `audit_log_config` are exempted.
  IAMAuditConfigState({
    pulumi.Output<List<IAMAuditConfigAuditLogConfig>>? auditLogConfigs,
    pulumi.Output<String>? etag,
    pulumi.Output<String>? project,
    pulumi.Output<String>? service,
  }) :
      auditLogConfigs = pulumi.Input.asOptionalInput<List<IAMAuditConfigAuditLogConfig>>(auditLogConfigs),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      project = pulumi.Input.asOptionalInput<String>(project),
      service = pulumi.Input.asOptionalInput<String>(service);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditLogConfigs': ?pulumi.Input.mapOptionalInputValue<List<IAMAuditConfigAuditLogConfig>, List<Map<String, dynamic>>>(auditLogConfigs, (value) => pulumi.Input.encodeList<IAMAuditConfigAuditLogConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'etag': ?etag,
      'project': ?project,
      'service': ?service,
    };
  }

  factory IAMAuditConfigState.fromMap(Map<String, dynamic> map) {
    return IAMAuditConfigState(
      auditLogConfigs: map['auditLogConfigs'] == null ? null : pulumi.Output.create<List<IAMAuditConfigAuditLogConfig>>(pulumi.Input.decodeList<IAMAuditConfigAuditLogConfig>(map['auditLogConfigs'], (value) => IAMAuditConfigAuditLogConfig.fromMap((value as Map).cast<String, dynamic>()))),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      service: map['service'] == null ? null : pulumi.Output.create<String>(map['service'] as String),
    );
  }
}

