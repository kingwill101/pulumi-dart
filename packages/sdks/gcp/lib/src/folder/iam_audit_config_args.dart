// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'iam_audit_config_audit_log_config.dart';

/// {@template pulumi_folder_iam_audit_config_iam_audit_config_args_doc}
/// The set of arguments for IamAuditConfig.
/// {@endtemplate}
/// {@macro pulumi_folder_iam_audit_config_iam_audit_config_args_doc}
class IamAuditConfigArgs {
  /// The configuration for logging of each type of permission.  This can be specified multiple times.  Structure is documented below.
  final pulumi.Input<List<IamAuditConfigAuditLogConfig>> auditLogConfigs;
  /// The resource name of the folder the policy is attached to. Its format is folders/{folder_id}.
  final pulumi.Input<String> folder;
  /// Service which will be enabled for audit logging.  The special value `allServices` covers all services.  Note that if there are gcp.folder.IamAuditConfig resources covering both `allServices` and a specific service then the union of the two AuditConfigs is used for that service: the `log_types` specified in each `audit_log_config` are enabled, and the `exempted_members` in each `audit_log_config` are exempted.
  final pulumi.Input<String> service;

  /// Creates a new [IamAuditConfigArgs].
  /// [auditLogConfigs] The configuration for logging of each type of permission.  This can be specified multiple times.  Structure is documented below.
  /// [folder] The resource name of the folder the policy is attached to. Its format is folders/{folder_id}.
  /// [service] Service which will be enabled for audit logging.  The special value `allServices` covers all services.  Note that if there are gcp.folder.IamAuditConfig resources covering both `allServices` and a specific service then the union of the two AuditConfigs is used for that service: the `log_types` specified in each `audit_log_config` are enabled, and the `exempted_members` in each `audit_log_config` are exempted.
  IamAuditConfigArgs({
    required this.auditLogConfigs,
    required this.folder,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditLogConfigs': pulumi.Input.mapInputValue<List<IamAuditConfigAuditLogConfig>, List<Map<String, dynamic>>>(auditLogConfigs, (value) => pulumi.Input.encodeList<IamAuditConfigAuditLogConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'folder': folder,
      'service': service,
    };
  }

  factory IamAuditConfigArgs.fromMap(Map<String, dynamic> map) {
    return IamAuditConfigArgs(
      auditLogConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<IamAuditConfigAuditLogConfig>(map['auditLogConfigs']!, (value) => IamAuditConfigAuditLogConfig.fromMap((value as Map).cast<String, dynamic>()))),
      folder: pulumi.Input.fromValue(map['folder'] as String),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}

