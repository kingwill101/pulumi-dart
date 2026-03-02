// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_perimeters_service_perimeter_status_ingress_policy_ingress_from_source.dart';

class ServicePerimetersServicePerimeterStatusIngressPolicyIngressFrom {
  /// A list of identities that are allowed access through this ingress policy.
  /// Should be in the format of email address. The email address should represent
  /// individual user or service account only.
  final pulumi.Input<List<String>>? identities;
  /// Specifies the type of identities that are allowed access from outside the
  /// perimeter. If left unspecified, then members of `identities` field will be
  /// allowed access.
  /// Possible values are: `IDENTITY_TYPE_UNSPECIFIED`, `ANY_IDENTITY`, `ANY_USER_ACCOUNT`, `ANY_SERVICE_ACCOUNT`.
  final pulumi.Input<String>? identityType;
  /// Sources that this `IngressPolicy` authorizes access from.
  /// Structure is documented below.
  final pulumi.Input<List<ServicePerimetersServicePerimeterStatusIngressPolicyIngressFromSource>>? sources;

  /// Creates a new [ServicePerimetersServicePerimeterStatusIngressPolicyIngressFrom].
  /// [identities] A list of identities that are allowed access through this ingress policy.
  /// [identityType] Specifies the type of identities that are allowed access from outside the
  /// [sources] Sources that this `IngressPolicy` authorizes access from.
  ServicePerimetersServicePerimeterStatusIngressPolicyIngressFrom({
    this.identities,
    this.identityType,
    this.sources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identities': ?identities,
      'identityType': ?identityType,
      'sources': ?pulumi.Input.mapOptionalInputValue<List<ServicePerimetersServicePerimeterStatusIngressPolicyIngressFromSource>, List<Map<String, dynamic>>>(sources, (value) => pulumi.Input.encodeList<ServicePerimetersServicePerimeterStatusIngressPolicyIngressFromSource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ServicePerimetersServicePerimeterStatusIngressPolicyIngressFrom.fromMap(Map<String, dynamic> map) {
    return ServicePerimetersServicePerimeterStatusIngressPolicyIngressFrom(
      identities: map['identities'] == null ? null : ((map['identities']! as List).cast<String>()).input(),
      identityType: map['identityType'] == null ? null : (map['identityType']! as String).input(),
      sources: map['sources'] == null ? null : (pulumi.Input.decodeList<ServicePerimetersServicePerimeterStatusIngressPolicyIngressFromSource>(map['sources']!, (value) => ServicePerimetersServicePerimeterStatusIngressPolicyIngressFromSource.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

