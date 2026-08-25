// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsExternalLink {
  /// (Optional)
  final pulumi.Input<String?>? description;
  /// (Required)
  final pulumi.Input<String> link;

  /// Creates a new [DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsExternalLink].
  /// [description] (Optional)
  /// [link] (Required)
  const DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsExternalLink({
    this.description,
    required this.link,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'link': link,
    };
  }

  factory DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsExternalLink.fromMap(Map<String, dynamic> map) {
    return DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsExternalLink(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      link: pulumi.Input.fromValue(map['link'] as String),
    );
  }
}
