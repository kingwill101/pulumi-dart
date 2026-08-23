// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsExternalLink {
  /// (Optional)
  final pulumi.Input<String>? description;
  /// (Required)
  final pulumi.Input<String> link;

  /// Creates a new [DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsExternalLink].
  /// [description] (Optional)
  /// [link] (Required)
  const DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsExternalLink({
    this.description,
    required this.link,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'link': link,
    };
  }

  factory DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsExternalLink.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartDrillDownConfigRightDrillDownCustomSettingsExternalLink(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      link: pulumi.Input.fromValue(map['link'] as String),
    );
  }
}
