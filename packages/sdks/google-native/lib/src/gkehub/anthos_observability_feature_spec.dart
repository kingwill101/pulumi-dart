// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'anthos_observability_membership_spec.dart';

/// **Anthos Observability**: Spec
class AnthosObservabilityFeatureSpec {
  /// Default membership spec for unconfigured memberships
  final pulumi.Input<AnthosObservabilityMembershipSpec>? defaultMembershipSpec;

  /// Creates a new [AnthosObservabilityFeatureSpec].
  /// [defaultMembershipSpec] Default membership spec for unconfigured memberships
  AnthosObservabilityFeatureSpec({this.defaultMembershipSpec});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultMembershipSpec':
          ?pulumi.Input.mapOptionalInputValue<
            AnthosObservabilityMembershipSpec,
            Map<String, dynamic>
          >(defaultMembershipSpec, (value) => value.toMap()),
    };
  }

  factory AnthosObservabilityFeatureSpec.fromMap(Map<String, dynamic> map) {
    return AnthosObservabilityFeatureSpec(
      defaultMembershipSpec: (() {
        final guardedValue = map['defaultMembershipSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AnthosObservabilityMembershipSpec.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
