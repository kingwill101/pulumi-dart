// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional SQL Server feature settings.
class AdditionalFeaturesServerConfigurations {
  /// Enable or disable R services (SQL 2016 onwards).
  final pulumi.Input<bool>? isRServicesEnabled;

  /// Creates a new [AdditionalFeaturesServerConfigurations].
  /// [isRServicesEnabled] Enable or disable R services (SQL 2016 onwards).
  const AdditionalFeaturesServerConfigurations({
    this.isRServicesEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isRServicesEnabled': ?isRServicesEnabled,
    };
  }

  factory AdditionalFeaturesServerConfigurations.fromMap(Map<String, dynamic> map) {
    return AdditionalFeaturesServerConfigurations(
      isRServicesEnabled: (() { final guardedValue = map['isRServicesEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

