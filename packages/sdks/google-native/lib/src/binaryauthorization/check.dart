// ignore_for_file: unused_element, unnecessary_cast

import 'image_allowlist.dart';
import 'image_freshness_check.dart';
import 'simple_signing_attestation_check.dart';
import 'slsa_check.dart';
import 'trusted_directory_check.dart';
import 'vulnerability_check.dart';

/// A single check to perform against a Pod. Checks are grouped into `CheckSet` objects, which are defined by the top-level policy.
class Check {
  /// Optional. A special-case check that always denies. Note that this still only applies when the scope of the `CheckSet` applies and the image isn't exempted by an image allowlist. This check is primarily useful for testing, or to set the default behavior for all unmatched scopes to "deny".
  final bool? alwaysDeny;
  /// Optional. A user-provided name for this check. This field has no effect on the policy evaluation behavior except to improve readability of messages in evaluation results.
  final String? displayName;
  /// Optional. Images exempted from this check. If any of the patterns match the image url, the check will not be evaluated.
  final ImageAllowlist? imageAllowlist;
  /// Optional. Require that an image is no older than a configured expiration time. Image age is determined by its upload time.
  final ImageFreshnessCheck? imageFreshnessCheck;
  /// Optional. Require a SimpleSigning-type attestation for every image in the deployment.
  final SimpleSigningAttestationCheck? simpleSigningAttestationCheck;
  /// Optional. Require that an image was built by a trusted builder (such as Google Cloud Build), meets requirements for Supply chain Levels for Software Artifacts (SLSA), and was built from a trusted source code repostitory.
  final SlsaCheck? slsaCheck;
  /// Optional. Require that an image lives in a trusted directory.
  final TrustedDirectoryCheck? trustedDirectoryCheck;
  /// Optional. Require that an image does not contain vulnerabilities that violate the configured rules, such as based on severity levels.
  final VulnerabilityCheck? vulnerabilityCheck;

  /// Creates a new [Check].
  /// [alwaysDeny] Optional. A special-case check that always denies. Note that this still only applies when the scope of the `CheckSet` applies and the image isn't exempted by an image allowlist. This check is primarily useful for testing, or to set the default behavior for all unmatched scopes to "deny".
  /// [displayName] Optional. A user-provided name for this check. This field has no effect on the policy evaluation behavior except to improve readability of messages in evaluation results.
  /// [imageAllowlist] Optional. Images exempted from this check. If any of the patterns match the image url, the check will not be evaluated.
  /// [imageFreshnessCheck] Optional. Require that an image is no older than a configured expiration time. Image age is determined by its upload time.
  /// [simpleSigningAttestationCheck] Optional. Require a SimpleSigning-type attestation for every image in the deployment.
  /// [slsaCheck] Optional. Require that an image was built by a trusted builder (such as Google Cloud Build), meets requirements for Supply chain Levels for Software Artifacts (SLSA), and was built from a trusted source code repostitory.
  /// [trustedDirectoryCheck] Optional. Require that an image lives in a trusted directory.
  /// [vulnerabilityCheck] Optional. Require that an image does not contain vulnerabilities that violate the configured rules, such as based on severity levels.
  Check({
    this.alwaysDeny,
    this.displayName,
    this.imageAllowlist,
    this.imageFreshnessCheck,
    this.simpleSigningAttestationCheck,
    this.slsaCheck,
    this.trustedDirectoryCheck,
    this.vulnerabilityCheck,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysDeny': ?alwaysDeny,
      'displayName': ?displayName,
      'imageAllowlist': ?imageAllowlist == null ? null : imageAllowlist!.toMap(),
      'imageFreshnessCheck': ?imageFreshnessCheck == null ? null : imageFreshnessCheck!.toMap(),
      'simpleSigningAttestationCheck': ?simpleSigningAttestationCheck == null ? null : simpleSigningAttestationCheck!.toMap(),
      'slsaCheck': ?slsaCheck == null ? null : slsaCheck!.toMap(),
      'trustedDirectoryCheck': ?trustedDirectoryCheck == null ? null : trustedDirectoryCheck!.toMap(),
      'vulnerabilityCheck': ?vulnerabilityCheck == null ? null : vulnerabilityCheck!.toMap(),
    };
  }

  factory Check.fromMap(Map<String, dynamic> map) {
    return Check(
      alwaysDeny: map['alwaysDeny'] == null ? null : map['alwaysDeny'] as bool,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      imageAllowlist: map['imageAllowlist'] == null ? null : ImageAllowlist.fromMap((map['imageAllowlist'] as Map).cast<String, dynamic>()),
      imageFreshnessCheck: map['imageFreshnessCheck'] == null ? null : ImageFreshnessCheck.fromMap((map['imageFreshnessCheck'] as Map).cast<String, dynamic>()),
      simpleSigningAttestationCheck: map['simpleSigningAttestationCheck'] == null ? null : SimpleSigningAttestationCheck.fromMap((map['simpleSigningAttestationCheck'] as Map).cast<String, dynamic>()),
      slsaCheck: map['slsaCheck'] == null ? null : SlsaCheck.fromMap((map['slsaCheck'] as Map).cast<String, dynamic>()),
      trustedDirectoryCheck: map['trustedDirectoryCheck'] == null ? null : TrustedDirectoryCheck.fromMap((map['trustedDirectoryCheck'] as Map).cast<String, dynamic>()),
      vulnerabilityCheck: map['vulnerabilityCheck'] == null ? null : VulnerabilityCheck.fromMap((map['vulnerabilityCheck'] as Map).cast<String, dynamic>()),
    );
  }
}

