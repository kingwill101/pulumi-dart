// ignore_for_file: unused_element, unnecessary_cast

import 'issuance_policy_response.dart';
import 'publishing_options_response.dart';

/// Result data returned by getCaPool.
class GetCaPoolResult {
  /// Optional. The IssuancePolicy to control how Certificates will be issued from this CaPool.
  final IssuancePolicyResponse? issuancePolicy;
  /// Optional. Labels with user-defined metadata.
  final Map<String, String>? labels;
  /// The resource name for this CaPool in the format `projects/*/locations/*/caPools/*`.
  final String? name;
  /// Optional. The PublishingOptions to follow when issuing Certificates from any CertificateAuthority in this CaPool.
  final PublishingOptionsResponse? publishingOptions;
  /// Immutable. The Tier of this CaPool.
  final String? tier;

  /// Creates a new [GetCaPoolResult].
  /// [issuancePolicy] Optional. The IssuancePolicy to control how Certificates will be issued from this CaPool.
  /// [labels] Optional. Labels with user-defined metadata.
  /// [name] The resource name for this CaPool in the format `projects/*/locations/*/caPools/*`.
  /// [publishingOptions] Optional. The PublishingOptions to follow when issuing Certificates from any CertificateAuthority in this CaPool.
  /// [tier] Immutable. The Tier of this CaPool.
  const GetCaPoolResult({
    this.issuancePolicy,
    this.labels,
    this.name,
    this.publishingOptions,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'issuancePolicy': ?issuancePolicy?.toMap(),
      'labels': ?labels,
      'name': ?name,
      'publishingOptions': ?publishingOptions?.toMap(),
      'tier': ?tier,
    };
  }

  factory GetCaPoolResult.fromMap(Map<String, dynamic> map) {
    return GetCaPoolResult(
      issuancePolicy: (() { final guardedValue = map['issuancePolicy']; if (guardedValue == null) return null; return IssuancePolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      publishingOptions: (() { final guardedValue = map['publishingOptions']; if (guardedValue == null) return null; return PublishingOptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
