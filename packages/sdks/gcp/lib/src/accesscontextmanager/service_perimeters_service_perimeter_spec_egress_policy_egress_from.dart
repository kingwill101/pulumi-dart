// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeters_service_perimeter_spec_egress_policy_egress_from_source.dart';

class ServicePerimetersServicePerimeterSpecEgressPolicyEgressFrom {
  /// Identities can be an individual user, service account, Google group,
  /// or third-party identity. For third-party identity, only single identities
  /// are supported and other identity types are not supported.The v1 identities
  /// that have the prefix user, group and serviceAccount in
  /// https://cloud.google.com/iam/docs/principal-identifiers#v1 are supported.
  final pulumi.Input<List<String>>? identities;

  /// Specifies the type of identities that are allowed access to outside the
  /// perimeter. If left unspecified, then members of `identities` field will
  /// be allowed access.
  /// Possible values are: `IDENTITY_TYPE_UNSPECIFIED`, `ANY_IDENTITY`, `ANY_USER_ACCOUNT`, `ANY_SERVICE_ACCOUNT`.
  final pulumi.Input<String>? identityType;

  /// Whether to enforce traffic restrictions based on `sources` field. If the `sources` field is non-empty, then this field must be set to `SOURCE_RESTRICTION_ENABLED`.
  /// Possible values are: `SOURCE_RESTRICTION_UNSPECIFIED`, `SOURCE_RESTRICTION_ENABLED`, `SOURCE_RESTRICTION_DISABLED`.
  final pulumi.Input<String>? sourceRestriction;

  /// Sources that this EgressPolicy authorizes access from.
  /// Structure is documented below.
  final pulumi.Input<
    List<ServicePerimetersServicePerimeterSpecEgressPolicyEgressFromSource>
  >?
  sources;

  /// Creates a new [ServicePerimetersServicePerimeterSpecEgressPolicyEgressFrom].
  /// [identities] Identities can be an individual user, service account, Google group,
  /// [identityType] Specifies the type of identities that are allowed access to outside the
  /// [sourceRestriction] Whether to enforce traffic restrictions based on `sources` field. If the `sources` field is non-empty, then this field must be set to `SOURCE_RESTRICTION_ENABLED`.
  /// [sources] Sources that this EgressPolicy authorizes access from.
  ServicePerimetersServicePerimeterSpecEgressPolicyEgressFrom({
    this.identities,
    this.identityType,
    this.sourceRestriction,
    this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identities': ?identities,
      'identityType': ?identityType,
      'sourceRestriction': ?sourceRestriction,
      'sources':
          ?pulumi.Input.mapOptionalInputValue<
            List<
              ServicePerimetersServicePerimeterSpecEgressPolicyEgressFromSource
            >,
            List<Map<String, dynamic>>
          >(
            sources,
            (value) =>
                pulumi.Input.encodeList<
                  ServicePerimetersServicePerimeterSpecEgressPolicyEgressFromSource,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ServicePerimetersServicePerimeterSpecEgressPolicyEgressFrom.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServicePerimetersServicePerimeterSpecEgressPolicyEgressFrom(
      identities: (() {
        final guardedValue = map['identities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      identityType: (() {
        final guardedValue = map['identityType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceRestriction: (() {
        final guardedValue = map['sourceRestriction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sources: (() {
        final guardedValue = map['sources'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ServicePerimetersServicePerimeterSpecEgressPolicyEgressFromSource
          >(
            guardedValue,
            (value) =>
                ServicePerimetersServicePerimeterSpecEgressPolicyEgressFromSource.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
    );
  }
}
