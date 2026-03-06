// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'anthos_observability_membership_spec_response.dart';

/// **Anthos Observability**: Spec
class AnthosObservabilityFeatureSpecResponse {
  /// Default membership spec for unconfigured memberships
  final pulumi.Input<AnthosObservabilityMembershipSpecResponse> defaultMembershipSpec;

  /// Creates a new [AnthosObservabilityFeatureSpecResponse].
  /// [defaultMembershipSpec] Default membership spec for unconfigured memberships
  const AnthosObservabilityFeatureSpecResponse({
    required this.defaultMembershipSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultMembershipSpec': pulumi.Input.mapInputValue<AnthosObservabilityMembershipSpecResponse, Map<String, dynamic>>(defaultMembershipSpec, (value) => value.toMap()),
    };
  }

  factory AnthosObservabilityFeatureSpecResponse.fromMap(Map<String, dynamic> map) {
    return AnthosObservabilityFeatureSpecResponse(
      defaultMembershipSpec: pulumi.Input.fromValue(AnthosObservabilityMembershipSpecResponse.fromMap((map['defaultMembershipSpec']! as Map).cast<String, dynamic>())),
    );
  }
}

