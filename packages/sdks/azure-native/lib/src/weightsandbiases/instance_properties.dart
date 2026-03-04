// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'liftr_base_marketplace_details.dart';
import 'liftr_base_single_sign_on_properties_v2.dart';
import 'liftr_base_user_details.dart';
import 'partner_properties.dart';

/// Properties specific to Instance
class InstanceProperties {
  /// Marketplace details of the resource.
  final pulumi.Input<LiftrBaseMarketplaceDetails> marketplace;

  /// partner properties
  final pulumi.Input<PartnerProperties>? partnerProperties;

  /// Single sign-on properties
  final pulumi.Input<LiftrBaseSingleSignOnPropertiesV2>? singleSignOnProperties;

  /// Details of the user.
  final pulumi.Input<LiftrBaseUserDetails> user;

  /// Creates a new [InstanceProperties].
  /// [marketplace] Marketplace details of the resource.
  /// [partnerProperties] partner properties
  /// [singleSignOnProperties] Single sign-on properties
  /// [user] Details of the user.
  InstanceProperties({
    required this.marketplace,
    this.partnerProperties,
    this.singleSignOnProperties,
    required this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'marketplace':
          pulumi.Input.mapInputValue<
            LiftrBaseMarketplaceDetails,
            Map<String, dynamic>
          >(marketplace, (value) => value.toMap()),
      'partnerProperties':
          ?pulumi.Input.mapOptionalInputValue<
            PartnerProperties,
            Map<String, dynamic>
          >(partnerProperties, (value) => value.toMap()),
      'singleSignOnProperties':
          ?pulumi.Input.mapOptionalInputValue<
            LiftrBaseSingleSignOnPropertiesV2,
            Map<String, dynamic>
          >(singleSignOnProperties, (value) => value.toMap()),
      'user':
          pulumi.Input.mapInputValue<
            LiftrBaseUserDetails,
            Map<String, dynamic>
          >(user, (value) => value.toMap()),
    };
  }

  factory InstanceProperties.fromMap(Map<String, dynamic> map) {
    return InstanceProperties(
      marketplace: pulumi.Input.fromValue(
        LiftrBaseMarketplaceDetails.fromMap(
          (map['marketplace']! as Map).cast<String, dynamic>(),
        ),
      ),
      partnerProperties: (() {
        final guardedValue = map['partnerProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          PartnerProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      singleSignOnProperties: (() {
        final guardedValue = map['singleSignOnProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          LiftrBaseSingleSignOnPropertiesV2.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      user: pulumi.Input.fromValue(
        LiftrBaseUserDetails.fromMap(
          (map['user']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
