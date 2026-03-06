// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'membership_spec_response.dart';

/// **Workload Certificate**: The Hub-wide input for the WorkloadCertificate feature.
class FeatureSpecResponse {
  /// Specifies default membership spec. Users can override the default in the member_configs for each member.
  final pulumi.Input<MembershipSpecResponse> defaultConfig;
  /// Immutable. Specifies CA configuration.
  final pulumi.Input<String> provisionGoogleCa;

  /// Creates a new [FeatureSpecResponse].
  /// [defaultConfig] Specifies default membership spec. Users can override the default in the member_configs for each member.
  /// [provisionGoogleCa] Immutable. Specifies CA configuration.
  const FeatureSpecResponse({
    required this.defaultConfig,
    required this.provisionGoogleCa,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultConfig': pulumi.Input.mapInputValue<MembershipSpecResponse, Map<String, dynamic>>(defaultConfig, (value) => value.toMap()),
      'provisionGoogleCa': provisionGoogleCa,
    };
  }

  factory FeatureSpecResponse.fromMap(Map<String, dynamic> map) {
    return FeatureSpecResponse(
      defaultConfig: pulumi.Input.fromValue(MembershipSpecResponse.fromMap((map['defaultConfig']! as Map).cast<String, dynamic>())),
      provisionGoogleCa: pulumi.Input.fromValue(map['provisionGoogleCa'] as String),
    );
  }
}

