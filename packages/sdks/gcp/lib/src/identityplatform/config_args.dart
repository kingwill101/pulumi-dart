// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_blocking_functions.dart';
import 'config_client.dart';
import 'config_mfa.dart';
import 'config_monitoring.dart';
import 'config_multi_tenant.dart';
import 'config_quota.dart';
import 'config_sign_in.dart';
import 'config_sms_region_config.dart';

/// {@template pulumi_identityplatform_config_config_args_doc}
/// The set of arguments for Config.
/// {@endtemplate}
/// {@macro pulumi_identityplatform_config_config_args_doc}
class ConfigArgs {
  /// List of domains authorized for OAuth redirects.
  final pulumi.Input<List<String>>? authorizedDomains;
  /// Whether anonymous users will be auto-deleted after a period of 30 days
  final pulumi.Input<bool>? autodeleteAnonymousUsers;
  /// Configuration related to blocking functions.
  /// Structure is documented below.
  final pulumi.Input<ConfigBlockingFunctions>? blockingFunctions;
  /// Options related to how clients making requests on behalf of a project should be configured.
  /// Structure is documented below.
  final pulumi.Input<ConfigClient>? client;
  /// Options related to how clients making requests on behalf of a project should be configured.
  /// Structure is documented below.
  final pulumi.Input<ConfigMfa>? mfa;
  /// Configuration related to monitoring project activity.
  /// Structure is documented below.
  final pulumi.Input<ConfigMonitoring>? monitoring;
  /// Configuration related to multi-tenant functionality.
  /// Structure is documented below.
  final pulumi.Input<ConfigMultiTenant>? multiTenant;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Configuration related to quotas.
  /// Structure is documented below.
  final pulumi.Input<ConfigQuota>? quota;
  /// Configuration related to local sign in methods.
  /// Structure is documented below.
  final pulumi.Input<ConfigSignIn>? signIn;
  /// Configures the regions where users are allowed to send verification SMS for the project or tenant. This is based on the calling code of the destination phone number.
  /// Structure is documented below.
  final pulumi.Input<ConfigSmsRegionConfig>? smsRegionConfig;

  /// Creates a new [ConfigArgs].
  /// [authorizedDomains] List of domains authorized for OAuth redirects.
  /// [autodeleteAnonymousUsers] Whether anonymous users will be auto-deleted after a period of 30 days
  /// [blockingFunctions] Configuration related to blocking functions.
  /// [client] Options related to how clients making requests on behalf of a project should be configured.
  /// [mfa] Options related to how clients making requests on behalf of a project should be configured.
  /// [monitoring] Configuration related to monitoring project activity.
  /// [multiTenant] Configuration related to multi-tenant functionality.
  /// [project] The ID of the project in which the resource belongs.
  /// [quota] Configuration related to quotas.
  /// [signIn] Configuration related to local sign in methods.
  /// [smsRegionConfig] Configures the regions where users are allowed to send verification SMS for the project or tenant. This is based on the calling code of the destination phone number.
  ConfigArgs({
    this.authorizedDomains,
    this.autodeleteAnonymousUsers,
    this.blockingFunctions,
    this.client,
    this.mfa,
    this.monitoring,
    this.multiTenant,
    this.project,
    this.quota,
    this.signIn,
    this.smsRegionConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedDomains': ?authorizedDomains,
      'autodeleteAnonymousUsers': ?autodeleteAnonymousUsers,
      'blockingFunctions': ?pulumi.Input.mapOptionalInputValue<ConfigBlockingFunctions, Map<String, dynamic>>(blockingFunctions, (value) => value.toMap()),
      'client': ?pulumi.Input.mapOptionalInputValue<ConfigClient, Map<String, dynamic>>(client, (value) => value.toMap()),
      'mfa': ?pulumi.Input.mapOptionalInputValue<ConfigMfa, Map<String, dynamic>>(mfa, (value) => value.toMap()),
      'monitoring': ?pulumi.Input.mapOptionalInputValue<ConfigMonitoring, Map<String, dynamic>>(monitoring, (value) => value.toMap()),
      'multiTenant': ?pulumi.Input.mapOptionalInputValue<ConfigMultiTenant, Map<String, dynamic>>(multiTenant, (value) => value.toMap()),
      'project': ?project,
      'quota': ?pulumi.Input.mapOptionalInputValue<ConfigQuota, Map<String, dynamic>>(quota, (value) => value.toMap()),
      'signIn': ?pulumi.Input.mapOptionalInputValue<ConfigSignIn, Map<String, dynamic>>(signIn, (value) => value.toMap()),
      'smsRegionConfig': ?pulumi.Input.mapOptionalInputValue<ConfigSmsRegionConfig, Map<String, dynamic>>(smsRegionConfig, (value) => value.toMap()),
    };
  }

  factory ConfigArgs.fromMap(Map<String, dynamic> map) {
    return ConfigArgs(
      authorizedDomains: map['authorizedDomains'] == null ? null : ((map['authorizedDomains']! as List).cast<String>()).input(),
      autodeleteAnonymousUsers: map['autodeleteAnonymousUsers'] == null ? null : (map['autodeleteAnonymousUsers']! as bool).input(),
      blockingFunctions: map['blockingFunctions'] == null ? null : (ConfigBlockingFunctions.fromMap((map['blockingFunctions']! as Map).cast<String, dynamic>())).input(),
      client: map['client'] == null ? null : (ConfigClient.fromMap((map['client']! as Map).cast<String, dynamic>())).input(),
      mfa: map['mfa'] == null ? null : (ConfigMfa.fromMap((map['mfa']! as Map).cast<String, dynamic>())).input(),
      monitoring: map['monitoring'] == null ? null : (ConfigMonitoring.fromMap((map['monitoring']! as Map).cast<String, dynamic>())).input(),
      multiTenant: map['multiTenant'] == null ? null : (ConfigMultiTenant.fromMap((map['multiTenant']! as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      quota: map['quota'] == null ? null : (ConfigQuota.fromMap((map['quota']! as Map).cast<String, dynamic>())).input(),
      signIn: map['signIn'] == null ? null : (ConfigSignIn.fromMap((map['signIn']! as Map).cast<String, dynamic>())).input(),
      smsRegionConfig: map['smsRegionConfig'] == null ? null : (ConfigSmsRegionConfig.fromMap((map['smsRegionConfig']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

