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
    pulumi.Output<List<LedgerAzureadBasedServicePrincipal>>? azureadBasedServicePrincipals,
    pulumi.Output<List<LedgerCertificateBasedSecurityPrincipal>>? certificateBasedSecurityPrincipals,
    pulumi.Output<String>? identityServiceEndpoint,
    pulumi.Output<String>? ledgerEndpoint,
    pulumi.Output<String>? ledgerType,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      azureadBasedServicePrincipals = pulumi.Input.asOptionalInput<List<LedgerAzureadBasedServicePrincipal>>(azureadBasedServicePrincipals),
      certificateBasedSecurityPrincipals = pulumi.Input.asOptionalInput<List<LedgerCertificateBasedSecurityPrincipal>>(certificateBasedSecurityPrincipals),
      identityServiceEndpoint = pulumi.Input.asOptionalInput<String>(identityServiceEndpoint),
      ledgerEndpoint = pulumi.Input.asOptionalInput<String>(ledgerEndpoint),
      ledgerType = pulumi.Input.asOptionalInput<String>(ledgerType),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      azureadBasedServicePrincipals: map['azureadBasedServicePrincipals'] == null ? null : pulumi.Output.create<List<LedgerAzureadBasedServicePrincipal>>(pulumi.Input.decodeList<LedgerAzureadBasedServicePrincipal>(map['azureadBasedServicePrincipals'], (value) => LedgerAzureadBasedServicePrincipal.fromMap((value as Map).cast<String, dynamic>()))),
      certificateBasedSecurityPrincipals: map['certificateBasedSecurityPrincipals'] == null ? null : pulumi.Output.create<List<LedgerCertificateBasedSecurityPrincipal>>(pulumi.Input.decodeList<LedgerCertificateBasedSecurityPrincipal>(map['certificateBasedSecurityPrincipals'], (value) => LedgerCertificateBasedSecurityPrincipal.fromMap((value as Map).cast<String, dynamic>()))),
      identityServiceEndpoint: map['identityServiceEndpoint'] == null ? null : pulumi.Output.create<String>(map['identityServiceEndpoint'] as String),
      ledgerEndpoint: map['ledgerEndpoint'] == null ? null : pulumi.Output.create<String>(map['ledgerEndpoint'] as String),
      ledgerType: map['ledgerType'] == null ? null : pulumi.Output.create<String>(map['ledgerType'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

