// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workload_identity_pool_inline_certificate_issuance_config.dart';
import 'workload_identity_pool_inline_trust_config.dart';

/// {@template pulumi_iam_workload_identity_pool_workload_identity_pool_args_doc}
/// The set of arguments for WorkloadIdentityPool.
/// {@endtemplate}
/// {@macro pulumi_iam_workload_identity_pool_workload_identity_pool_args_doc}
class WorkloadIdentityPoolArgs {
  /// A description of the pool. Cannot exceed 256 characters.
  final pulumi.Input<String>? description;

  /// Whether the pool is disabled. You cannot use a disabled pool to exchange tokens, or use
  /// existing tokens to access resources. If the pool is re-enabled, existing tokens grant
  /// access again.
  final pulumi.Input<bool>? disabled;

  /// A display name for the pool. Cannot exceed 32 characters.
  final pulumi.Input<String>? displayName;

  /// Represents configuration for generating mutual TLS (mTLS) certificates for the identities
  /// within this pool. Defines the Certificate Authority (CA) pool resources and configurations
  /// required for issuance and rotation of mTLS workload certificates.
  /// Structure is documented below.
  final pulumi.Input<WorkloadIdentityPoolInlineCertificateIssuanceConfig>?
  inlineCertificateIssuanceConfig;

  /// Represents config to add additional trusted trust domains. Defines configuration for extending
  /// trust to additional trust domains. By establishing trust with another domain, the current
  /// domain will recognize and accept certificates issued by entities within the trusted domains.
  /// Note that a trust domain automatically trusts itself, eliminating the need for explicit
  /// configuration.
  /// Structure is documented below.
  final pulumi.Input<WorkloadIdentityPoolInlineTrustConfig>? inlineTrustConfig;

  /// The mode for the pool is operating in. Pools with an unspecified mode will operate as if they
  /// are in `FEDERATION_ONLY` mode.
  ///
  /// &gt; **Note** This field cannot be changed after the Workload Identity Pool is created. While
  /// `pulumi preview` may show an update if you change this field's value, `pulumi up`
  /// **will fail with an API error** (such as `Error 400: Attempted to update an immutable field.`).
  /// To specify a different `mode`, please create a new Workload Identity Pool resource.
  /// * `FEDERATION_ONLY`: Pools can only be used for federating external workload identities into
  /// Google Cloud. Unless otherwise noted, no structure or format constraints are applied to
  /// workload identities in a `FEDERATION_ONLY` mode pool, and you may not create any resources
  /// within the pool besides providers.
  /// * `TRUST_DOMAIN`: Pools can be used to assign identities to Google Cloud workloads. All
  /// identities within a `TRUST_DOMAIN` mode pool must consist of a single namespace and individual
  /// workload identifier. The subject identifier for all identities must conform to the following
  /// format: `ns/&lt;namespace&gt;/sa/&lt;workload_identifier&gt;`.
  /// `gcp.iam.WorkloadIdentityPoolProvider`s cannot be created within `TRUST_DOMAIN`
  /// mode pools.
  /// Possible values are: `FEDERATION_ONLY`, `TRUST_DOMAIN`.
  final pulumi.Input<String>? mode;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The ID to use for the pool, which becomes the final component of the resource name. This
  /// value should be 4-32 characters, and may contain the characters [a-z0-9-]. The prefix
  /// `gcp-` is reserved for use by Google, and may not be specified.
  final pulumi.Input<String> workloadIdentityPoolId;

  /// Creates a new [WorkloadIdentityPoolArgs].
  /// [description] A description of the pool. Cannot exceed 256 characters.
  /// [disabled] Whether the pool is disabled. You cannot use a disabled pool to exchange tokens, or use
  /// [displayName] A display name for the pool. Cannot exceed 32 characters.
  /// [inlineCertificateIssuanceConfig] Represents configuration for generating mutual TLS (mTLS) certificates for the identities
  /// [inlineTrustConfig] Represents config to add additional trusted trust domains. Defines configuration for extending
  /// [mode] The mode for the pool is operating in. Pools with an unspecified mode will operate as if they
  /// [project] The ID of the project in which the resource belongs.
  /// [workloadIdentityPoolId] The ID to use for the pool, which becomes the final component of the resource name. This
  WorkloadIdentityPoolArgs({
    this.description,
    this.disabled,
    this.displayName,
    this.inlineCertificateIssuanceConfig,
    this.inlineTrustConfig,
    this.mode,
    this.project,
    required this.workloadIdentityPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'disabled': ?disabled,
      'displayName': ?displayName,
      'inlineCertificateIssuanceConfig':
          ?pulumi.Input.mapOptionalInputValue<
            WorkloadIdentityPoolInlineCertificateIssuanceConfig,
            Map<String, dynamic>
          >(inlineCertificateIssuanceConfig, (value) => value.toMap()),
      'inlineTrustConfig':
          ?pulumi.Input.mapOptionalInputValue<
            WorkloadIdentityPoolInlineTrustConfig,
            Map<String, dynamic>
          >(inlineTrustConfig, (value) => value.toMap()),
      'mode': ?mode,
      'project': ?project,
      'workloadIdentityPoolId': workloadIdentityPoolId,
    };
  }

  factory WorkloadIdentityPoolArgs.fromMap(Map<String, dynamic> map) {
    return WorkloadIdentityPoolArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      disabled: (() {
        final guardedValue = map['disabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      displayName: (() {
        final guardedValue = map['displayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      inlineCertificateIssuanceConfig: (() {
        final guardedValue = map['inlineCertificateIssuanceConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WorkloadIdentityPoolInlineCertificateIssuanceConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      inlineTrustConfig: (() {
        final guardedValue = map['inlineTrustConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          WorkloadIdentityPoolInlineTrustConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      workloadIdentityPoolId: pulumi.Input.fromValue(
        map['workloadIdentityPoolId'] as String,
      ),
    );
  }
}
