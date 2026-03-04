// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'anthos_observability_membership_spec_gkehub_v1beta.dart';

/// **Anthos Observability**: Spec
class AnthosObservabilityFeatureSpecGkehubV1beta {
  /// Default membership spec for unconfigured memberships
  final pulumi.Input<AnthosObservabilityMembershipSpecGkehubV1beta>?
  defaultMembershipSpec;

  /// Creates a new [AnthosObservabilityFeatureSpecGkehubV1beta].
  /// [defaultMembershipSpec] Default membership spec for unconfigured memberships
  AnthosObservabilityFeatureSpecGkehubV1beta({this.defaultMembershipSpec});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultMembershipSpec':
          ?pulumi.Input.mapOptionalInputValue<
            AnthosObservabilityMembershipSpecGkehubV1beta,
            Map<String, dynamic>
          >(defaultMembershipSpec, (value) => value.toMap()),
    };
  }

  factory AnthosObservabilityFeatureSpecGkehubV1beta.fromMap(
    Map<String, dynamic> map,
  ) {
    return AnthosObservabilityFeatureSpecGkehubV1beta(
      defaultMembershipSpec: (() {
        final guardedValue = map['defaultMembershipSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AnthosObservabilityMembershipSpecGkehubV1beta.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
