// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional SQL Server feature settings.
class AdditionalFeaturesServerConfigurationsResponse {
  /// Enable or disable R services (SQL 2016 onwards).
  final pulumi.Input<bool>? isRServicesEnabled;

  /// Creates a new [AdditionalFeaturesServerConfigurationsResponse].
  /// [isRServicesEnabled] Enable or disable R services (SQL 2016 onwards).
  AdditionalFeaturesServerConfigurationsResponse({this.isRServicesEnabled});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'isRServicesEnabled': ?isRServicesEnabled};
  }

  factory AdditionalFeaturesServerConfigurationsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AdditionalFeaturesServerConfigurationsResponse(
      isRServicesEnabled: (() {
        final guardedValue = map['isRServicesEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
