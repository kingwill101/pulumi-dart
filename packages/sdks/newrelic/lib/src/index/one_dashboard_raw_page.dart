// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'one_dashboard_raw_page_widget.dart';

class OneDashboardRawPage {
  /// Brief text describing the dashboard.
  final pulumi.Input<String>? description;
  /// The unique entity identifier of the dashboard page in New Relic.
  final pulumi.Input<String>? guid;
  /// The title of the dashboard.
  final pulumi.Input<String> name;
  /// (Optional) A nested block that describes a widget. See Nested widget blocks below for details.
  final pulumi.Input<List<OneDashboardRawPageWidget>>? widgets;

  /// Creates a new [OneDashboardRawPage].
  /// [description] Brief text describing the dashboard.
  /// [guid] The unique entity identifier of the dashboard page in New Relic.
  /// [name] The title of the dashboard.
  /// [widgets] (Optional) A nested block that describes a widget. See Nested widget blocks below for details.
  OneDashboardRawPage({
    this.description,
    this.guid,
    required this.name,
    this.widgets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'guid': ?guid,
      'name': name,
      'widgets': ?pulumi.Input.mapOptionalInputValue<List<OneDashboardRawPageWidget>, List<Map<String, dynamic>>>(widgets, (value) => pulumi.Input.encodeList<OneDashboardRawPageWidget, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OneDashboardRawPage.fromMap(Map<String, dynamic> map) {
    return OneDashboardRawPage(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      guid: (() { final guardedValue = map['guid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      widgets: (() { final guardedValue = map['widgets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OneDashboardRawPageWidget>(guardedValue, (value) => OneDashboardRawPageWidget.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

