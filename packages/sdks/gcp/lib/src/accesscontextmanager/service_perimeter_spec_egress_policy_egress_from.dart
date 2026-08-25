// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_spec_egress_policy_egress_from_source.dart';

class ServicePerimeterSpecEgressPolicyEgressFrom {
  /// A list of identities that are allowed access through this `EgressPolicy`.
  /// Should be in the format of email address. The email address should
  /// represent individual user or service account only.
  final pulumi.Input<List<String>?>? identities;
  /// Specifies the type of identities that are allowed access to outside the
  /// perimeter. If left unspecified, then members of `identities` field will
  /// be allowed access.
  /// Possible values are: `IDENTITY_TYPE_UNSPECIFIED`, `ANY_IDENTITY`, `ANY_USER_ACCOUNT`, `ANY_SERVICE_ACCOUNT`.
  final pulumi.Input<String?>? identityType;
  /// Whether to enforce traffic restrictions based on `sources` field. If the `sources` field is non-empty, then this field must be set to `SOURCE_RESTRICTION_ENABLED`.
  /// Possible values are: `SOURCE_RESTRICTION_UNSPECIFIED`, `SOURCE_RESTRICTION_ENABLED`, `SOURCE_RESTRICTION_DISABLED`.
  final pulumi.Input<String?>? sourceRestriction;
  /// Sources that this EgressPolicy authorizes access from.
  /// Structure is documented below.
  final pulumi.Input<List<ServicePerimeterSpecEgressPolicyEgressFromSource>?>? sources;

  /// Creates a new [ServicePerimeterSpecEgressPolicyEgressFrom].
  /// [identities] A list of identities that are allowed access through this `EgressPolicy`.
  /// [identityType] Specifies the type of identities that are allowed access to outside the
  /// [sourceRestriction] Whether to enforce traffic restrictions based on `sources` field. If the `sources` field is non-empty, then this field must be set to `SOURCE_RESTRICTION_ENABLED`.
  /// [sources] Sources that this EgressPolicy authorizes access from.
  const ServicePerimeterSpecEgressPolicyEgressFrom({
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
      'sources': ?pulumi.Input.mapOptionalInputValue<List<ServicePerimeterSpecEgressPolicyEgressFromSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<ServicePerimeterSpecEgressPolicyEgressFromSource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ServicePerimeterSpecEgressPolicyEgressFrom.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterSpecEgressPolicyEgressFrom(
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      identityType: (() { final guardedValue = map['identityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceRestriction: (() { final guardedValue = map['sourceRestriction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sources: (() { final guardedValue = map['sources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServicePerimeterSpecEgressPolicyEgressFromSource>(guardedValue, (value) => ServicePerimeterSpecEgressPolicyEgressFromSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
