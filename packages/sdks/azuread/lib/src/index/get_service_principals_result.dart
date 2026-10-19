// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_principals_service_principal.dart';

/// Result data returned by getServicePrincipals.
class GetServicePrincipalsResult {
  /// The client ID of the application associated with this service principal.
  final List<String>? clientIds;
  /// A list of display names of the applications associated with the service principals.
  final List<String>? displayNames;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final bool? ignoreMissing;
  /// The object IDs of the service principals.
  final List<String>? objectIds;
  final bool? returnAll;
  /// A list of service principals. Each `servicePrincipal` object provides the attributes documented below.
  final List<GetServicePrincipalsServicePrincipal>? servicePrincipals;

  /// Creates a new [GetServicePrincipalsResult].
  /// [clientIds] The client ID of the application associated with this service principal.
  /// [displayNames] A list of display names of the applications associated with the service principals.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ignoreMissing] Optional.
  /// [objectIds] The object IDs of the service principals.
  /// [returnAll] Optional.
  /// [servicePrincipals] A list of service principals. Each `servicePrincipal` object provides the attributes documented below.
  const GetServicePrincipalsResult({
    this.clientIds,
    this.displayNames,
    this.id,
    this.ignoreMissing,
    this.objectIds,
    this.returnAll,
    this.servicePrincipals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientIds': ?clientIds,
      'displayNames': ?displayNames,
      'id': ?id,
      'ignoreMissing': ?ignoreMissing,
      'objectIds': ?objectIds,
      'returnAll': ?returnAll,
      'servicePrincipals': ?(() { final guardedValue = servicePrincipals; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetServicePrincipalsServicePrincipal, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetServicePrincipalsResult.fromMap(Map<String, dynamic> map) {
    return GetServicePrincipalsResult(
      clientIds: (() { final guardedValue = map['clientIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      displayNames: (() { final guardedValue = map['displayNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ignoreMissing: (() { final guardedValue = map['ignoreMissing']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      objectIds: (() { final guardedValue = map['objectIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      returnAll: (() { final guardedValue = map['returnAll']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      servicePrincipals: (() { final guardedValue = map['servicePrincipals']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetServicePrincipalsServicePrincipal>(guardedValue, (value) => GetServicePrincipalsServicePrincipal.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
