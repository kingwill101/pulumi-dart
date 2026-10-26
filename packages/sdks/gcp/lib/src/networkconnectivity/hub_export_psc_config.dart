// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HubExportPscConfig {
  /// Whether Private Service Connect endpoints for global Google APIs are propagated. The default value is false.
  final pulumi.Input<bool?>? globalGoogleApis;
  /// Whether Private Service Connect endpoints for published services (regional ILBs) and regional Google APIs are propagated.
  final pulumi.Input<bool?>? publishedServicesAndRegionalGoogleApis;

  /// Creates a new [HubExportPscConfig].
  /// [globalGoogleApis] Whether Private Service Connect endpoints for global Google APIs are propagated. The default value is false.
  /// [publishedServicesAndRegionalGoogleApis] Whether Private Service Connect endpoints for published services (regional ILBs) and regional Google APIs are propagated.
  const HubExportPscConfig({
    this.globalGoogleApis,
    this.publishedServicesAndRegionalGoogleApis,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalGoogleApis': ?globalGoogleApis,
      'publishedServicesAndRegionalGoogleApis': ?publishedServicesAndRegionalGoogleApis,
    };
  }

  factory HubExportPscConfig.fromMap(Map<String, dynamic> map) {
    return HubExportPscConfig(
      globalGoogleApis: (() { final guardedValue = map['globalGoogleApis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      publishedServicesAndRegionalGoogleApis: (() { final guardedValue = map['publishedServicesAndRegionalGoogleApis']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
