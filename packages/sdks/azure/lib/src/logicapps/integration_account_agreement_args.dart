// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_account_agreement_guest_identity.dart';
import 'integration_account_agreement_host_identity.dart';

/// {@template pulumi_logicapps_integration_account_agreement_integration_account_agreement_args_doc}
/// The set of arguments for IntegrationAccountAgreement.
/// {@endtemplate}
/// {@macro pulumi_logicapps_integration_account_agreement_integration_account_agreement_args_doc}
class IntegrationAccountAgreementArgs {
  /// The type of the Logic App Integration Account Agreement. Possible values are `AS2`, `X12` and `Edifact`.
  final pulumi.Input<String> agreementType;
  /// The content of the Logic App Integration Account Agreement.
  final pulumi.Input<String> content;
  /// A `guest_identity` block as documented below.
  final pulumi.Input<IntegrationAccountAgreementGuestIdentity> guestIdentity;
  /// The name of the guest Logic App Integration Account Partner.
  final pulumi.Input<String> guestPartnerName;
  /// A `host_identity` block as documented below.
  final pulumi.Input<IntegrationAccountAgreementHostIdentity> hostIdentity;
  /// The name of the host Logic App Integration Account Partner.
  final pulumi.Input<String> hostPartnerName;
  /// The name of the Logic App Integration Account. Changing this forces a new resource to be created.
  final pulumi.Input<String> integrationAccountName;
  /// The metadata of the Logic App Integration Account Agreement.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The name which should be used for this Logic App Integration Account Agreement. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Logic App Integration Account Agreement should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [IntegrationAccountAgreementArgs].
  /// [agreementType] The type of the Logic App Integration Account Agreement. Possible values are `AS2`, `X12` and `Edifact`.
  /// [content] The content of the Logic App Integration Account Agreement.
  /// [guestIdentity] A `guest_identity` block as documented below.
  /// [guestPartnerName] The name of the guest Logic App Integration Account Partner.
  /// [hostIdentity] A `host_identity` block as documented below.
  /// [hostPartnerName] The name of the host Logic App Integration Account Partner.
  /// [integrationAccountName] The name of the Logic App Integration Account. Changing this forces a new resource to be created.
  /// [metadata] The metadata of the Logic App Integration Account Agreement.
  /// [name] The name which should be used for this Logic App Integration Account Agreement. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Logic App Integration Account Agreement should exist. Changing this forces a new resource to be created.
  IntegrationAccountAgreementArgs({
    required this.agreementType,
    required this.content,
    required this.guestIdentity,
    required this.guestPartnerName,
    required this.hostIdentity,
    required this.hostPartnerName,
    required this.integrationAccountName,
    this.metadata,
    this.name,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agreementType': agreementType,
      'content': content,
      'guestIdentity': pulumi.Input.mapInputValue<IntegrationAccountAgreementGuestIdentity, Map<String, dynamic>>(guestIdentity, (value) => value.toMap()),
      'guestPartnerName': guestPartnerName,
      'hostIdentity': pulumi.Input.mapInputValue<IntegrationAccountAgreementHostIdentity, Map<String, dynamic>>(hostIdentity, (value) => value.toMap()),
      'hostPartnerName': hostPartnerName,
      'integrationAccountName': integrationAccountName,
      'metadata': ?metadata,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory IntegrationAccountAgreementArgs.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountAgreementArgs(
      agreementType: (map['agreementType'] as String).input(),
      content: (map['content'] as String).input(),
      guestIdentity: (IntegrationAccountAgreementGuestIdentity.fromMap((map['guestIdentity'] as Map).cast<String, dynamic>())).input(),
      guestPartnerName: (map['guestPartnerName'] as String).input(),
      hostIdentity: (IntegrationAccountAgreementHostIdentity.fromMap((map['hostIdentity'] as Map).cast<String, dynamic>())).input(),
      hostPartnerName: (map['hostPartnerName'] as String).input(),
      integrationAccountName: (map['integrationAccountName'] as String).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata'] as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

