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
  final String? description;
  /// The unique entity identifier of the dashboard page in New Relic.
  final String? guid;
  /// The title of the dashboard.
  final String name;
  /// An area widget.
  final List<OneDashboardPageWidgetArea>? widgetAreas;
  /// A bar widget.
  final List<OneDashboardPageWidgetBar>? widgetBars;
  /// A billboard widget.
  final List<OneDashboardPageWidgetBillboard>? widgetBillboards;
  /// A bullet widget.
  final List<OneDashboardPageWidgetBullet>? widgetBullets;
  /// A funnel widget.
  final List<OneDashboardPageWidgetFunnel>? widgetFunnels;
  /// A heatmap widget.
  final List<OneDashboardPageWidgetHeatmap>? widgetHeatmaps;
  /// A histogram widget.
  final List<OneDashboardPageWidgetHistogram>? widgetHistograms;
  /// A JSON widget.
  final List<OneDashboardPageWidgetJson>? widgetJsons;
  /// A line widget.
  final List<OneDashboardPageWidgetLine>? widgetLines;
  /// A log table widget.
  final List<OneDashboardPageWidgetLogTable>? widgetLogTables;
  /// A markdown widget.
  final List<OneDashboardPageWidgetMarkdown>? widgetMarkdowns;
  /// A pie widget.
  final List<OneDashboardPageWidgetPy>? widgetPies;
  /// A stacked bar widget.
  final List<OneDashboardPageWidgetStackedBar>? widgetStackedBars;
  /// A table widget.
  final List<OneDashboardPageWidgetTable>? widgetTables;

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
  OneDashboardPage({
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
      'widgetAreas': ?widgetAreas == null ? null : pulumi.Input.encodeList<OneDashboardPageWidgetArea, Map<String, dynamic>>(widgetAreas!, (value) => value.toMap()),
      'widgetBars': ?widgetBars == null ? null : pulumi.Input.encodeList<OneDashboardPageWidgetBar, Map<String, dynamic>>(widgetBars!, (value) => value.toMap()),
      'widgetBillboards': ?widgetBillboards == null ? null : pulumi.Input.encodeList<OneDashboardPageWidgetBillboard, Map<String, dynamic>>(widgetBillboards!, (value) => value.toMap()),
      'widgetBullets': ?widgetBullets == null ? null : pulumi.Input.encodeList<OneDashboardPageWidgetBullet, Map<String, dynamic>>(widgetBullets!, (value) => value.toMap()),
      'widgetFunnels': ?widgetFunnels == null ? null : pulumi.Input.encodeList<OneDashboardPageWidgetFunnel, Map<String, dynamic>>(widgetFunnels!, (value) => value.toMap()),
      'widgetHeatmaps': ?widgetHeatmaps == null ? null : pulumi.Input.encodeList<OneDashboardPageWidgetHeatmap, Map<String, dynamic>>(widgetHeatmaps!, (value) => value.toMap()),
      'widgetHistograms': ?widgetHistograms == null ? null : pulumi.Input.encodeList<OneDashboardPageWidgetHistogram, Map<String, dynamic>>(widgetHistograms!, (value) => value.toMap()),
      'widgetJsons': ?widgetJsons == null ? null : pulumi.Input.encodeList<OneDashboardPageWidgetJson, Map<String, dynamic>>(widgetJsons!, (value) => value.toMap()),
      'widgetLines': ?widgetLines == null ? null : pulumi.Input.encodeList<OneDashboardPageWidgetLine, Map<String, dynamic>>(widgetLines!, (value) => value.toMap()),
      'widgetLogTables': ?widgetLogTables == null ? null : pulumi.Input.encodeList<OneDashboardPageWidgetLogTable, Map<String, dynamic>>(widgetLogTables!, (value) => value.toMap()),
      'widgetMarkdowns': ?widgetMarkdowns == null ? null : pulumi.Input.encodeList<OneDashboardPageWidgetMarkdown, Map<String, dynamic>>(widgetMarkdowns!, (value) => value.toMap()),
      'widgetPies': ?widgetPies == null ? null : pulumi.Input.encodeList<OneDashboardPageWidgetPy, Map<String, dynamic>>(widgetPies!, (value) => value.toMap()),
      'widgetStackedBars': ?widgetStackedBars == null ? null : pulumi.Input.encodeList<OneDashboardPageWidgetStackedBar, Map<String, dynamic>>(widgetStackedBars!, (value) => value.toMap()),
      'widgetTables': ?widgetTables == null ? null : pulumi.Input.encodeList<OneDashboardPageWidgetTable, Map<String, dynamic>>(widgetTables!, (value) => value.toMap()),
    };
  }

  factory OneDashboardPage.fromMap(Map<String, dynamic> map) {
    return OneDashboardPage(
      description: map['description'] == null ? null : map['description'] as String,
      guid: map['guid'] == null ? null : map['guid'] as String,
      name: map['name'] as String,
      widgetAreas: map['widgetAreas'] == null ? null : pulumi.Input.decodeList<OneDashboardPageWidgetArea>(map['widgetAreas'], (value) => OneDashboardPageWidgetArea.fromMap((value as Map).cast<String, dynamic>())),
      widgetBars: map['widgetBars'] == null ? null : pulumi.Input.decodeList<OneDashboardPageWidgetBar>(map['widgetBars'], (value) => OneDashboardPageWidgetBar.fromMap((value as Map).cast<String, dynamic>())),
      widgetBillboards: map['widgetBillboards'] == null ? null : pulumi.Input.decodeList<OneDashboardPageWidgetBillboard>(map['widgetBillboards'], (value) => OneDashboardPageWidgetBillboard.fromMap((value as Map).cast<String, dynamic>())),
      widgetBullets: map['widgetBullets'] == null ? null : pulumi.Input.decodeList<OneDashboardPageWidgetBullet>(map['widgetBullets'], (value) => OneDashboardPageWidgetBullet.fromMap((value as Map).cast<String, dynamic>())),
      widgetFunnels: map['widgetFunnels'] == null ? null : pulumi.Input.decodeList<OneDashboardPageWidgetFunnel>(map['widgetFunnels'], (value) => OneDashboardPageWidgetFunnel.fromMap((value as Map).cast<String, dynamic>())),
      widgetHeatmaps: map['widgetHeatmaps'] == null ? null : pulumi.Input.decodeList<OneDashboardPageWidgetHeatmap>(map['widgetHeatmaps'], (value) => OneDashboardPageWidgetHeatmap.fromMap((value as Map).cast<String, dynamic>())),
      widgetHistograms: map['widgetHistograms'] == null ? null : pulumi.Input.decodeList<OneDashboardPageWidgetHistogram>(map['widgetHistograms'], (value) => OneDashboardPageWidgetHistogram.fromMap((value as Map).cast<String, dynamic>())),
      widgetJsons: map['widgetJsons'] == null ? null : pulumi.Input.decodeList<OneDashboardPageWidgetJson>(map['widgetJsons'], (value) => OneDashboardPageWidgetJson.fromMap((value as Map).cast<String, dynamic>())),
      widgetLines: map['widgetLines'] == null ? null : pulumi.Input.decodeList<OneDashboardPageWidgetLine>(map['widgetLines'], (value) => OneDashboardPageWidgetLine.fromMap((value as Map).cast<String, dynamic>())),
      widgetLogTables: map['widgetLogTables'] == null ? null : pulumi.Input.decodeList<OneDashboardPageWidgetLogTable>(map['widgetLogTables'], (value) => OneDashboardPageWidgetLogTable.fromMap((value as Map).cast<String, dynamic>())),
      widgetMarkdowns: map['widgetMarkdowns'] == null ? null : pulumi.Input.decodeList<OneDashboardPageWidgetMarkdown>(map['widgetMarkdowns'], (value) => OneDashboardPageWidgetMarkdown.fromMap((value as Map).cast<String, dynamic>())),
      widgetPies: map['widgetPies'] == null ? null : pulumi.Input.decodeList<OneDashboardPageWidgetPy>(map['widgetPies'], (value) => OneDashboardPageWidgetPy.fromMap((value as Map).cast<String, dynamic>())),
      widgetStackedBars: map['widgetStackedBars'] == null ? null : pulumi.Input.decodeList<OneDashboardPageWidgetStackedBar>(map['widgetStackedBars'], (value) => OneDashboardPageWidgetStackedBar.fromMap((value as Map).cast<String, dynamic>())),
      widgetTables: map['widgetTables'] == null ? null : pulumi.Input.decodeList<OneDashboardPageWidgetTable>(map['widgetTables'], (value) => OneDashboardPageWidgetTable.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

