// ignore_for_file: unused_element, unnecessary_cast

import 'issuance_policy_response.dart';
import 'publishing_options_response.dart';

/// Result data returned by getCaPool.
class GetCaPoolResult {
  /// Optional. The IssuancePolicy to control how Certificates will be issued from this CaPool.
  final IssuancePolicyResponse issuancePolicy;
  /// Optional. Labels with user-defined metadata.
  final Map<String, String> labels;
  /// The resource name for this CaPool in the format `projects/*/locations/*/caPools/*`.
  final String name;
  /// Optional. The PublishingOptions to follow when issuing Certificates from any CertificateAuthority in this CaPool.
  final PublishingOptionsResponse publishingOptions;
  /// Immutable. The Tier of this CaPool.
  final String tier;

  /// Creates a new [GetCaPoolResult].
  /// [issuancePolicy] Optional. The IssuancePolicy to control how Certificates will be issued from this CaPool.
  /// [labels] Optional. Labels with user-defined metadata.
  /// [name] The resource name for this CaPool in the format `projects/*/locations/*/caPools/*`.
  /// [publishingOptions] Optional. The PublishingOptions to follow when issuing Certificates from any CertificateAuthority in this CaPool.
  /// [tier] Immutable. The Tier of this CaPool.
  GetCaPoolResult({
    required this.issuancePolicy,
    required this.labels,
    required this.name,
    required this.publishingOptions,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issuancePolicy': issuancePolicy.toMap(),
      'labels': labels,
      'name': name,
      'publishingOptions': publishingOptions.toMap(),
      'tier': tier,
    };
  }

  factory GetCaPoolResult.fromMap(Map<String, dynamic> map) {
    return GetCaPoolResult(
      issuancePolicy: IssuancePolicyResponse.fromMap((map['issuancePolicy']! as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      publishingOptions: PublishingOptionsResponse.fromMap((map['publishingOptions']! as Map).cast<String, dynamic>()),
      tier: map['tier'] as String,
    );
  }
}

