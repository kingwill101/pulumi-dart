// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OciLinkAccount resources.
class OciLinkAccountState {
  /// New Relic account to operate on. Overrides the provider-level `account_id`. If omitted, use the provider default or `NEW_RELIC_ACCOUNT_ID`.
  final pulumi.Input<String>? accountId;
  /// OCI compartment OCID representing (or containing) the monitored resources/newrelic compartment.
  final pulumi.Input<String>? compartmentOcid;
  /// Vault secret OCID containing an ingest secret.
  final pulumi.Input<String>? ingestVaultOcid;
  /// Specifies the type of integration, such as metrics, logs, or a combination of logs and metrics (e.g., `METRICS`, `LOGS`, `METRICS,LOGS`).
  final pulumi.Input<String>? instrumentationType;
  /// The Logging stack identifier for the OCI account.
  final pulumi.Input<String>? loggingStackOcid;
  /// Metric stack OCID (ignored on create, applied on update).
  final pulumi.Input<String>? metricStackOcid;
  /// Display name for the linked account.
  final pulumi.Input<String>? name;
  /// OCI Identity Domain (IDCS) OAuth2 client ID used for workload identity federation.
  final pulumi.Input<String>? ociClientId;
  /// OAuth2 client secret. Not displayed in plans or state outputs.
  final pulumi.Input<String>? ociClientSecret;
  /// Base URL of the OCI Identity Domain (e.g. `https://idcs-<hash>.identity.oraclecloud.com`).
  final pulumi.Input<String>? ociDomainUrl;
  /// Home region of the tenancy (e.g. `us-ashburn-1`).
  final pulumi.Input<String>? ociHomeRegion;
  /// OCI region for the linkage (ignored on create, applied on update).
  final pulumi.Input<String>? ociRegion;
  /// OCI tenancy OCID (root tenancy). Changing forces a new linked account.
  final pulumi.Input<String>? tenantId;
  /// Vault secret OCID containing a user or auxiliary secret.
  final pulumi.Input<String>? userVaultOcid;

  /// Creates a new [OciLinkAccountState].
  /// [accountId] New Relic account to operate on. Overrides the provider-level `account_id`. If omitted, use the provider default or `NEW_RELIC_ACCOUNT_ID`.
  /// [compartmentOcid] OCI compartment OCID representing (or containing) the monitored resources/newrelic compartment.
  /// [ingestVaultOcid] Vault secret OCID containing an ingest secret.
  /// [instrumentationType] Specifies the type of integration, such as metrics, logs, or a combination of logs and metrics (e.g., `METRICS`, `LOGS`, `METRICS,LOGS`).
  /// [loggingStackOcid] The Logging stack identifier for the OCI account.
  /// [metricStackOcid] Metric stack OCID (ignored on create, applied on update).
  /// [name] Display name for the linked account.
  /// [ociClientId] OCI Identity Domain (IDCS) OAuth2 client ID used for workload identity federation.
  /// [ociClientSecret] OAuth2 client secret. Not displayed in plans or state outputs.
  /// [ociDomainUrl] Base URL of the OCI Identity Domain (e.g. `https://idcs-<hash>.identity.oraclecloud.com`).
  /// [ociHomeRegion] Home region of the tenancy (e.g. `us-ashburn-1`).
  /// [ociRegion] OCI region for the linkage (ignored on create, applied on update).
  /// [tenantId] OCI tenancy OCID (root tenancy). Changing forces a new linked account.
  /// [userVaultOcid] Vault secret OCID containing a user or auxiliary secret.
  OciLinkAccountState({
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? compartmentOcid,
    pulumi.Output<String>? ingestVaultOcid,
    pulumi.Output<String>? instrumentationType,
    pulumi.Output<String>? loggingStackOcid,
    pulumi.Output<String>? metricStackOcid,
    pulumi.Output<String>? name,
    pulumi.Output<String>? ociClientId,
    pulumi.Output<String>? ociClientSecret,
    pulumi.Output<String>? ociDomainUrl,
    pulumi.Output<String>? ociHomeRegion,
    pulumi.Output<String>? ociRegion,
    pulumi.Output<String>? tenantId,
    pulumi.Output<String>? userVaultOcid,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      compartmentOcid = pulumi.Input.asOptionalInput<String>(compartmentOcid),
      ingestVaultOcid = pulumi.Input.asOptionalInput<String>(ingestVaultOcid),
      instrumentationType = pulumi.Input.asOptionalInput<String>(instrumentationType),
      loggingStackOcid = pulumi.Input.asOptionalInput<String>(loggingStackOcid),
      metricStackOcid = pulumi.Input.asOptionalInput<String>(metricStackOcid),
      name = pulumi.Input.asOptionalInput<String>(name),
      ociClientId = pulumi.Input.asOptionalInput<String>(ociClientId),
      ociClientSecret = pulumi.Input.asOptionalInput<String>(ociClientSecret),
      ociDomainUrl = pulumi.Input.asOptionalInput<String>(ociDomainUrl),
      ociHomeRegion = pulumi.Input.asOptionalInput<String>(ociHomeRegion),
      ociRegion = pulumi.Input.asOptionalInput<String>(ociRegion),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId),
      userVaultOcid = pulumi.Input.asOptionalInput<String>(userVaultOcid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'compartmentOcid': ?compartmentOcid,
      'ingestVaultOcid': ?ingestVaultOcid,
      'instrumentationType': ?instrumentationType,
      'loggingStackOcid': ?loggingStackOcid,
      'metricStackOcid': ?metricStackOcid,
      'name': ?name,
      'ociClientId': ?ociClientId,
      'ociClientSecret': ?ociClientSecret,
      'ociDomainUrl': ?ociDomainUrl,
      'ociHomeRegion': ?ociHomeRegion,
      'ociRegion': ?ociRegion,
      'tenantId': ?tenantId,
      'userVaultOcid': ?userVaultOcid,
    };
  }

  factory OciLinkAccountState.fromMap(Map<String, dynamic> map) {
    return OciLinkAccountState(
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      compartmentOcid: map['compartmentOcid'] == null ? null : pulumi.Output.create<String>(map['compartmentOcid'] as String),
      ingestVaultOcid: map['ingestVaultOcid'] == null ? null : pulumi.Output.create<String>(map['ingestVaultOcid'] as String),
      instrumentationType: map['instrumentationType'] == null ? null : pulumi.Output.create<String>(map['instrumentationType'] as String),
      loggingStackOcid: map['loggingStackOcid'] == null ? null : pulumi.Output.create<String>(map['loggingStackOcid'] as String),
      metricStackOcid: map['metricStackOcid'] == null ? null : pulumi.Output.create<String>(map['metricStackOcid'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      ociClientId: map['ociClientId'] == null ? null : pulumi.Output.create<String>(map['ociClientId'] as String),
      ociClientSecret: map['ociClientSecret'] == null ? null : pulumi.Output.create<String>(map['ociClientSecret'] as String),
      ociDomainUrl: map['ociDomainUrl'] == null ? null : pulumi.Output.create<String>(map['ociDomainUrl'] as String),
      ociHomeRegion: map['ociHomeRegion'] == null ? null : pulumi.Output.create<String>(map['ociHomeRegion'] as String),
      ociRegion: map['ociRegion'] == null ? null : pulumi.Output.create<String>(map['ociRegion'] as String),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
      userVaultOcid: map['userVaultOcid'] == null ? null : pulumi.Output.create<String>(map['userVaultOcid'] as String),
    );
  }
}

