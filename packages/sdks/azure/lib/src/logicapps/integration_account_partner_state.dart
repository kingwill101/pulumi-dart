// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_account_partner_business_identity.dart';

/// Input properties used for looking up and filtering IntegrationAccountPartner resources.
class IntegrationAccountPartnerState {
  /// A `business_identity` block as documented below.
  final pulumi.Input<List<IntegrationAccountPartnerBusinessIdentity>>? businessIdentities;
  /// The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Partner to be created.
  final pulumi.Input<String>? integrationAccountName;
  /// A JSON mapping of any Metadata for this Logic App Integration Account Partner.
  final pulumi.Input<String>? metadata;
  /// The name which should be used for this Logic App Integration Account Partner. Changing this forces a new Logic App Integration Account Partner to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where the Logic App Integration Account Partner should exist. Changing this forces a new Logic App Integration Account Partner to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// Creates a new [IntegrationAccountPartnerState].
  /// [businessIdentities] A `business_identity` block as documented below.
  /// [integrationAccountName] The name of the Logic App Integration Account. Changing this forces a new Logic App Integration Account Partner to be created.
  /// [metadata] A JSON mapping of any Metadata for this Logic App Integration Account Partner.
  /// [name] The name which should be used for this Logic App Integration Account Partner. Changing this forces a new Logic App Integration Account Partner to be created.
  /// [resourceGroupName] The name of the Resource Group where the Logic App Integration Account Partner should exist. Changing this forces a new Logic App Integration Account Partner to be created.
  IntegrationAccountPartnerState({
    this.businessIdentities,
    this.integrationAccountName,
    this.metadata,
    this.name,
    this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'businessIdentities': ?pulumi.Input.mapOptionalInputValue<List<IntegrationAccountPartnerBusinessIdentity>, List<Map<String, dynamic>>>(businessIdentities, (value) => pulumi.Input.encodeList<IntegrationAccountPartnerBusinessIdentity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'integrationAccountName': ?integrationAccountName,
      'metadata': ?metadata,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
    };
  }

  factory IntegrationAccountPartnerState.fromMap(Map<String, dynamic> map) {
    return IntegrationAccountPartnerState(
      businessIdentities: map['businessIdentities'] == null ? null : (pulumi.Input.decodeList<IntegrationAccountPartnerBusinessIdentity>(map['businessIdentities']!, (value) => IntegrationAccountPartnerBusinessIdentity.fromMap((value as Map).cast<String, dynamic>()))).input(),
      integrationAccountName: map['integrationAccountName'] == null ? null : (map['integrationAccountName']! as String).input(),
      metadata: map['metadata'] == null ? null : (map['metadata']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
    );
  }
}

