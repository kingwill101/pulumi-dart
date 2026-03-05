// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'anthos_observability_membership_spec_response_gkehub_v1beta.dart';

/// **Anthos Observability**: Spec
class AnthosObservabilityFeatureSpecResponseGkehubV1beta {
  /// Default membership spec for unconfigured memberships
  final pulumi.Input<AnthosObservabilityMembershipSpecResponseGkehubV1beta> defaultMembershipSpec;

  /// Creates a new [AnthosObservabilityFeatureSpecResponseGkehubV1beta].
  /// [defaultMembershipSpec] Default membership spec for unconfigured memberships
  AnthosObservabilityFeatureSpecResponseGkehubV1beta({
    required this.defaultMembershipSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultMembershipSpec': pulumi.Input.mapInputValue<AnthosObservabilityMembershipSpecResponseGkehubV1beta, Map<String, dynamic>>(defaultMembershipSpec, (value) => value.toMap()),
    };
  }

  factory AnthosObservabilityFeatureSpecResponseGkehubV1beta.fromMap(Map<String, dynamic> map) {
    return AnthosObservabilityFeatureSpecResponseGkehubV1beta(
      defaultMembershipSpec: pulumi.Input.fromValue(AnthosObservabilityMembershipSpecResponseGkehubV1beta.fromMap((map['defaultMembershipSpec']! as Map).cast<String, dynamic>())),
    );
  }
}

