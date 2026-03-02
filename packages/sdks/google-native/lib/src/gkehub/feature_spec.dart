// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'feature_spec_provision_google_ca.dart';
import 'membership_spec.dart';

/// **Workload Certificate**: The Hub-wide input for the WorkloadCertificate feature.
class FeatureSpec {
  /// Specifies default membership spec. Users can override the default in the member_configs for each member.
  final pulumi.Input<MembershipSpec>? defaultConfig;
  /// Immutable. Specifies CA configuration.
  final pulumi.Input<FeatureSpecProvisionGoogleCa>? provisionGoogleCa;

  /// Creates a new [FeatureSpec].
  /// [defaultConfig] Specifies default membership spec. Users can override the default in the member_configs for each member.
  /// [provisionGoogleCa] Immutable. Specifies CA configuration.
  FeatureSpec({
    this.defaultConfig,
    this.provisionGoogleCa,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultConfig': ?pulumi.Input.mapOptionalInputValue<MembershipSpec, Map<String, dynamic>>(defaultConfig, (value) => value.toMap()),
      'provisionGoogleCa': ?pulumi.Input.mapOptionalInputValue<FeatureSpecProvisionGoogleCa, String>(provisionGoogleCa, (value) => value.value),
    };
  }

  factory FeatureSpec.fromMap(Map<String, dynamic> map) {
    return FeatureSpec(
      defaultConfig: map['defaultConfig'] == null ? null : (MembershipSpec.fromMap((map['defaultConfig']! as Map).cast<String, dynamic>())).input(),
      provisionGoogleCa: map['provisionGoogleCa'] == null ? null : (FeatureSpecProvisionGoogleCa.fromValue(map['provisionGoogleCa']! as String)).input(),
    );
  }
}

