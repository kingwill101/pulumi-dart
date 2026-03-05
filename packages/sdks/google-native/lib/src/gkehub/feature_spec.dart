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
      'provisionGoogleCa': ?pulumi.Input.mapOptionalInputValue<FeatureSpecProvisionGoogleCa, String>(provisionGoogleCa, (value) => value.wireValue),
    };
  }

  factory FeatureSpec.fromMap(Map<String, dynamic> map) {
    return FeatureSpec(
      defaultConfig: (() { final guardedValue = map['defaultConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MembershipSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      provisionGoogleCa: (() { final guardedValue = map['provisionGoogleCa']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FeatureSpecProvisionGoogleCa.fromValue(guardedValue as String)); })(),
    );
  }
}

