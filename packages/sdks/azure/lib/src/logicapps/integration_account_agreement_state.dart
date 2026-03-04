// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_account_agreement_guest_identity.dart';
import 'integration_account_agreement_host_identity.dart';

/// Input properties used for looking up and filtering IntegrationAccountAgreement resources.
class IntegrationAccountAgreementState {
  /// The type of the Logic App Integration Account Agreement. Possible values are `AS2`, `X12` and `Edifact`.
  final pulumi.Input<String>? agreementType;

  /// The content of the Logic App Integration Account Agreement.
  final pulumi.Input<String>? content;

  /// A `guest_identity` block as documented below.
  final pulumi.Input<IntegrationAccountAgreementGuestIdentity>? guestIdentity;

  /// The name of the guest Logic App Integration Account Partner.
  final pulumi.Input<String>? guestPartnerName;

  /// A `host_identity` block as documented below.
  final pulumi.Input<IntegrationAccountAgreementHostIdentity>? hostIdentity;

  /// The name of the host Logic App Integration Account Partner.
  final pulumi.Input<String>? hostPartnerName;

  /// The name of the Logic App Integration Account. Changing this forces a new resource to be created.
  final pulumi.Input<String>? integrationAccountName;

  /// The metadata of the Logic App Integration Account Agreement.
  final pulumi.Input<Map<String, String>>? metadata;

  /// The name which should be used for this Logic App Integration Account Agreement. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// The name of the Resource Group where the Logic App Integration Account Agreement should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [IntegrationAccountAgreementState].
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
  IntegrationAccountAgreementState({
    this.agreementType,
    this.content,
    this.guestIdentity,
    this.guestPartnerName,
    this.hostIdentity,
    this.hostPartnerName,
    this.integrationAccountName,
    this.metadata,
    this.name,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agreementType': ?agreementType,
      'content': ?content,
      'guestIdentity':
          ?pulumi.Input.mapOptionalInputValue<
            IntegrationAccountAgreementGuestIdentity,
            Map<String, dynamic>
          >(guestIdentity, (value) => value.toMap()),
      'guestPartnerName': ?guestPartnerName,
      'hostIdentity':
          ?pulumi.Input.mapOptionalInputValue<
            IntegrationAccountAgreementHostIdentity,
            Map<String, dynamic>
          >(hostIdentity, (value) => value.toMap()),
      'hostPartnerName': ?hostPartnerName,
      'integrationAccountName': ?integrationAccountName,
      'metadata': ?metadata,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory IntegrationAccountAgreementState.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountAgreementState(
      agreementType: (() {
        final guardedValue = map['agreementType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      content: (() {
        final guardedValue = map['content'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      guestIdentity: (() {
        final guardedValue = map['guestIdentity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IntegrationAccountAgreementGuestIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      guestPartnerName: (() {
        final guardedValue = map['guestPartnerName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hostIdentity: (() {
        final guardedValue = map['hostIdentity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IntegrationAccountAgreementHostIdentity.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      hostPartnerName: (() {
        final guardedValue = map['hostPartnerName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      integrationAccountName: (() {
        final guardedValue = map['integrationAccountName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      metadata: (() {
        final guardedValue = map['metadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
