// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'one_dashboard_page_widget_area.dart';
import 'one_dashboard_page_widget_bar.dart';
import 'one_dashboard_page_widget_billboard.dart';
import 'one_dashboard_page_widget_bullet.dart';
import 'one_dashboard_page_widget_funnel.dart';
import 'one_dashboard_page_widget_heatmap.dart';
import 'one_dashboard_page_widget_histogram.dart';
import 'one_dashboard_page_widget_json.dart';
import 'one_dashboard_page_widget_line.dart';
import 'one_dashboard_page_widget_log_table.dart';
import 'one_dashboard_page_widget_markdown.dart';
import 'one_dashboard_page_widget_py.dart';
import 'one_dashboard_page_widget_stacked_bar.dart';
import 'one_dashboard_page_widget_table.dart';

class OneDashboardPage {
  /// Brief text describing the dashboard.
  final pulumi.Input<String>? description;
  /// The unique entity identifier of the dashboard page in New Relic.
  final pulumi.Input<String>? guid;
  /// The title of the dashboard.
  final pulumi.Input<String> name;
  /// An area widget.
  final pulumi.Input<List<OneDashboardPageWidgetArea>>? widgetAreas;
  /// A bar widget.
  final pulumi.Input<List<OneDashboardPageWidgetBar>>? widgetBars;
  /// A billboard widget.
  final pulumi.Input<List<OneDashboardPageWidgetBillboard>>? widgetBillboards;
  /// A bullet widget.
  final pulumi.Input<List<OneDashboardPageWidgetBullet>>? widgetBullets;
  /// A funnel widget.
  final pulumi.Input<List<OneDashboardPageWidgetFunnel>>? widgetFunnels;
  /// A heatmap widget.
  final pulumi.Input<List<OneDashboardPageWidgetHeatmap>>? widgetHeatmaps;
  /// A histogram widget.
  final pulumi.Input<List<OneDashboardPageWidgetHistogram>>? widgetHistograms;
  /// A JSON widget.
  final pulumi.Input<List<OneDashboardPageWidgetJson>>? widgetJsons;
  /// A line widget.
  final pulumi.Input<List<OneDashboardPageWidgetLine>>? widgetLines;
  /// A log table widget.
  final pulumi.Input<List<OneDashboardPageWidgetLogTable>>? widgetLogTables;
  /// A markdown widget.
  final pulumi.Input<List<OneDashboardPageWidgetMarkdown>>? widgetMarkdowns;
  /// A pie widget.
  final pulumi.Input<List<OneDashboardPageWidgetPy>>? widgetPies;
  /// A stacked bar widget.
  final pulumi.Input<List<OneDashboardPageWidgetStackedBar>>? widgetStackedBars;
  /// A table widget.
  final pulumi.Input<List<OneDashboardPageWidgetTable>>? widgetTables;

