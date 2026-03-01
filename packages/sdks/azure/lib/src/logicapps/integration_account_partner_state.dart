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
    pulumi.Output<List<IntegrationAccountPartnerBusinessIdentity>>? businessIdentities,
    pulumi.Output<String>? integrationAccountName,
    pulumi.Output<String>? metadata,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
  }) :
      businessIdentities = pulumi.Input.asOptionalInput<List<IntegrationAccountPartnerBusinessIdentity>>(businessIdentities),
      integrationAccountName = pulumi.Input.asOptionalInput<String>(integrationAccountName),
      metadata = pulumi.Input.asOptionalInput<String>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName);

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
      businessIdentities: map['businessIdentities'] == null ? null : pulumi.Output.create<List<IntegrationAccountPartnerBusinessIdentity>>(pulumi.Input.decodeList<IntegrationAccountPartnerBusinessIdentity>(map['businessIdentities'], (value) => IntegrationAccountPartnerBusinessIdentity.fromMap((value as Map).cast<String, dynamic>()))),
      integrationAccountName: map['integrationAccountName'] == null ? null : pulumi.Output.create<String>(map['integrationAccountName'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<String>(map['metadata'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

