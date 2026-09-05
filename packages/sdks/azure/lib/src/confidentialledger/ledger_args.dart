// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ledger_azuread_based_service_principal.dart';
import 'ledger_certificate_based_security_principal.dart';

/// {@template pulumi_confidentialledger_ledger_ledger_args_doc}
/// The set of arguments for Ledger.
/// {@endtemplate}
/// {@macro pulumi_confidentialledger_ledger_ledger_args_doc}
class LedgerArgs {
  /// A list of `azureadBasedServicePrincipal` blocks as defined below.
  final pulumi.Input<List<LedgerAzureadBasedServicePrincipal>> azureadBasedServicePrincipals;
  /// A list of `certificateBasedSecurityPrincipal` blocks as defined below.
  final pulumi.Input<List<LedgerCertificateBasedSecurityPrincipal>?>? certificateBasedSecurityPrincipals;
  /// Specifies the type of Confidential Ledger. Possible values are `Private` and `Public`. Changing this forces a new resource to be created.
  final pulumi.Input<String> ledgerType;
  /// Specifies the supported Azure location where the Confidential Ledger exists. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? location;
  /// Specifies the name of the Confidential Ledger. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The name of the Resource Group where the Confidential Ledger exists. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the Confidential Ledger.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [LedgerArgs].
  /// [azureadBasedServicePrincipals] A list of `azureadBasedServicePrincipal` blocks as defined below.
  /// [certificateBasedSecurityPrincipals] A list of `certificateBasedSecurityPrincipal` blocks as defined below.
  /// [ledgerType] Specifies the type of Confidential Ledger. Possible values are `Private` and `Public`. Changing this forces a new resource to be created.
  /// [location] Specifies the supported Azure location where the Confidential Ledger exists. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Confidential Ledger. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Confidential Ledger exists. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the Confidential Ledger.
  const LedgerArgs({
    required this.azureadBasedServicePrincipals,
    this.certificateBasedSecurityPrincipals,
    required this.ledgerType,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureadBasedServicePrincipals': pulumi.Input.mapInputValue<List<LedgerAzureadBasedServicePrincipal>, List<Map<String, dynamic>>>(azureadBasedServicePrincipals, (value) => pulumi.Input.encodeList<LedgerAzureadBasedServicePrincipal, Map<String, dynamic>>(value, (value) => value.toMap())),
      'certificateBasedSecurityPrincipals': ?pulumi.Input.mapOptionalInputValue<List<LedgerCertificateBasedSecurityPrincipal>, List<Map<String, dynamic>>>(certificateBasedSecurityPrincipals, (value) => pulumi.Input.encodeList<LedgerCertificateBasedSecurityPrincipal, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ledgerType': ledgerType,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory LedgerArgs.fromMap(Map<String, dynamic> map) {
    return LedgerArgs(
      azureadBasedServicePrincipals: pulumi.Input.fromValue(pulumi.Input.decodeList<LedgerAzureadBasedServicePrincipal>(map['azureadBasedServicePrincipals']!, (value) => LedgerAzureadBasedServicePrincipal.fromMap((value as Map).cast<String, dynamic>()))),
      certificateBasedSecurityPrincipals: (() { final guardedValue = map['certificateBasedSecurityPrincipals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LedgerCertificateBasedSecurityPrincipal>(guardedValue, (value) => LedgerCertificateBasedSecurityPrincipal.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ledgerType: pulumi.Input.fromValue(map['ledgerType'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
