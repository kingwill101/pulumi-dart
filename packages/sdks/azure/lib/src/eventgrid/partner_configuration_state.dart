// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'partner_configuration_partner_authorization.dart';

/// Input properties used for looking up and filtering PartnerConfiguration resources.
class PartnerConfigurationState {
  /// Time used to validate the authorization expiration time for each authorized partner. Defaults to `7`.
  final pulumi.Input<int>? defaultMaximumExpirationTimeInDays;
  /// One or more `partner_authorization` blocks as defined below.
  final pulumi.Input<List<PartnerConfigurationPartnerAuthorization>>? partnerAuthorizations;
  /// The name of the Resource Group where the Event Grid Partner Configuration should exist. Changing this forces a new Event Grid Partner Configuration to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Event Grid Partner Configuration.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [PartnerConfigurationState].
  /// [defaultMaximumExpirationTimeInDays] Time used to validate the authorization expiration time for each authorized partner. Defaults to `7`.
  /// [partnerAuthorizations] One or more `partner_authorization` blocks as defined below.
  /// [resourceGroupName] The name of the Resource Group where the Event Grid Partner Configuration should exist. Changing this forces a new Event Grid Partner Configuration to be created.
  /// [tags] A mapping of tags which should be assigned to the Event Grid Partner Configuration.
  const PartnerConfigurationState({
    this.defaultMaximumExpirationTimeInDays,
    this.partnerAuthorizations,
    this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultMaximumExpirationTimeInDays': ?defaultMaximumExpirationTimeInDays,
      'partnerAuthorizations': ?pulumi.Input.mapOptionalInputValue<List<PartnerConfigurationPartnerAuthorization>, List<Map<String, dynamic>>>(partnerAuthorizations, (value) => pulumi.Input.encodeList<PartnerConfigurationPartnerAuthorization, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
    };
  }

  factory PartnerConfigurationState.fromMap(Map<String, dynamic> map) {
    return PartnerConfigurationState(
      defaultMaximumExpirationTimeInDays: (() { final guardedValue = map['defaultMaximumExpirationTimeInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      partnerAuthorizations: (() { final guardedValue = map['partnerAuthorizations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PartnerConfigurationPartnerAuthorization>(guardedValue, (value) => PartnerConfigurationPartnerAuthorization.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

