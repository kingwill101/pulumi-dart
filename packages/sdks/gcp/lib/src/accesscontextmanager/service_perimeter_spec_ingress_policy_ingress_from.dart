// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeter_spec_ingress_policy_ingress_from_source.dart';

class ServicePerimeterSpecIngressPolicyIngressFrom {
  /// A list of identities that are allowed access through this ingress policy.
  /// Should be in the format of email address. The email address should represent
  /// individual user or service account only.
  final pulumi.Input<List<String>?>? identities;
  /// Specifies the type of identities that are allowed access from outside the
  /// perimeter. If left unspecified, then members of `identities` field will be
  /// allowed access.
  /// Possible values are: `IDENTITY_TYPE_UNSPECIFIED`, `ANY_IDENTITY`, `ANY_USER_ACCOUNT`, `ANY_SERVICE_ACCOUNT`.
  final pulumi.Input<String?>? identityType;
  /// Sources that this `IngressPolicy` authorizes access from.
  /// Structure is documented below.
  final pulumi.Input<List<ServicePerimeterSpecIngressPolicyIngressFromSource>?>? sources;

  /// Creates a new [ServicePerimeterSpecIngressPolicyIngressFrom].
  /// [identities] A list of identities that are allowed access through this ingress policy.
  /// [identityType] Specifies the type of identities that are allowed access from outside the
  /// [sources] Sources that this `IngressPolicy` authorizes access from.
  const ServicePerimeterSpecIngressPolicyIngressFrom({
    this.identities,
    this.identityType,
    this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identities': ?identities,
      'identityType': ?identityType,
      'sources': ?pulumi.Input.mapOptionalInputValue<List<ServicePerimeterSpecIngressPolicyIngressFromSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<ServicePerimeterSpecIngressPolicyIngressFromSource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ServicePerimeterSpecIngressPolicyIngressFrom.fromMap(Map<String, dynamic> map) {
    return ServicePerimeterSpecIngressPolicyIngressFrom(
      identities: (() { final guardedValue = map['identities']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      identityType: (() { final guardedValue = map['identityType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sources: (() { final guardedValue = map['sources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServicePerimeterSpecIngressPolicyIngressFromSource>(guardedValue, (value) => ServicePerimeterSpecIngressPolicyIngressFromSource.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
