// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'liftr_base_marketplace_details_response.dart';
import 'liftr_base_single_sign_on_properties_v2_response.dart';
import 'liftr_base_user_details_response.dart';
import 'partner_properties_response.dart';

/// Properties specific to Instance
class InstancePropertiesResponse {
  /// Marketplace details of the resource.
  final pulumi.Input<LiftrBaseMarketplaceDetailsResponse> marketplace;

  /// partner properties
  final pulumi.Input<PartnerPropertiesResponse>? partnerProperties;

  /// Provisioning state of the resource.
  final pulumi.Input<String> provisioningState;

  /// Single sign-on properties
  final pulumi.Input<LiftrBaseSingleSignOnPropertiesV2Response>?
  singleSignOnProperties;

  /// Details of the user.
  final pulumi.Input<LiftrBaseUserDetailsResponse> user;

  /// Creates a new [InstancePropertiesResponse].
  /// [marketplace] Marketplace details of the resource.
  /// [partnerProperties] partner properties
  /// [provisioningState] Provisioning state of the resource.
  /// [singleSignOnProperties] Single sign-on properties
  /// [user] Details of the user.
  InstancePropertiesResponse({
    required this.marketplace,
    this.partnerProperties,
    required this.provisioningState,
    this.singleSignOnProperties,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'marketplace':
          pulumi.Input.mapInputValue<
            LiftrBaseMarketplaceDetailsResponse,
            Map<String, dynamic>
          >(marketplace, (value) => value.toMap()),
      'partnerProperties':
          ?pulumi.Input.mapOptionalInputValue<
            PartnerPropertiesResponse,
            Map<String, dynamic>
          >(partnerProperties, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'singleSignOnProperties':
          ?pulumi.Input.mapOptionalInputValue<
            LiftrBaseSingleSignOnPropertiesV2Response,
            Map<String, dynamic>
          >(singleSignOnProperties, (value) => value.toMap()),
      'user':
          pulumi.Input.mapInputValue<
            LiftrBaseUserDetailsResponse,
            Map<String, dynamic>
          >(user, (value) => value.toMap()),
    };
  }

  factory InstancePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return InstancePropertiesResponse(
      marketplace: pulumi.Input.fromValue(
        LiftrBaseMarketplaceDetailsResponse.fromMap(
          (map['marketplace']! as Map).cast<String, dynamic>(),
        ),
      ),
      partnerProperties: (() {
        final guardedValue = map['partnerProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PartnerPropertiesResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      singleSignOnProperties: (() {
        final guardedValue = map['singleSignOnProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LiftrBaseSingleSignOnPropertiesV2Response.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      user: pulumi.Input.fromValue(
        LiftrBaseUserDetailsResponse.fromMap(
          (map['user']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