  /// Creates a new [OneDashboardPage].
  /// [description] Brief text describing the dashboard.
  /// [guid] The unique entity identifier of the dashboard page in New Relic.
  /// [name] The title of the dashboard.
  /// [widgetAreas] An area widget.
  /// [widgetBars] A bar widget.
  /// [widgetBillboards] A billboard widget.
  /// [widgetBullets] A bullet widget.
  /// [widgetFunnels] A funnel widget.
  /// [widgetHeatmaps] A heatmap widget.
  /// [widgetHistograms] A histogram widget.
  /// [widgetJsons] A JSON widget.
  /// [widgetLines] A line widget.
  /// [widgetLogTables] A log table widget.
  /// [widgetMarkdowns] A markdown widget.
  /// [widgetPies] A pie widget.
  /// [widgetStackedBars] A stacked bar widget.
  /// [widgetTables] A table widget.
  const OneDashboardPage({
    this.description,
    this.guid,
    required this.name,
    this.widgetAreas,
    this.widgetBars,
    this.widgetBillboards,
    this.widgetBullets,
    this.widgetFunnels,
    this.widgetHeatmaps,
    this.widgetHistograms,
    this.widgetJsons,
    this.widgetLines,
    this.widgetLogTables,
    this.widgetMarkdowns,
    this.widgetPies,
    this.widgetStackedBars,
    this.widgetTables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'guid': ?guid,
      'name': name,
      'widgetAreas': ?pulumi.Input.mapOptionalInputValue<List<OneDashboardPageWidgetArea>, List<Map<String, dynamic>>>(widgetAreas, (value) => pulumi.Input.encodeList<OneDashboardPageWidgetArea, Map<String, dynamic>>(value, (value) => value.toMap())),
      'widgetBars': ?pulumi.Input.mapOptionalInputValue<List<OneDashboardPageWidgetBar>, List<Map<String, dynamic>>>(widgetBars, (value) => pulumi.Input.encodeList<OneDashboardPageWidgetBar, Map<String, dynamic>>(value, (value) => value.toMap())),
      'widgetBillboards': ?pulumi.Input.mapOptionalInputValue<List<OneDashboardPageWidgetBillboard>, List<Map<String, dynamic>>>(widgetBillboards, (value) => pulumi.Input.encodeList<OneDashboardPageWidgetBillboard, Map<String, dynamic>>(value, (value) => value.toMap())),
      'widgetBullets': ?pulumi.Input.mapOptionalInputValue<List<OneDashboardPageWidgetBullet>, List<Map<String, dynamic>>>(widgetBullets, (value) => pulumi.Input.encodeList<OneDashboardPageWidgetBullet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'widgetFunnels': ?pulumi.Input.mapOptionalInputValue<List<OneDashboardPageWidgetFunnel>, List<Map<String, dynamic>>>(widgetFunnels, (value) => pulumi.Input.encodeList<OneDashboardPageWidgetFunnel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'widgetHeatmaps': ?pulumi.Input.mapOptionalInputValue<List<OneDashboardPageWidgetHeatmap>, List<Map<String, dynamic>>>(widgetHeatmaps, (value) => pulumi.Input.encodeList<OneDashboardPageWidgetHeatmap, Map<String, dynamic>>(value, (value) => value.toMap())),
      'widgetHistograms': ?pulumi.Input.mapOptionalInputValue<List<OneDashboardPageWidgetHistogram>, List<Map<String, dynamic>>>(widgetHistograms, (value) => pulumi.Input.encodeList<OneDashboardPageWidgetHistogram, Map<String, dynamic>>(value, (value) => value.toMap())),
      'widgetJsons': ?pulumi.Input.mapOptionalInputValue<List<OneDashboardPageWidgetJson>, List<Map<String, dynamic>>>(widgetJsons, (value) => pulumi.Input.encodeList<OneDashboardPageWidgetJson, Map<String, dynamic>>(value, (value) => value.toMap())),
      'widgetLines': ?pulumi.Input.mapOptionalInputValue<List<OneDashboardPageWidgetLine>, List<Map<String, dynamic>>>(widgetLines, (value) => pulumi.Input.encodeList<OneDashboardPageWidgetLine, Map<String, dynamic>>(value, (value) => value.toMap())),
      'widgetLogTables': ?pulumi.Input.mapOptionalInputValue<List<OneDashboardPageWidgetLogTable>, List<Map<String, dynamic>>>(widgetLogTables, (value) => pulumi.Input.encodeList<OneDashboardPageWidgetLogTable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'widgetMarkdowns': ?pulumi.Input.mapOptionalInputValue<List<OneDashboardPageWidgetMarkdown>, List<Map<String, dynamic>>>(widgetMarkdowns, (value) => pulumi.Input.encodeList<OneDashboardPageWidgetMarkdown, Map<String, dynamic>>(value, (value) => value.toMap())),
      'widgetPies': ?pulumi.Input.mapOptionalInputValue<List<OneDashboardPageWidgetPy>, List<Map<String, dynamic>>>(widgetPies, (value) => pulumi.Input.encodeList<OneDashboardPageWidgetPy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'widgetStackedBars': ?pulumi.Input.mapOptionalInputValue<List<OneDashboardPageWidgetStackedBar>, List<Map<String, dynamic>>>(widgetStackedBars, (value) => pulumi.Input.encodeList<OneDashboardPageWidgetStackedBar, Map<String, dynamic>>(value, (value) => value.toMap())),
      'widgetTables': ?pulumi.Input.mapOptionalInputValue<List<OneDashboardPageWidgetTable>, List<Map<String, dynamic>>>(widgetTables, (value) => pulumi.Input.encodeList<OneDashboardPageWidgetTable, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory OneDashboardPage.fromMap(Map<String, dynamic> map) {
    return OneDashboardPage(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      guid: (() { final guardedValue = map['guid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      widgetAreas: (() { final guardedValue = map['widgetAreas']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OneDashboardPageWidgetArea>(guardedValue, (value) => OneDashboardPageWidgetArea.fromMap((value as Map).cast<String, dynamic>()))); })(),
      widgetBars: (() { final guardedValue = map['widgetBars']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OneDashboardPageWidgetBar>(guardedValue, (value) => OneDashboardPageWidgetBar.fromMap((value as Map).cast<String, dynamic>()))); })(),
      widgetBillboards: (() { final guardedValue = map['widgetBillboards']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OneDashboardPageWidgetBillboard>(guardedValue, (value) => OneDashboardPageWidgetBillboard.fromMap((value as Map).cast<String, dynamic>()))); })(),
      widgetBullets: (() { final guardedValue = map['widgetBullets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OneDashboardPageWidgetBullet>(guardedValue, (value) => OneDashboardPageWidgetBullet.fromMap((value as Map).cast<String, dynamic>()))); })(),
      widgetFunnels: (() { final guardedValue = map['widgetFunnels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OneDashboardPageWidgetFunnel>(guardedValue, (value) => OneDashboardPageWidgetFunnel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      widgetHeatmaps: (() { final guardedValue = map['widgetHeatmaps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OneDashboardPageWidgetHeatmap>(guardedValue, (value) => OneDashboardPageWidgetHeatmap.fromMap((value as Map).cast<String, dynamic>()))); })(),
      widgetHistograms: (() { final guardedValue = map['widgetHistograms']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OneDashboardPageWidgetHistogram>(guardedValue, (value) => OneDashboardPageWidgetHistogram.fromMap((value as Map).cast<String, dynamic>()))); })(),
      widgetJsons: (() { final guardedValue = map['widgetJsons']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OneDashboardPageWidgetJson>(guardedValue, (value) => OneDashboardPageWidgetJson.fromMap((value as Map).cast<String, dynamic>()))); })(),
      widgetLines: (() { final guardedValue = map['widgetLines']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OneDashboardPageWidgetLine>(guardedValue, (value) => OneDashboardPageWidgetLine.fromMap((value as Map).cast<String, dynamic>()))); })(),
      widgetLogTables: (() { final guardedValue = map['widgetLogTables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OneDashboardPageWidgetLogTable>(guardedValue, (value) => OneDashboardPageWidgetLogTable.fromMap((value as Map).cast<String, dynamic>()))); })(),
      widgetMarkdowns: (() { final guardedValue = map['widgetMarkdowns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OneDashboardPageWidgetMarkdown>(guardedValue, (value) => OneDashboardPageWidgetMarkdown.fromMap((value as Map).cast<String, dynamic>()))); })(),
      widgetPies: (() { final guardedValue = map['widgetPies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OneDashboardPageWidgetPy>(guardedValue, (value) => OneDashboardPageWidgetPy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      widgetStackedBars: (() { final guardedValue = map['widgetStackedBars']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OneDashboardPageWidgetStackedBar>(guardedValue, (value) => OneDashboardPageWidgetStackedBar.fromMap((value as Map).cast<String, dynamic>()))); })(),
      widgetTables: (() { final guardedValue = map['widgetTables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OneDashboardPageWidgetTable>(guardedValue, (value) => OneDashboardPageWidgetTable.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

