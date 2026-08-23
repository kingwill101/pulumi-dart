// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_allowlist_response.dart';
import 'image_freshness_check_response.dart';
import 'simple_signing_attestation_check_response.dart';
import 'slsa_check_response.dart';
import 'trusted_directory_check_response.dart';
import 'vulnerability_check_response.dart';

/// A single check to perform against a Pod. Checks are grouped into `CheckSet` objects, which are defined by the top-level policy.
class CheckResponse {
  /// Optional. A special-case check that always denies. Note that this still only applies when the scope of the `CheckSet` applies and the image isn't exempted by an image allowlist. This check is primarily useful for testing, or to set the default behavior for all unmatched scopes to "deny".
  final pulumi.Input<bool> alwaysDeny;
  /// Optional. A user-provided name for this check. This field has no effect on the policy evaluation behavior except to improve readability of messages in evaluation results.
  final pulumi.Input<String> displayName;
  /// Optional. Images exempted from this check. If any of the patterns match the image url, the check will not be evaluated.
  final pulumi.Input<ImageAllowlistResponse> imageAllowlist;
  /// Optional. Require that an image is no older than a configured expiration time. Image age is determined by its upload time.
  final pulumi.Input<ImageFreshnessCheckResponse> imageFreshnessCheck;
  /// Optional. Require a SimpleSigning-type attestation for every image in the deployment.
  final pulumi.Input<SimpleSigningAttestationCheckResponse> simpleSigningAttestationCheck;
  /// Optional. Require that an image was built by a trusted builder (such as Google Cloud Build), meets requirements for Supply chain Levels for Software Artifacts (SLSA), and was built from a trusted source code repostitory.
  final pulumi.Input<SlsaCheckResponse> slsaCheck;
  /// Optional. Require that an image lives in a trusted directory.
  final pulumi.Input<TrustedDirectoryCheckResponse> trustedDirectoryCheck;
  /// Optional. Require that an image does not contain vulnerabilities that violate the configured rules, such as based on severity levels.
  final pulumi.Input<VulnerabilityCheckResponse> vulnerabilityCheck;

  /// Creates a new [CheckResponse].
  /// [alwaysDeny] Optional. A special-case check that always denies. Note that this still only applies when the scope of the `CheckSet` applies and the image isn't exempted by an image allowlist. This check is primarily useful for testing, or to set the default behavior for all unmatched scopes to "deny".
  /// [displayName] Optional. A user-provided name for this check. This field has no effect on the policy evaluation behavior except to improve readability of messages in evaluation results.
  /// [imageAllowlist] Optional. Images exempted from this check. If any of the patterns match the image url, the check will not be evaluated.
  /// [imageFreshnessCheck] Optional. Require that an image is no older than a configured expiration time. Image age is determined by its upload time.
  /// [simpleSigningAttestationCheck] Optional. Require a SimpleSigning-type attestation for every image in the deployment.
  /// [slsaCheck] Optional. Require that an image was built by a trusted builder (such as Google Cloud Build), meets requirements for Supply chain Levels for Software Artifacts (SLSA), and was built from a trusted source code repostitory.
  /// [trustedDirectoryCheck] Optional. Require that an image lives in a trusted directory.
  /// [vulnerabilityCheck] Optional. Require that an image does not contain vulnerabilities that violate the configured rules, such as based on severity levels.
  const CheckResponse({
    required this.alwaysDeny,
    required this.displayName,
    required this.imageAllowlist,
    required this.imageFreshnessCheck,
    required this.simpleSigningAttestationCheck,
    required this.slsaCheck,
    required this.trustedDirectoryCheck,
    required this.vulnerabilityCheck,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysDeny': alwaysDeny,
      'displayName': displayName,
      'imageAllowlist': pulumi.Input.mapInputValue<ImageAllowlistResponse, Map<String, dynamic>>(imageAllowlist, (value) => value.toMap()),
      'imageFreshnessCheck': pulumi.Input.mapInputValue<ImageFreshnessCheckResponse, Map<String, dynamic>>(imageFreshnessCheck, (value) => value.toMap()),
      'simpleSigningAttestationCheck': pulumi.Input.mapInputValue<SimpleSigningAttestationCheckResponse, Map<String, dynamic>>(simpleSigningAttestationCheck, (value) => value.toMap()),
      'slsaCheck': pulumi.Input.mapInputValue<SlsaCheckResponse, Map<String, dynamic>>(slsaCheck, (value) => value.toMap()),
      'trustedDirectoryCheck': pulumi.Input.mapInputValue<TrustedDirectoryCheckResponse, Map<String, dynamic>>(trustedDirectoryCheck, (value) => value.toMap()),
      'vulnerabilityCheck': pulumi.Input.mapInputValue<VulnerabilityCheckResponse, Map<String, dynamic>>(vulnerabilityCheck, (value) => value.toMap()),
    };
  }

  factory CheckResponse.fromMap(Map<String, dynamic> map) {
    return CheckResponse(
      alwaysDeny: pulumi.Input.fromValue(map['alwaysDeny'] as bool),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      imageAllowlist: pulumi.Input.fromValue(ImageAllowlistResponse.fromMap((map['imageAllowlist']! as Map).cast<String, dynamic>())),
      imageFreshnessCheck: pulumi.Input.fromValue(ImageFreshnessCheckResponse.fromMap((map['imageFreshnessCheck']! as Map).cast<String, dynamic>())),
      simpleSigningAttestationCheck: pulumi.Input.fromValue(SimpleSigningAttestationCheckResponse.fromMap((map['simpleSigningAttestationCheck']! as Map).cast<String, dynamic>())),
      slsaCheck: pulumi.Input.fromValue(SlsaCheckResponse.fromMap((map['slsaCheck']! as Map).cast<String, dynamic>())),
      trustedDirectoryCheck: pulumi.Input.fromValue(TrustedDirectoryCheckResponse.fromMap((map['trustedDirectoryCheck']! as Map).cast<String, dynamic>())),
      vulnerabilityCheck: pulumi.Input.fromValue(VulnerabilityCheckResponse.fromMap((map['vulnerabilityCheck']! as Map).cast<String, dynamic>())),
    );
  }
}
