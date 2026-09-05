// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_confidential_ledger_azuread_based_service_principal.dart';
import 'get_confidential_ledger_certificate_based_security_principal.dart';

/// Result data returned by getConfidentialLedger.
class GetConfidentialLedgerResult {
  final List<GetConfidentialLedgerAzureadBasedServicePrincipal>? azureadBasedServicePrincipals;
  final List<GetConfidentialLedgerCertificateBasedSecurityPrincipal>? certificateBasedSecurityPrincipals;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The Identity Service Endpoint for this Confidential Ledger.
  final String? identityServiceEndpoint;
  /// The Endpoint for this Confidential Ledger.
  final String? ledgerEndpoint;
  /// The type of Confidential Ledger.
  final String? ledgerType;
  /// The supported Azure location where the Confidential Ledger exists.
  final String? location;
  final String? name;
  final String? resourceGroupName;
  /// A mapping of tags to assign to the Confidential Ledger.
  final Map<String, String>? tags;

  /// Creates a new [GetConfidentialLedgerResult].
  /// [azureadBasedServicePrincipals] Optional.
  /// [certificateBasedSecurityPrincipals] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identityServiceEndpoint] The Identity Service Endpoint for this Confidential Ledger.
  /// [ledgerEndpoint] The Endpoint for this Confidential Ledger.
  /// [ledgerType] The type of Confidential Ledger.
  /// [location] The supported Azure location where the Confidential Ledger exists.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [tags] A mapping of tags to assign to the Confidential Ledger.
  const GetConfidentialLedgerResult({
    this.azureadBasedServicePrincipals,
    this.certificateBasedSecurityPrincipals,
    this.id,
    this.identityServiceEndpoint,
    this.ledgerEndpoint,
    this.ledgerType,
    this.location,
    this.name,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureadBasedServicePrincipals': ?(() { final guardedValue = azureadBasedServicePrincipals; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConfidentialLedgerAzureadBasedServicePrincipal, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'certificateBasedSecurityPrincipals': ?(() { final guardedValue = certificateBasedSecurityPrincipals; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConfidentialLedgerCertificateBasedSecurityPrincipal, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'identityServiceEndpoint': ?identityServiceEndpoint,
      'ledgerEndpoint': ?ledgerEndpoint,
      'ledgerType': ?ledgerType,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory GetConfidentialLedgerResult.fromMap(Map<String, dynamic> map) {
    return GetConfidentialLedgerResult(
      azureadBasedServicePrincipals: (() { final guardedValue = map['azureadBasedServicePrincipals']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConfidentialLedgerAzureadBasedServicePrincipal>(guardedValue, (value) => GetConfidentialLedgerAzureadBasedServicePrincipal.fromMap((value as Map).cast<String, dynamic>())); })(),
      certificateBasedSecurityPrincipals: (() { final guardedValue = map['certificateBasedSecurityPrincipals']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConfidentialLedgerCertificateBasedSecurityPrincipal>(guardedValue, (value) => GetConfidentialLedgerCertificateBasedSecurityPrincipal.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identityServiceEndpoint: (() { final guardedValue = map['identityServiceEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ledgerEndpoint: (() { final guardedValue = map['ledgerEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ledgerType: (() { final guardedValue = map['ledgerType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
