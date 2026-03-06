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
  /// Base URL of the OCI Identity Domain (e.g. `https://idcs-&lt;hash&gt;.identity.oraclecloud.com`).
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
  /// [ociDomainUrl] Base URL of the OCI Identity Domain (e.g. `https://idcs-&lt;hash&gt;.identity.oraclecloud.com`).
  /// [ociHomeRegion] Home region of the tenancy (e.g. `us-ashburn-1`).
  /// [ociRegion] OCI region for the linkage (ignored on create, applied on update).
  /// [tenantId] OCI tenancy OCID (root tenancy). Changing forces a new linked account.
  /// [userVaultOcid] Vault secret OCID containing a user or auxiliary secret.
  const OciLinkAccountState({
    this.accountId,
    this.compartmentOcid,
    this.ingestVaultOcid,
    this.instrumentationType,
    this.loggingStackOcid,
    this.metricStackOcid,
    this.name,
    this.ociClientId,
    this.ociClientSecret,
    this.ociDomainUrl,
    this.ociHomeRegion,
    this.ociRegion,
    this.tenantId,
    this.userVaultOcid,
  });

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
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      compartmentOcid: (() { final guardedValue = map['compartmentOcid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ingestVaultOcid: (() { final guardedValue = map['ingestVaultOcid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instrumentationType: (() { final guardedValue = map['instrumentationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loggingStackOcid: (() { final guardedValue = map['loggingStackOcid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricStackOcid: (() { final guardedValue = map['metricStackOcid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ociClientId: (() { final guardedValue = map['ociClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ociClientSecret: (() { final guardedValue = map['ociClientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ociDomainUrl: (() { final guardedValue = map['ociDomainUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ociHomeRegion: (() { final guardedValue = map['ociHomeRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ociRegion: (() { final guardedValue = map['ociRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userVaultOcid: (() { final guardedValue = map['userVaultOcid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

