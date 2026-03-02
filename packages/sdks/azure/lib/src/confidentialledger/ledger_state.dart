// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ledger_azuread_based_service_principal.dart';
import 'ledger_certificate_based_security_principal.dart';

/// Input properties used for looking up and filtering Ledger resources.
class LedgerState {
  /// A list of `azuread_based_service_principal` blocks as defined below.
  final pulumi.Input<List<LedgerAzureadBasedServicePrincipal>>? azureadBasedServicePrincipals;
  /// A list of `certificate_based_security_principal` blocks as defined below.
  final pulumi.Input<List<LedgerCertificateBasedSecurityPrincipal>>? certificateBasedSecurityPrincipals;
  /// The Identity Service Endpoint for this Confidential Ledger.
  final pulumi.Input<String>? identityServiceEndpoint;
  /// The Endpoint for this Confidential Ledger.
  final pulumi.Input<String>? ledgerEndpoint;
  /// Specifies the type of Confidential Ledger. Possible values are `Private` and `Public`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? ledgerType;
  /// Specifies the supported Azure location where the Confidential Ledger exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name of the Confidential Ledger. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Confidential Ledger exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags to assign to the Confidential Ledger.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LedgerState].
  /// [azureadBasedServicePrincipals] A list of `azuread_based_service_principal` blocks as defined below.
  /// [certificateBasedSecurityPrincipals] A list of `certificate_based_security_principal` blocks as defined below.
  /// [identityServiceEndpoint] The Identity Service Endpoint for this Confidential Ledger.
  /// [ledgerEndpoint] The Endpoint for this Confidential Ledger.
  /// [ledgerType] Specifies the type of Confidential Ledger. Possible values are `Private` and `Public`. Changing this forces a new resource to be created.
  /// [location] Specifies the supported Azure location where the Confidential Ledger exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Confidential Ledger. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Confidential Ledger exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the Confidential Ledger.
  LedgerState({
    this.azureadBasedServicePrincipals,
    this.certificateBasedSecurityPrincipals,
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
      'azureadBasedServicePrincipals': ?pulumi.Input.mapOptionalInputValue<List<LedgerAzureadBasedServicePrincipal>, List<Map<String, dynamic>>>(azureadBasedServicePrincipals, (value) => pulumi.Input.encodeList<LedgerAzureadBasedServicePrincipal, Map<String, dynamic>>(value, (value) => value.toMap())),
      'certificateBasedSecurityPrincipals': ?pulumi.Input.mapOptionalInputValue<List<LedgerCertificateBasedSecurityPrincipal>, List<Map<String, dynamic>>>(certificateBasedSecurityPrincipals, (value) => pulumi.Input.encodeList<LedgerCertificateBasedSecurityPrincipal, Map<String, dynamic>>(value, (value) => value.toMap())),
      'identityServiceEndpoint': ?identityServiceEndpoint,
      'ledgerEndpoint': ?ledgerEndpoint,
      'ledgerType': ?ledgerType,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory LedgerState.fromMap(Map<String, dynamic> map) {
    return LedgerState(
      azureadBasedServicePrincipals: map['azureadBasedServicePrincipals'] == null ? null : (pulumi.Input.decodeList<LedgerAzureadBasedServicePrincipal>(map['azureadBasedServicePrincipals'], (value) => LedgerAzureadBasedServicePrincipal.fromMap((value as Map).cast<String, dynamic>()))).input(),
      certificateBasedSecurityPrincipals: map['certificateBasedSecurityPrincipals'] == null ? null : (pulumi.Input.decodeList<LedgerCertificateBasedSecurityPrincipal>(map['certificateBasedSecurityPrincipals'], (value) => LedgerCertificateBasedSecurityPrincipal.fromMap((value as Map).cast<String, dynamic>()))).input(),
      identityServiceEndpoint: map['identityServiceEndpoint'] == null ? null : (map['identityServiceEndpoint'] as String).input(),
      ledgerEndpoint: map['ledgerEndpoint'] == null ? null : (map['ledgerEndpoint'] as String).input(),
      ledgerType: map['ledgerType'] == null ? null : (map['ledgerType'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

