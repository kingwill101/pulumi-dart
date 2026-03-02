// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional SQL Server feature settings.
class AdditionalFeaturesServerConfigurations {
  /// Enable or disable R services (SQL 2016 onwards).
  final pulumi.Input<bool>? isRServicesEnabled;

  /// Creates a new [AdditionalFeaturesServerConfigurations].
  /// [isRServicesEnabled] Enable or disable R services (SQL 2016 onwards).
  AdditionalFeaturesServerConfigurations({
    this.isRServicesEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isRServicesEnabled': ?isRServicesEnabled,
    };
  }

  factory AdditionalFeaturesServerConfigurations.fromMap(Map<String, dynamic> map) {
    return AdditionalFeaturesServerConfigurations(
      isRServicesEnabled: map['isRServicesEnabled'] == null ? null : (map['isRServicesEnabled']! as bool).input(),
    );
  }
}

