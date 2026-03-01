// ignore_for_file: unused_element, unnecessary_cast

import 'liftr_base_marketplace_details.dart';
import 'liftr_base_single_sign_on_properties_v2.dart';
import 'liftr_base_user_details.dart';
import 'partner_properties.dart';

/// Properties specific to Instance
class InstanceProperties {
  /// Marketplace details of the resource.
  final LiftrBaseMarketplaceDetails marketplace;
  /// partner properties
  final PartnerProperties? partnerProperties;
  /// Single sign-on properties
  final LiftrBaseSingleSignOnPropertiesV2? singleSignOnProperties;
  /// Details of the user.
  final LiftrBaseUserDetails user;

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
      'marketplace': marketplace.toMap(),
      'partnerProperties': ?partnerProperties == null ? null : partnerProperties!.toMap(),
      'singleSignOnProperties': ?singleSignOnProperties == null ? null : singleSignOnProperties!.toMap(),
      'user': user.toMap(),
    };
  }

  factory InstanceProperties.fromMap(Map<String, dynamic> map) {
    return InstanceProperties(
      marketplace: LiftrBaseMarketplaceDetails.fromMap((map['marketplace'] as Map).cast<String, dynamic>()),
      partnerProperties: map['partnerProperties'] == null ? null : PartnerProperties.fromMap((map['partnerProperties'] as Map).cast<String, dynamic>()),
      singleSignOnProperties: map['singleSignOnProperties'] == null ? null : LiftrBaseSingleSignOnPropertiesV2.fromMap((map['singleSignOnProperties'] as Map).cast<String, dynamic>()),
      user: LiftrBaseUserDetails.fromMap((map['user'] as Map).cast<String, dynamic>()),
    );
  }
}

