// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_allowlist.dart';
import 'image_freshness_check.dart';
import 'simple_signing_attestation_check.dart';
import 'slsa_check.dart';
import 'trusted_directory_check.dart';
import 'vulnerability_check.dart';

/// A single check to perform against a Pod. Checks are grouped into `CheckSet` objects, which are defined by the top-level policy.
class Check {
  /// Optional. A special-case check that always denies. Note that this still only applies when the scope of the `CheckSet` applies and the image isn't exempted by an image allowlist. This check is primarily useful for testing, or to set the default behavior for all unmatched scopes to "deny".
  final pulumi.Input<bool>? alwaysDeny;
  /// Optional. A user-provided name for this check. This field has no effect on the policy evaluation behavior except to improve readability of messages in evaluation results.
  final pulumi.Input<String>? displayName;
  /// Optional. Images exempted from this check. If any of the patterns match the image url, the check will not be evaluated.
  final pulumi.Input<ImageAllowlist>? imageAllowlist;
  /// Optional. Require that an image is no older than a configured expiration time. Image age is determined by its upload time.
  final pulumi.Input<ImageFreshnessCheck>? imageFreshnessCheck;
  /// Optional. Require a SimpleSigning-type attestation for every image in the deployment.
  final pulumi.Input<SimpleSigningAttestationCheck>? simpleSigningAttestationCheck;
  /// Optional. Require that an image was built by a trusted builder (such as Google Cloud Build), meets requirements for Supply chain Levels for Software Artifacts (SLSA), and was built from a trusted source code repostitory.
  final pulumi.Input<SlsaCheck>? slsaCheck;
  /// Optional. Require that an image lives in a trusted directory.
  final pulumi.Input<TrustedDirectoryCheck>? trustedDirectoryCheck;
  /// Optional. Require that an image does not contain vulnerabilities that violate the configured rules, such as based on severity levels.
  final pulumi.Input<VulnerabilityCheck>? vulnerabilityCheck;

  /// Creates a new [Check].
  /// [alwaysDeny] Optional. A special-case check that always denies. Note that this still only applies when the scope of the `CheckSet` applies and the image isn't exempted by an image allowlist. This check is primarily useful for testing, or to set the default behavior for all unmatched scopes to "deny".
  /// [displayName] Optional. A user-provided name for this check. This field has no effect on the policy evaluation behavior except to improve readability of messages in evaluation results.
  /// [imageAllowlist] Optional. Images exempted from this check. If any of the patterns match the image url, the check will not be evaluated.
  /// [imageFreshnessCheck] Optional. Require that an image is no older than a configured expiration time. Image age is determined by its upload time.
  /// [simpleSigningAttestationCheck] Optional. Require a SimpleSigning-type attestation for every image in the deployment.
  /// [slsaCheck] Optional. Require that an image was built by a trusted builder (such as Google Cloud Build), meets requirements for Supply chain Levels for Software Artifacts (SLSA), and was built from a trusted source code repostitory.
  /// [trustedDirectoryCheck] Optional. Require that an image lives in a trusted directory.
  /// [vulnerabilityCheck] Optional. Require that an image does not contain vulnerabilities that violate the configured rules, such as based on severity levels.
  const Check({
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
      'imageAllowlist': ?pulumi.Input.mapOptionalInputValue<ImageAllowlist, Map<String, dynamic>>(imageAllowlist, (value) => value.toMap()),
      'imageFreshnessCheck': ?pulumi.Input.mapOptionalInputValue<ImageFreshnessCheck, Map<String, dynamic>>(imageFreshnessCheck, (value) => value.toMap()),
      'simpleSigningAttestationCheck': ?pulumi.Input.mapOptionalInputValue<SimpleSigningAttestationCheck, Map<String, dynamic>>(simpleSigningAttestationCheck, (value) => value.toMap()),
      'slsaCheck': ?pulumi.Input.mapOptionalInputValue<SlsaCheck, Map<String, dynamic>>(slsaCheck, (value) => value.toMap()),
      'trustedDirectoryCheck': ?pulumi.Input.mapOptionalInputValue<TrustedDirectoryCheck, Map<String, dynamic>>(trustedDirectoryCheck, (value) => value.toMap()),
      'vulnerabilityCheck': ?pulumi.Input.mapOptionalInputValue<VulnerabilityCheck, Map<String, dynamic>>(vulnerabilityCheck, (value) => value.toMap()),
    };
  }

  factory Check.fromMap(Map<String, dynamic> map) {
    return Check(
      alwaysDeny: (() { final guardedValue = map['alwaysDeny']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageAllowlist: (() { final guardedValue = map['imageAllowlist']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageAllowlist.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imageFreshnessCheck: (() { final guardedValue = map['imageFreshnessCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageFreshnessCheck.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      simpleSigningAttestationCheck: (() { final guardedValue = map['simpleSigningAttestationCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SimpleSigningAttestationCheck.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      slsaCheck: (() { final guardedValue = map['slsaCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SlsaCheck.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      trustedDirectoryCheck: (() { final guardedValue = map['trustedDirectoryCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TrustedDirectoryCheck.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vulnerabilityCheck: (() { final guardedValue = map['vulnerabilityCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VulnerabilityCheck.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
