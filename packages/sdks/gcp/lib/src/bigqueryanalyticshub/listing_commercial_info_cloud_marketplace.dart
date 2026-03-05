// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListingCommercialInfoCloudMarketplace {
  /// (Output)
  /// Commercial state of the Marketplace Data Product.
  /// Possible values: COMMERCIAL_STATE_UNSPECIFIED, ONBOARDING, ACTIVE
  final pulumi.Input<String>? commercialState;
  /// (Output)
  /// Resource name of the commercial service associated with the Marketplace Data Product. e.g. example.com
  final pulumi.Input<String>? service;

  /// Creates a new [ListingCommercialInfoCloudMarketplace].
  /// [commercialState] (Output)
  /// [service] (Output)
  ListingCommercialInfoCloudMarketplace({
    this.commercialState,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commercialState': ?commercialState,
      'service': ?service,
    };
  }

  factory ListingCommercialInfoCloudMarketplace.fromMap(Map<String, dynamic> map) {
    return ListingCommercialInfoCloudMarketplace(
      commercialState: (() { final guardedValue = map['commercialState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      service: (() { final guardedValue = map['service']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

