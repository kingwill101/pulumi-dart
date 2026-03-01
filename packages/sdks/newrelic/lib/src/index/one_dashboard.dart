import 'package:pulumi/pulumi.dart' as pulumi;
import 'one_dashboard_args.dart';
import 'one_dashboard_page.dart';
import 'one_dashboard_state.dart';
import 'one_dashboard_variable.dart';

/// > **IMPORTANT!**
/// When configuring the `newrelic.OneDashboard` resource, it is important to understand that widgets should ideally be sorted by row and column order to maintain the stability and accuracy of your dashboard setup. If this specified order is not adhered to, it can lead to resource drift, which might result in discrepancies between the intended setup and the actual deployed dashboard.
///
/// ## Example Usage
///
/// ### Create A New Relic One Dashboard
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const exampledash = new newrelic.OneDashboard("exampledash", {
///     name: "New Relic Terraform Example",
///     permissions: "public_read_only",
///     pages: [{
///         name: "New Relic Terraform Example",
///         widgetTables: [{
///             title: "List of Transactions",
///             row: 1,
///             column: 4,
///             width: 6,
///             height: 3,
///             refreshRate: "60000",
///             nrqlQueries: [{
///                 query: "FROM Transaction SELECT *",
///             }],
///             initialSorting: {
///                 direction: "desc",
///                 name: "timestamp",
///             },
///             dataFormats: [{
///                 name: "duration",
///                 type: "decimal",
///             }],
///         }],
///         widgetBillboards: [{
///             title: "Requests per minute",
///             row: 1,
///             column: 1,
///             width: 6,
///             height: 3,
///             refreshRate: "60000",
///             dataFormats: [{
///                 name: "rate",
///                 type: "recent-relative",
///             }],
///             nrqlQueries: [{
///                 query: "FROM Transaction SELECT rate(count(*), 1 minute)",
///             }],
///             billboardSettings: {
///                 link: {
///                     newTab: true,
///                     title: "Click to view more details",
///                     url: "https://example.com",
///                 },
///                 visual: {
///                     alignment: "inline",
///                     display: "auto",
///                 },
///                 gridOptions: {
///                     columns: 4,
///                     label: 6,
///                     value: 8,
///                 },
///             },
///         }],
///         widgetBars: [
///             {
///                 title: "Average transaction duration, by application",
///                 row: 1,
///                 column: 7,
///                 width: 6,
///                 height: 3,
///                 nrqlQueries: [{
///                     accountId: "12345",
///                     query: "FROM Transaction SELECT average(duration) FACET appName",
///                 }],
///                 linkedEntityGuids: ["abc123"],
///             },
///             {
///                 title: "Average transaction duration, by application",
///                 row: 4,
///                 column: 1,
///                 width: 6,
///                 height: 3,
///                 refreshRate: "300000",
///                 nrqlQueries: [{
///                     accountId: "12345",
///                     query: "FROM Transaction SELECT average(duration) FACET appName",
///                 }],
///                 filterCurrentDashboard: true,
///                 colors: [{
///                     color: "#722727",
///                     seriesOverrides: [
///                         {
///                             color: "#722322",
///                             seriesName: "Node",
///                         },
///                         {
///                             color: "#236f70",
///                             seriesName: "Java",
///                         },
///                     ],
///                 }],
///             },
///         ],
///         widgetLines: [
///             {
///                 title: "Average transaction duration and the request per minute, by application",
///                 row: 4,
///                 column: 7,
///                 width: 6,
///                 height: 3,
///                 refreshRate: "30000",
///                 nrqlQueries: [
///                     {
///                         accountId: JSON.stringify([
///                             1234567,
///                             2345671,
///                         ]),
///                         query: "FROM Transaction select max(duration) as 'max duration' where httpResponseCode = '504' timeseries since 5 minutes ago",
///                     },
///                     {
///                         query: "FROM Transaction SELECT rate(count(*), 1 minute)",
///                     },
///                 ],
///                 legendEnabled: true,
///                 ignoreTimeRange: false,
///                 yAxisLeftZero: true,
///                 yAxisLeftMin: 0,
///                 yAxisLeftMax: 1,
///                 tooltip: {
///                     mode: "single",
///                 },
///                 yAxisRight: {
///                     yAxisRightZero: true,
///                     yAxisRightMin: 0,
///                     yAxisRightMax: 300,
///                     yAxisRightSeries: [
///                         "A",
///                         "B",
///                     ],
///                 },
///                 isLabelVisible: true,
///                 thresholds: [
///                     {
///                         name: "Duration Threshold",
///                         from: "1",
///                         to: "2",
///                         severity: "critical",
///                     },
///                     {
///                         name: "Duration Threshold Two",
///                         from: "2.1",
///                         to: "3.3",
///                         severity: "warning",
///                     },
///                 ],
///                 units: [{
///                     unit: "ms",
///                     seriesOverrides: [{
///                         unit: "ms",
///                         seriesName: "max duration",
///                     }],
///                 }],
///             },
///             {
///                 title: "Overall CPU % Statistics",
///                 row: 1,
///                 column: 5,
///                 height: 3,
///                 width: 4,
///                 nrqlQueries: [{
///                     query: "SELECT average(cpuSystemPercent), average(cpuUserPercent), average(cpuIdlePercent), average(cpuIOWaitPercent) FROM SystemSample  SINCE 1 hour ago TIMESERIES\n",
///                 }],
///                 facetShowOtherSeries: false,
///                 legendEnabled: true,
///                 ignoreTimeRange: false,
///                 yAxisLeftZero: true,
///                 yAxisLeftMin: 0,
///                 yAxisLeftMax: 0,
///                 nullValues: [{
///                     nullValue: "default",
///                     seriesOverrides: [
///                         {
///                             nullValue: "remove",
///                             seriesName: "Avg Cpu User Percent",
///                         },
///                         {
///                             nullValue: "zero",
///                             seriesName: "Avg Cpu Idle Percent",
///                         },
///                         {
///                             nullValue: "default",
///                             seriesName: "Avg Cpu IO Wait Percent",
///                         },
///                         {
///                             nullValue: "preserve",
///                             seriesName: "Avg Cpu System Percent",
///                         },
///                     ],
///                 }],
///             },
///         ],
///         widgetMarkdowns: [{
///             title: "Dashboard Note",
///             row: 7,
///             column: 1,
///             width: 12,
///             height: 3,
///             text: `### Helpful Links
///
/// * [New Relic One](https://one.newrelic.com)
/// * [Developer Portal](https://developer.newrelic.com)`,
///         }],
///     }],
///     variables: [{
///         defaultValues: ["value"],
///         isMultiSelection: true,
///         items: [{
///             title: "item",
///             value: "ITEM",
///         }],
///         name: "variable",
///         nrqlQuery: {
///             accountIds: ["12345"],
///             query: "FROM Transaction SELECT average(duration) FACET appName",
///         },
///         replacementStrategy: "default",
///         title: "title",
///         type: "nrql",
///         options: [{
///             showApplyAction: true,
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_newrelic as newrelic
///
/// exampledash = newrelic.OneDashboard("exampledash",
///     name="New Relic Terraform Example",
///     permissions="public_read_only",
///     pages=[{
///         "name": "New Relic Terraform Example",
///         "widget_tables": [{
///             "title": "List of Transactions",
///             "row": 1,
///             "column": 4,
///             "width": 6,
///             "height": 3,
///             "refresh_rate": "60000",
///             "nrql_queries": [{
///                 "query": "FROM Transaction SELECT *",
///             }],
///             "initial_sorting": {
///                 "direction": "desc",
///                 "name": "timestamp",
///             },
///             "data_formats": [{
///                 "name": "duration",
///                 "type": "decimal",
///             }],
///         }],
///         "widget_billboards": [{
///             "title": "Requests per minute",
///             "row": 1,
///             "column": 1,
///             "width": 6,
///             "height": 3,
///             "refresh_rate": "60000",
///             "data_formats": [{
///                 "name": "rate",
///                 "type": "recent-relative",
///             }],
///             "nrql_queries": [{
///                 "query": "FROM Transaction SELECT rate(count(*), 1 minute)",
///             }],
///             "billboard_settings": {
///                 "link": {
///                     "new_tab": True,
///                     "title": "Click to view more details",
///                     "url": "https://example.com",
///                 },
///                 "visual": {
///                     "alignment": "inline",
///                     "display": "auto",
///                 },
///                 "grid_options": {
///                     "columns": 4,
///                     "label": 6,
///                     "value": 8,
///                 },
///             },
///         }],
///         "widget_bars": [
///             {
///                 "title": "Average transaction duration, by application",
///                 "row": 1,
///                 "column": 7,
///                 "width": 6,
///                 "height": 3,
///                 "nrql_queries": [{
///                     "account_id": "12345",
///                     "query": "FROM Transaction SELECT average(duration) FACET appName",
///                 }],
///                 "linked_entity_guids": ["abc123"],
///             },
///             {
///                 "title": "Average transaction duration, by application",
///                 "row": 4,
///                 "column": 1,
///                 "width": 6,
///                 "height": 3,
///                 "refresh_rate": "300000",
///                 "nrql_queries": [{
///                     "account_id": "12345",
///                     "query": "FROM Transaction SELECT average(duration) FACET appName",
///                 }],
///                 "filter_current_dashboard": True,
///                 "colors": [{
///                     "color": "#722727",
///                     "series_overrides": [
///                         {
///                             "color": "#722322",
///                             "series_name": "Node",
///                         },
///                         {
///                             "color": "#236f70",
///                             "series_name": "Java",
///                         },
///                     ],
///                 }],
///             },
///         ],
///         "widget_lines": [
///             {
///                 "title": "Average transaction duration and the request per minute, by application",
///                 "row": 4,
///                 "column": 7,
///                 "width": 6,
///                 "height": 3,
///                 "refresh_rate": "30000",
///                 "nrql_queries": [
///                     {
///                         "account_id": json.dumps([
///                             1234567,
///                             2345671,
///                         ]),
///                         "query": "FROM Transaction select max(duration) as 'max duration' where httpResponseCode = '504' timeseries since 5 minutes ago",
///                     },
///                     {
///                         "query": "FROM Transaction SELECT rate(count(*), 1 minute)",
///                     },
///                 ],
///                 "legend_enabled": True,
///                 "ignore_time_range": False,
///                 "y_axis_left_zero": True,
///                 "y_axis_left_min": 0,
///                 "y_axis_left_max": 1,
///                 "tooltip": {
///                     "mode": "single",
///                 },
///                 "y_axis_right": {
///                     "y_axis_right_zero": True,
///                     "y_axis_right_min": 0,
///                     "y_axis_right_max": 300,
///                     "y_axis_right_series": [
///                         "A",
///                         "B",
///                     ],
///                 },
///                 "is_label_visible": True,
///                 "thresholds": [
///                     {
///                         "name": "Duration Threshold",
///                         "from_": "1",
///                         "to": "2",
///                         "severity": "critical",
///                     },
///                     {
///                         "name": "Duration Threshold Two",
///                         "from_": "2.1",
///                         "to": "3.3",
///                         "severity": "warning",
///                     },
///                 ],
///                 "units": [{
///                     "unit": "ms",
///                     "series_overrides": [{
///                         "unit": "ms",
///                         "series_name": "max duration",
///                     }],
///                 }],
///             },
///             {
///                 "title": "Overall CPU % Statistics",
///                 "row": 1,
///                 "column": 5,
///                 "height": 3,
///                 "width": 4,
///                 "nrql_queries": [{
///                     "query": "SELECT average(cpuSystemPercent), average(cpuUserPercent), average(cpuIdlePercent), average(cpuIOWaitPercent) FROM SystemSample  SINCE 1 hour ago TIMESERIES\n",
///                 }],
///                 "facet_show_other_series": False,
///                 "legend_enabled": True,
///                 "ignore_time_range": False,
///                 "y_axis_left_zero": True,
///                 "y_axis_left_min": 0,
///                 "y_axis_left_max": 0,
///                 "null_values": [{
///                     "null_value": "default",
///                     "series_overrides": [
///                         {
///                             "null_value": "remove",
///                             "series_name": "Avg Cpu User Percent",
///                         },
///                         {
///                             "null_value": "zero",
///                             "series_name": "Avg Cpu Idle Percent",
///                         },
///                         {
///                             "null_value": "default",
///                             "series_name": "Avg Cpu IO Wait Percent",
///                         },
///                         {
///                             "null_value": "preserve",
///                             "series_name": "Avg Cpu System Percent",
///                         },
///                     ],
///                 }],
///             },
///         ],
///         "widget_markdowns": [{
///             "title": "Dashboard Note",
///             "row": 7,
///             "column": 1,
///             "width": 12,
///             "height": 3,
///             "text": """### Helpful Links
///
/// * [New Relic One](https://one.newrelic.com)
/// * [Developer Portal](https://developer.newrelic.com)""",
///         }],
///     }],
///     variables=[{
///         "default_values": ["value"],
///         "is_multi_selection": True,
///         "items": [{
///             "title": "item",
///             "value": "ITEM",
///         }],
///         "name": "variable",
///         "nrql_query": {
///             "account_ids": ["12345"],
///             "query": "FROM Transaction SELECT average(duration) FACET appName",
///         },
///         "replacement_strategy": "default",
///         "title": "title",
///         "type": "nrql",
///         "options": [{
///             "show_apply_action": True,
///         }],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampledash = new NewRelic.OneDashboard("exampledash", new()
///     {
///         Name = "New Relic Terraform Example",
///         Permissions = "public_read_only",
///         Pages = new[]
///         {
///             new NewRelic.Inputs.OneDashboardPageArgs
///             {
///                 Name = "New Relic Terraform Example",
///                 WidgetTables = new[]
///                 {
///                     new NewRelic.Inputs.OneDashboardPageWidgetTableArgs
///                     {
///                         Title = "List of Transactions",
///                         Row = 1,
///                         Column = 4,
///                         Width = 6,
///                         Height = 3,
///                         RefreshRate = "60000",
///                         NrqlQueries = new[]
///                         {
///                             new NewRelic.Inputs.OneDashboardPageWidgetTableNrqlQueryArgs
///                             {
///                                 Query = "FROM Transaction SELECT *",
///                             },
///                         },
///                         InitialSorting = new NewRelic.Inputs.OneDashboardPageWidgetTableInitialSortingArgs
///                         {
///                             Direction = "desc",
///                             Name = "timestamp",
///                         },
///                         DataFormats = new[]
///                         {
///                             new NewRelic.Inputs.OneDashboardPageWidgetTableDataFormatArgs
///                             {
///                                 Name = "duration",
///                                 Type = "decimal",
///                             },
///                         },
///                     },
///                 },
///                 WidgetBillboards = new[]
///                 {
///                     new NewRelic.Inputs.OneDashboardPageWidgetBillboardArgs
///                     {
///                         Title = "Requests per minute",
///                         Row = 1,
///                         Column = 1,
///                         Width = 6,
///                         Height = 3,
///                         RefreshRate = "60000",
///                         DataFormats = new[]
///                         {
///                             new NewRelic.Inputs.OneDashboardPageWidgetBillboardDataFormatArgs
///                             {
///                                 Name = "rate",
///                                 Type = "recent-relative",
///                             },
///                         },
///                         NrqlQueries = new[]
///                         {
///                             new NewRelic.Inputs.OneDashboardPageWidgetBillboardNrqlQueryArgs
///                             {
///                                 Query = "FROM Transaction SELECT rate(count(*), 1 minute)",
///                             },
///                         },
///                         BillboardSettings = new NewRelic.Inputs.OneDashboardPageWidgetBillboardBillboardSettingsArgs
///                         {
///                             Link = new NewRelic.Inputs.OneDashboardPageWidgetBillboardBillboardSettingsLinkArgs
///                             {
///                                 NewTab = true,
///                                 Title = "Click to view more details",
///                                 Url = "https://example.com",
///                             },
///                             Visual = new NewRelic.Inputs.OneDashboardPageWidgetBillboardBillboardSettingsVisualArgs
///                             {
///                                 Alignment = "inline",
///                                 Display = "auto",
///                             },
///                             GridOptions = new NewRelic.Inputs.OneDashboardPageWidgetBillboardBillboardSettingsGridOptionsArgs
///                             {
///                                 Columns = 4,
///                                 Label = 6,
///                                 Value = 8,
///                             },
///                         },
///                     },
///                 },
///                 WidgetBars = new[]
///                 {
///                     new NewRelic.Inputs.OneDashboardPageWidgetBarArgs
///                     {
///                         Title = "Average transaction duration, by application",
///                         Row = 1,
///                         Column = 7,
///                         Width = 6,
///                         Height = 3,
///                         NrqlQueries = new[]
///                         {
///                             new NewRelic.Inputs.OneDashboardPageWidgetBarNrqlQueryArgs
///                             {
///                                 AccountId = "12345",
///                                 Query = "FROM Transaction SELECT average(duration) FACET appName",
///                             },
///                         },
///                         LinkedEntityGuids = new[]
///                         {
///                             "abc123",
///                         },
///                     },
///                     new NewRelic.Inputs.OneDashboardPageWidgetBarArgs
///                     {
///                         Title = "Average transaction duration, by application",
///                         Row = 4,
///                         Column = 1,
///                         Width = 6,
///                         Height = 3,
///                         RefreshRate = "300000",
///                         NrqlQueries = new[]
///                         {
///                             new NewRelic.Inputs.OneDashboardPageWidgetBarNrqlQueryArgs
///                             {
///                                 AccountId = "12345",
///                                 Query = "FROM Transaction SELECT average(duration) FACET appName",
///                             },
///                         },
///                         FilterCurrentDashboard = true,
///                         Colors = new[]
///                         {
///                             new NewRelic.Inputs.OneDashboardPageWidgetBarColorArgs
///                             {
///                                 Color = "#722727",
///                                 SeriesOverrides = new[]
///                                 {
///                                     new NewRelic.Inputs.OneDashboardPageWidgetBarColorSeriesOverrideArgs
///                                     {
///                                         Color = "#722322",
///                                         SeriesName = "Node",
///                                     },
///                                     new NewRelic.Inputs.OneDashboardPageWidgetBarColorSeriesOverrideArgs
///                                     {
///                                         Color = "#236f70",
///                                         SeriesName = "Java",
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 WidgetLines = new[]
///                 {
///                     new NewRelic.Inputs.OneDashboardPageWidgetLineArgs
///                     {
///                         Title = "Average transaction duration and the request per minute, by application",
///                         Row = 4,
///                         Column = 7,
///                         Width = 6,
///                         Height = 3,
///                         RefreshRate = "30000",
///                         NrqlQueries = new[]
///                         {
///                             new NewRelic.Inputs.OneDashboardPageWidgetLineNrqlQueryArgs
///                             {
///                                 AccountId = JsonSerializer.Serialize(new object?[]
///                                 {
///                                     1234567,
///                                     2345671,
///                                 }),
///                                 Query = "FROM Transaction select max(duration) as 'max duration' where httpResponseCode = '504' timeseries since 5 minutes ago",
///                             },
///                             new NewRelic.Inputs.OneDashboardPageWidgetLineNrqlQueryArgs
///                             {
///                                 Query = "FROM Transaction SELECT rate(count(*), 1 minute)",
///                             },
///                         },
///                         LegendEnabled = true,
///                         IgnoreTimeRange = false,
///                         YAxisLeftZero = true,
///                         YAxisLeftMin = 0,
///                         YAxisLeftMax = 1,
///                         Tooltip = new NewRelic.Inputs.OneDashboardPageWidgetLineTooltipArgs
///                         {
///                             Mode = "single",
///                         },
///                         YAxisRight = new NewRelic.Inputs.OneDashboardPageWidgetLineYAxisRightArgs
///                         {
///                             YAxisRightZero = true,
///                             YAxisRightMin = 0,
///                             YAxisRightMax = 300,
///                             YAxisRightSeries = new[]
///                             {
///                                 "A",
///                                 "B",
///                             },
///                         },
///                         IsLabelVisible = true,
///                         Thresholds = new[]
///                         {
///                             new NewRelic.Inputs.OneDashboardPageWidgetLineThresholdArgs
///                             {
///                                 Name = "Duration Threshold",
///                                 From = "1",
///                                 To = "2",
///                                 Severity = "critical",
///                             },
///                             new NewRelic.Inputs.OneDashboardPageWidgetLineThresholdArgs
///                             {
///                                 Name = "Duration Threshold Two",
///                                 From = "2.1",
///                                 To = "3.3",
///                                 Severity = "warning",
///                             },
///                         },
///                         Units = new[]
///                         {
///                             new NewRelic.Inputs.OneDashboardPageWidgetLineUnitArgs
///                             {
///                                 Unit = "ms",
///                                 SeriesOverrides = new[]
///                                 {
///                                     new NewRelic.Inputs.OneDashboardPageWidgetLineUnitSeriesOverrideArgs
///                                     {
///                                         Unit = "ms",
///                                         SeriesName = "max duration",
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                     new NewRelic.Inputs.OneDashboardPageWidgetLineArgs
///                     {
///                         Title = "Overall CPU % Statistics",
///                         Row = 1,
///                         Column = 5,
///                         Height = 3,
///                         Width = 4,
///                         NrqlQueries = new[]
///                         {
///                             new NewRelic.Inputs.OneDashboardPageWidgetLineNrqlQueryArgs
///                             {
///                                 Query = @"SELECT average(cpuSystemPercent), average(cpuUserPercent), average(cpuIdlePercent), average(cpuIOWaitPercent) FROM SystemSample  SINCE 1 hour ago TIMESERIES
/// ",
///                             },
///                         },
///                         FacetShowOtherSeries = false,
///                         LegendEnabled = true,
///                         IgnoreTimeRange = false,
///                         YAxisLeftZero = true,
///                         YAxisLeftMin = 0,
///                         YAxisLeftMax = 0,
///                         NullValues = new[]
///                         {
///                             new NewRelic.Inputs.OneDashboardPageWidgetLineNullValueArgs
///                             {
///                                 NullValue = "default",
///                                 SeriesOverrides = new[]
///                                 {
///                                     new NewRelic.Inputs.OneDashboardPageWidgetLineNullValueSeriesOverrideArgs
///                                     {
///                                         NullValue = "remove",
///                                         SeriesName = "Avg Cpu User Percent",
///                                     },
///                                     new NewRelic.Inputs.OneDashboardPageWidgetLineNullValueSeriesOverrideArgs
///                                     {
///                                         NullValue = "zero",
///                                         SeriesName = "Avg Cpu Idle Percent",
///                                     },
///                                     new NewRelic.Inputs.OneDashboardPageWidgetLineNullValueSeriesOverrideArgs
///                                     {
///                                         NullValue = "default",
///                                         SeriesName = "Avg Cpu IO Wait Percent",
///                                     },
///                                     new NewRelic.Inputs.OneDashboardPageWidgetLineNullValueSeriesOverrideArgs
///                                     {
///                                         NullValue = "preserve",
///                                         SeriesName = "Avg Cpu System Percent",
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///                 WidgetMarkdowns = new[]
///                 {
///                     new NewRelic.Inputs.OneDashboardPageWidgetMarkdownArgs
///                     {
///                         Title = "Dashboard Note",
///                         Row = 7,
///                         Column = 1,
///                         Width = 12,
///                         Height = 3,
///                         Text = @"### Helpful Links
///
/// * [New Relic One](https://one.newrelic.com)
/// * [Developer Portal](https://developer.newrelic.com)",
///                     },
///                 },
///             },
///         },
///         Variables = new[]
///         {
///             new NewRelic.Inputs.OneDashboardVariableArgs
///             {
///                 DefaultValues = new[]
///                 {
///                     "value",
///                 },
///                 IsMultiSelection = true,
///                 Items = new[]
///                 {
///                     new NewRelic.Inputs.OneDashboardVariableItemArgs
///                     {
///                         Title = "item",
///                         Value = "ITEM",
///                     },
///                 },
///                 Name = "variable",
///                 NrqlQuery = new NewRelic.Inputs.OneDashboardVariableNrqlQueryArgs
///                 {
///                     AccountIds = new[]
///                     {
///                         "12345",
///                     },
///                     Query = "FROM Transaction SELECT average(duration) FACET appName",
///                 },
///                 ReplacementStrategy = "default",
///                 Title = "title",
///                 Type = "nrql",
///                 Options = new[]
///                 {
///                     new NewRelic.Inputs.OneDashboardVariableOptionArgs
///                     {
///                         ShowApplyAction = true,
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal([]float64{
/// 			1234567,
/// 			2345671,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = newrelic.NewOneDashboard(ctx, "exampledash", &newrelic.OneDashboardArgs{
/// 			Name:        pulumi.String("New Relic Terraform Example"),
/// 			Permissions: pulumi.String("public_read_only"),
/// 			Pages: newrelic.OneDashboardPageArray{
/// 				&newrelic.OneDashboardPageArgs{
/// 					Name: pulumi.String("New Relic Terraform Example"),
/// 					WidgetTables: newrelic.OneDashboardPageWidgetTableArray{
/// 						&newrelic.OneDashboardPageWidgetTableArgs{
/// 							Title:       pulumi.String("List of Transactions"),
/// 							Row:         pulumi.Int(1),
/// 							Column:      pulumi.Int(4),
/// 							Width:       pulumi.Int(6),
/// 							Height:      pulumi.Int(3),
/// 							RefreshRate: pulumi.String("60000"),
/// 							NrqlQueries: newrelic.OneDashboardPageWidgetTableNrqlQueryArray{
/// 								&newrelic.OneDashboardPageWidgetTableNrqlQueryArgs{
/// 									Query: pulumi.String("FROM Transaction SELECT *"),
/// 								},
/// 							},
/// 							InitialSorting: &newrelic.OneDashboardPageWidgetTableInitialSortingArgs{
/// 								Direction: pulumi.String("desc"),
/// 								Name:      pulumi.String("timestamp"),
/// 							},
/// 							DataFormats: newrelic.OneDashboardPageWidgetTableDataFormatArray{
/// 								&newrelic.OneDashboardPageWidgetTableDataFormatArgs{
/// 									Name: pulumi.String("duration"),
/// 									Type: pulumi.String("decimal"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					WidgetBillboards: newrelic.OneDashboardPageWidgetBillboardArray{
/// 						&newrelic.OneDashboardPageWidgetBillboardArgs{
/// 							Title:       pulumi.String("Requests per minute"),
/// 							Row:         pulumi.Int(1),
/// 							Column:      pulumi.Int(1),
/// 							Width:       pulumi.Int(6),
/// 							Height:      pulumi.Int(3),
/// 							RefreshRate: pulumi.String("60000"),
/// 							DataFormats: newrelic.OneDashboardPageWidgetBillboardDataFormatArray{
/// 								&newrelic.OneDashboardPageWidgetBillboardDataFormatArgs{
/// 									Name: pulumi.String("rate"),
/// 									Type: pulumi.String("recent-relative"),
/// 								},
/// 							},
/// 							NrqlQueries: newrelic.OneDashboardPageWidgetBillboardNrqlQueryArray{
/// 								&newrelic.OneDashboardPageWidgetBillboardNrqlQueryArgs{
/// 									Query: pulumi.String("FROM Transaction SELECT rate(count(*), 1 minute)"),
/// 								},
/// 							},
/// 							BillboardSettings: &newrelic.OneDashboardPageWidgetBillboardBillboardSettingsArgs{
/// 								Link: &newrelic.OneDashboardPageWidgetBillboardBillboardSettingsLinkArgs{
/// 									NewTab: pulumi.Bool(true),
/// 									Title:  pulumi.String("Click to view more details"),
/// 									Url:    pulumi.String("https://example.com"),
/// 								},
/// 								Visual: &newrelic.OneDashboardPageWidgetBillboardBillboardSettingsVisualArgs{
/// 									Alignment: pulumi.String("inline"),
/// 									Display:   pulumi.String("auto"),
/// 								},
/// 								GridOptions: &newrelic.OneDashboardPageWidgetBillboardBillboardSettingsGridOptionsArgs{
/// 									Columns: pulumi.Int(4),
/// 									Label:   pulumi.Int(6),
/// 									Value:   pulumi.Int(8),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					WidgetBars: newrelic.OneDashboardPageWidgetBarArray{
/// 						&newrelic.OneDashboardPageWidgetBarArgs{
/// 							Title:  pulumi.String("Average transaction duration, by application"),
/// 							Row:    pulumi.Int(1),
/// 							Column: pulumi.Int(7),
/// 							Width:  pulumi.Int(6),
/// 							Height: pulumi.Int(3),
/// 							NrqlQueries: newrelic.OneDashboardPageWidgetBarNrqlQueryArray{
/// 								&newrelic.OneDashboardPageWidgetBarNrqlQueryArgs{
/// 									AccountId: pulumi.String("12345"),
/// 									Query:     pulumi.String("FROM Transaction SELECT average(duration) FACET appName"),
/// 								},
/// 							},
/// 							LinkedEntityGuids: pulumi.StringArray{
/// 								pulumi.String("abc123"),
/// 							},
/// 						},
/// 						&newrelic.OneDashboardPageWidgetBarArgs{
/// 							Title:       pulumi.String("Average transaction duration, by application"),
/// 							Row:         pulumi.Int(4),
/// 							Column:      pulumi.Int(1),
/// 							Width:       pulumi.Int(6),
/// 							Height:      pulumi.Int(3),
/// 							RefreshRate: pulumi.String("300000"),
/// 							NrqlQueries: newrelic.OneDashboardPageWidgetBarNrqlQueryArray{
/// 								&newrelic.OneDashboardPageWidgetBarNrqlQueryArgs{
/// 									AccountId: pulumi.String("12345"),
/// 									Query:     pulumi.String("FROM Transaction SELECT average(duration) FACET appName"),
/// 								},
/// 							},
/// 							FilterCurrentDashboard: pulumi.Bool(true),
/// 							Colors: newrelic.OneDashboardPageWidgetBarColorArray{
/// 								&newrelic.OneDashboardPageWidgetBarColorArgs{
/// 									Color: pulumi.String("#722727"),
/// 									SeriesOverrides: newrelic.OneDashboardPageWidgetBarColorSeriesOverrideArray{
/// 										&newrelic.OneDashboardPageWidgetBarColorSeriesOverrideArgs{
/// 											Color:      pulumi.String("#722322"),
/// 											SeriesName: pulumi.String("Node"),
/// 										},
/// 										&newrelic.OneDashboardPageWidgetBarColorSeriesOverrideArgs{
/// 											Color:      pulumi.String("#236f70"),
/// 											SeriesName: pulumi.String("Java"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					WidgetLines: newrelic.OneDashboardPageWidgetLineArray{
/// 						&newrelic.OneDashboardPageWidgetLineArgs{
/// 							Title:       pulumi.String("Average transaction duration and the request per minute, by application"),
/// 							Row:         pulumi.Int(4),
/// 							Column:      pulumi.Int(7),
/// 							Width:       pulumi.Int(6),
/// 							Height:      pulumi.Int(3),
/// 							RefreshRate: pulumi.String("30000"),
/// 							NrqlQueries: newrelic.OneDashboardPageWidgetLineNrqlQueryArray{
/// 								&newrelic.OneDashboardPageWidgetLineNrqlQueryArgs{
/// 									AccountId: pulumi.String(json0),
/// 									Query:     pulumi.String("FROM Transaction select max(duration) as 'max duration' where httpResponseCode = '504' timeseries since 5 minutes ago"),
/// 								},
/// 								&newrelic.OneDashboardPageWidgetLineNrqlQueryArgs{
/// 									Query: pulumi.String("FROM Transaction SELECT rate(count(*), 1 minute)"),
/// 								},
/// 							},
/// 							LegendEnabled:   pulumi.Bool(true),
/// 							IgnoreTimeRange: pulumi.Bool(false),
/// 							YAxisLeftZero:   pulumi.Bool(true),
/// 							YAxisLeftMin:    pulumi.Float64(0),
/// 							YAxisLeftMax:    pulumi.Float64(1),
/// 							Tooltip: &newrelic.OneDashboardPageWidgetLineTooltipArgs{
/// 								Mode: pulumi.String("single"),
/// 							},
/// 							YAxisRight: &newrelic.OneDashboardPageWidgetLineYAxisRightArgs{
/// 								YAxisRightZero: pulumi.Bool(true),
/// 								YAxisRightMin:  pulumi.Float64(0),
/// 								YAxisRightMax:  pulumi.Float64(300),
/// 								YAxisRightSeries: pulumi.StringArray{
/// 									pulumi.String("A"),
/// 									pulumi.String("B"),
/// 								},
/// 							},
/// 							IsLabelVisible: pulumi.Bool(true),
/// 							Thresholds: newrelic.OneDashboardPageWidgetLineThresholdArray{
/// 								&newrelic.OneDashboardPageWidgetLineThresholdArgs{
/// 									Name:     pulumi.String("Duration Threshold"),
/// 									From:     pulumi.String("1"),
/// 									To:       pulumi.String("2"),
/// 									Severity: pulumi.String("critical"),
/// 								},
/// 								&newrelic.OneDashboardPageWidgetLineThresholdArgs{
/// 									Name:     pulumi.String("Duration Threshold Two"),
/// 									From:     pulumi.String("2.1"),
/// 									To:       pulumi.String("3.3"),
/// 									Severity: pulumi.String("warning"),
/// 								},
/// 							},
/// 							Units: newrelic.OneDashboardPageWidgetLineUnitArray{
/// 								&newrelic.OneDashboardPageWidgetLineUnitArgs{
/// 									Unit: pulumi.String("ms"),
/// 									SeriesOverrides: newrelic.OneDashboardPageWidgetLineUnitSeriesOverrideArray{
/// 										&newrelic.OneDashboardPageWidgetLineUnitSeriesOverrideArgs{
/// 											Unit:       pulumi.String("ms"),
/// 											SeriesName: pulumi.String("max duration"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 						&newrelic.OneDashboardPageWidgetLineArgs{
/// 							Title:  pulumi.String("Overall CPU % Statistics"),
/// 							Row:    pulumi.Int(1),
/// 							Column: pulumi.Int(5),
/// 							Height: pulumi.Int(3),
/// 							Width:  pulumi.Int(4),
/// 							NrqlQueries: newrelic.OneDashboardPageWidgetLineNrqlQueryArray{
/// 								&newrelic.OneDashboardPageWidgetLineNrqlQueryArgs{
/// 									Query: pulumi.String("SELECT average(cpuSystemPercent), average(cpuUserPercent), average(cpuIdlePercent), average(cpuIOWaitPercent) FROM SystemSample  SINCE 1 hour ago TIMESERIES\n"),
/// 								},
/// 							},
/// 							FacetShowOtherSeries: pulumi.Bool(false),
/// 							LegendEnabled:        pulumi.Bool(true),
/// 							IgnoreTimeRange:      pulumi.Bool(false),
/// 							YAxisLeftZero:        pulumi.Bool(true),
/// 							YAxisLeftMin:         pulumi.Float64(0),
/// 							YAxisLeftMax:         pulumi.Float64(0),
/// 							NullValues: newrelic.OneDashboardPageWidgetLineNullValueArray{
/// 								&newrelic.OneDashboardPageWidgetLineNullValueArgs{
/// 									NullValue: pulumi.String("default"),
/// 									SeriesOverrides: newrelic.OneDashboardPageWidgetLineNullValueSeriesOverrideArray{
/// 										&newrelic.OneDashboardPageWidgetLineNullValueSeriesOverrideArgs{
/// 											NullValue:  pulumi.String("remove"),
/// 											SeriesName: pulumi.String("Avg Cpu User Percent"),
/// 										},
/// 										&newrelic.OneDashboardPageWidgetLineNullValueSeriesOverrideArgs{
/// 											NullValue:  pulumi.String("zero"),
/// 											SeriesName: pulumi.String("Avg Cpu Idle Percent"),
/// 										},
/// 										&newrelic.OneDashboardPageWidgetLineNullValueSeriesOverrideArgs{
/// 											NullValue:  pulumi.String("default"),
/// 											SeriesName: pulumi.String("Avg Cpu IO Wait Percent"),
/// 										},
/// 										&newrelic.OneDashboardPageWidgetLineNullValueSeriesOverrideArgs{
/// 											NullValue:  pulumi.String("preserve"),
/// 											SeriesName: pulumi.String("Avg Cpu System Percent"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 					WidgetMarkdowns: newrelic.OneDashboardPageWidgetMarkdownArray{
/// 						&newrelic.OneDashboardPageWidgetMarkdownArgs{
/// 							Title:  pulumi.String("Dashboard Note"),
/// 							Row:    pulumi.Int(7),
/// 							Column: pulumi.Int(1),
/// 							Width:  pulumi.Int(12),
/// 							Height: pulumi.Int(3),
/// 							Text:   pulumi.String("### Helpful Links\n\n* [New Relic One](https://one.newrelic.com)\n* [Developer Portal](https://developer.newrelic.com)"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Variables: newrelic.OneDashboardVariableArray{
/// 				&newrelic.OneDashboardVariableArgs{
/// 					DefaultValues: pulumi.StringArray{
/// 						pulumi.String("value"),
/// 					},
/// 					IsMultiSelection: pulumi.Bool(true),
/// 					Items: newrelic.OneDashboardVariableItemArray{
/// 						&newrelic.OneDashboardVariableItemArgs{
/// 							Title: pulumi.String("item"),
/// 							Value: pulumi.String("ITEM"),
/// 						},
/// 					},
/// 					Name: pulumi.String("variable"),
/// 					NrqlQuery: &newrelic.OneDashboardVariableNrqlQueryArgs{
/// 						AccountIds: pulumi.StringArray{
/// 							pulumi.String("12345"),
/// 						},
/// 						Query: pulumi.String("FROM Transaction SELECT average(duration) FACET appName"),
/// 					},
/// 					ReplacementStrategy: pulumi.String("default"),
/// 					Title:               pulumi.String("title"),
/// 					Type:                pulumi.String("nrql"),
/// 					Options: newrelic.OneDashboardVariableOptionArray{
/// 						&newrelic.OneDashboardVariableOptionArgs{
/// 							ShowApplyAction: pulumi.Bool(true),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.newrelic.OneDashboard;
/// import com.pulumi.newrelic.OneDashboardArgs;
/// import com.pulumi.newrelic.inputs.OneDashboardPageArgs;
/// import com.pulumi.newrelic.inputs.OneDashboardVariableArgs;
/// import com.pulumi.newrelic.inputs.OneDashboardVariableNrqlQueryArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var exampledash = new OneDashboard("exampledash", OneDashboardArgs.builder()
///             .name("New Relic Terraform Example")
///             .permissions("public_read_only")
///             .pages(OneDashboardPageArgs.builder()
///                 .name("New Relic Terraform Example")
///                 .widgetTables(OneDashboardPageWidgetTableArgs.builder()
///                     .title("List of Transactions")
///                     .row(1)
///                     .column(4)
///                     .width(6)
///                     .height(3)
///                     .refreshRate("60000")
///                     .nrqlQueries(OneDashboardPageWidgetTableNrqlQueryArgs.builder()
///                         .query("FROM Transaction SELECT *")
///                         .build())
///                     .initialSorting(OneDashboardPageWidgetTableInitialSortingArgs.builder()
///                         .direction("desc")
///                         .name("timestamp")
///                         .build())
///                     .dataFormats(OneDashboardPageWidgetTableDataFormatArgs.builder()
///                         .name("duration")
///                         .type("decimal")
///                         .build())
///                     .build())
///                 .widgetBillboards(OneDashboardPageWidgetBillboardArgs.builder()
///                     .title("Requests per minute")
///                     .row(1)
///                     .column(1)
///                     .width(6)
///                     .height(3)
///                     .refreshRate("60000")
///                     .dataFormats(OneDashboardPageWidgetBillboardDataFormatArgs.builder()
///                         .name("rate")
///                         .type("recent-relative")
///                         .build())
///                     .nrqlQueries(OneDashboardPageWidgetBillboardNrqlQueryArgs.builder()
///                         .query("FROM Transaction SELECT rate(count(*), 1 minute)")
///                         .build())
///                     .billboardSettings(OneDashboardPageWidgetBillboardBillboardSettingsArgs.builder()
///                         .link(OneDashboardPageWidgetBillboardBillboardSettingsLinkArgs.builder()
///                             .newTab(true)
///                             .title("Click to view more details")
///                             .url("https://example.com")
///                             .build())
///                         .visual(OneDashboardPageWidgetBillboardBillboardSettingsVisualArgs.builder()
///                             .alignment("inline")
///                             .display("auto")
///                             .build())
///                         .gridOptions(OneDashboardPageWidgetBillboardBillboardSettingsGridOptionsArgs.builder()
///                             .columns(4)
///                             .label(6)
///                             .value(8)
///                             .build())
///                         .build())
///                     .build())
///                 .widgetBars(
///                     OneDashboardPageWidgetBarArgs.builder()
///                         .title("Average transaction duration, by application")
///                         .row(1)
///                         .column(7)
///                         .width(6)
///                         .height(3)
///                         .nrqlQueries(OneDashboardPageWidgetBarNrqlQueryArgs.builder()
///                             .accountId("12345")
///                             .query("FROM Transaction SELECT average(duration) FACET appName")
///                             .build())
///                         .linkedEntityGuids("abc123")
///                         .build(),
///                     OneDashboardPageWidgetBarArgs.builder()
///                         .title("Average transaction duration, by application")
///                         .row(4)
///                         .column(1)
///                         .width(6)
///                         .height(3)
///                         .refreshRate("300000")
///                         .nrqlQueries(OneDashboardPageWidgetBarNrqlQueryArgs.builder()
///                             .accountId("12345")
///                             .query("FROM Transaction SELECT average(duration) FACET appName")
///                             .build())
///                         .filterCurrentDashboard(true)
///                         .colors(OneDashboardPageWidgetBarColorArgs.builder()
///                             .color("#722727")
///                             .seriesOverrides(
///                                 OneDashboardPageWidgetBarColorSeriesOverrideArgs.builder()
///                                     .color("#722322")
///                                     .seriesName("Node")
///                                     .build(),
///                                 OneDashboardPageWidgetBarColorSeriesOverrideArgs.builder()
///                                     .color("#236f70")
///                                     .seriesName("Java")
///                                     .build())
///                             .build())
///                         .build())
///                 .widgetLines(
///                     OneDashboardPageWidgetLineArgs.builder()
///                         .title("Average transaction duration and the request per minute, by application")
///                         .row(4)
///                         .column(7)
///                         .width(6)
///                         .height(3)
///                         .refreshRate("30000")
///                         .nrqlQueries(
///                             OneDashboardPageWidgetLineNrqlQueryArgs.builder()
///                                 .accountId(serializeJson(
///                                     jsonArray(
///                                         1234567,
///                                         2345671
///                                     )))
///                                 .query("FROM Transaction select max(duration) as 'max duration' where httpResponseCode = '504' timeseries since 5 minutes ago")
///                                 .build(),
///                             OneDashboardPageWidgetLineNrqlQueryArgs.builder()
///                                 .query("FROM Transaction SELECT rate(count(*), 1 minute)")
///                                 .build())
///                         .legendEnabled(true)
///                         .ignoreTimeRange(false)
///                         .yAxisLeftZero(true)
///                         .yAxisLeftMin(0.0)
///                         .yAxisLeftMax(1.0)
///                         .tooltip(OneDashboardPageWidgetLineTooltipArgs.builder()
///                             .mode("single")
///                             .build())
///                         .yAxisRight(OneDashboardPageWidgetLineYAxisRightArgs.builder()
///                             .yAxisRightZero(true)
///                             .yAxisRightMin(0.0)
///                             .yAxisRightMax(300.0)
///                             .yAxisRightSeries(
///                                 "A",
///                                 "B")
///                             .build())
///                         .isLabelVisible(true)
///                         .thresholds(
///                             OneDashboardPageWidgetLineThresholdArgs.builder()
///                                 .name("Duration Threshold")
///                                 .from("1")
///                                 .to("2")
///                                 .severity("critical")
///                                 .build(),
///                             OneDashboardPageWidgetLineThresholdArgs.builder()
///                                 .name("Duration Threshold Two")
///                                 .from("2.1")
///                                 .to("3.3")
///                                 .severity("warning")
///                                 .build())
///                         .units(OneDashboardPageWidgetLineUnitArgs.builder()
///                             .unit("ms")
///                             .seriesOverrides(OneDashboardPageWidgetLineUnitSeriesOverrideArgs.builder()
///                                 .unit("ms")
///                                 .seriesName("max duration")
///                                 .build())
///                             .build())
///                         .build(),
///                     OneDashboardPageWidgetLineArgs.builder()
///                         .title("Overall CPU % Statistics")
///                         .row(1)
///                         .column(5)
///                         .height(3)
///                         .width(4)
///                         .nrqlQueries(OneDashboardPageWidgetLineNrqlQueryArgs.builder()
///                             .query("""
/// SELECT average(cpuSystemPercent), average(cpuUserPercent), average(cpuIdlePercent), average(cpuIOWaitPercent) FROM SystemSample  SINCE 1 hour ago TIMESERIES
///                             """)
///                             .build())
///                         .facetShowOtherSeries(false)
///                         .legendEnabled(true)
///                         .ignoreTimeRange(false)
///                         .yAxisLeftZero(true)
///                         .yAxisLeftMin(0.0)
///                         .yAxisLeftMax(0.0)
///                         .nullValues(OneDashboardPageWidgetLineNullValueArgs.builder()
///                             .nullValue("default")
///                             .seriesOverrides(
///                                 OneDashboardPageWidgetLineNullValueSeriesOverrideArgs.builder()
///                                     .nullValue("remove")
///                                     .seriesName("Avg Cpu User Percent")
///                                     .build(),
///                                 OneDashboardPageWidgetLineNullValueSeriesOverrideArgs.builder()
///                                     .nullValue("zero")
///                                     .seriesName("Avg Cpu Idle Percent")
///                                     .build(),
///                                 OneDashboardPageWidgetLineNullValueSeriesOverrideArgs.builder()
///                                     .nullValue("default")
///                                     .seriesName("Avg Cpu IO Wait Percent")
///                                     .build(),
///                                 OneDashboardPageWidgetLineNullValueSeriesOverrideArgs.builder()
///                                     .nullValue("preserve")
///                                     .seriesName("Avg Cpu System Percent")
///                                     .build())
///                             .build())
///                         .build())
///                 .widgetMarkdowns(OneDashboardPageWidgetMarkdownArgs.builder()
///                     .title("Dashboard Note")
///                     .row(7)
///                     .column(1)
///                     .width(12)
///                     .height(3)
///                     .text("""
/// ### Helpful Links
///
/// * [New Relic One](https://one.newrelic.com)
/// * [Developer Portal](https://developer.newrelic.com)                    """)
///                     .build())
///                 .build())
///             .variables(OneDashboardVariableArgs.builder()
///                 .defaultValues("value")
///                 .isMultiSelection(true)
///                 .items(OneDashboardVariableItemArgs.builder()
///                     .title("item")
///                     .value("ITEM")
///                     .build())
///                 .name("variable")
///                 .nrqlQuery(OneDashboardVariableNrqlQueryArgs.builder()
///                     .accountIds("12345")
///                     .query("FROM Transaction SELECT average(duration) FACET appName")
///                     .build())
///                 .replacementStrategy("default")
///                 .title("title")
///                 .type("nrql")
///                 .options(OneDashboardVariableOptionArgs.builder()
///                     .showApplyAction(true)
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampledash:
///     type: newrelic:OneDashboard
///     properties:
///       name: New Relic Terraform Example
///       permissions: public_read_only
///       pages:
///         - name: New Relic Terraform Example
///           widgetTables:
///             - title: List of Transactions
///               row: 1
///               column: 4
///               width: 6
///               height: 3
///               refreshRate: 60000
///               nrqlQueries:
///                 - query: FROM Transaction SELECT *
///               initialSorting:
///                 direction: desc
///                 name: timestamp
///               dataFormats:
///                 - name: duration
///                   type: decimal
///           widgetBillboards:
///             - title: Requests per minute
///               row: 1
///               column: 1
///               width: 6
///               height: 3
///               refreshRate: 60000
///               dataFormats:
///                 - name: rate
///                   type: recent-relative
///               nrqlQueries:
///                 - query: FROM Transaction SELECT rate(count(*), 1 minute)
///               billboardSettings:
///                 link:
///                   newTab: true
///                   title: Click to view more details
///                   url: https://example.com
///                 visual:
///                   alignment: inline
///                   display: auto
///                 gridOptions:
///                   columns: 4
///                   label: 6
///                   value: 8
///           widgetBars:
///             - title: Average transaction duration, by application
///               row: 1
///               column: 7
///               width: 6
///               height: 3
///               nrqlQueries:
///                 - accountId: 12345
///                   query: FROM Transaction SELECT average(duration) FACET appName
///               linkedEntityGuids:
///                 - abc123
///             - title: Average transaction duration, by application
///               row: 4
///               column: 1
///               width: 6
///               height: 3
///               refreshRate: 300000
///               nrqlQueries:
///                 - accountId: 12345
///                   query: FROM Transaction SELECT average(duration) FACET appName
///               filterCurrentDashboard: true
///               colors:
///                 - color: '#722727'
///                   seriesOverrides:
///                     - color: '#722322'
///                       seriesName: Node
///                     - color: '#236f70'
///                       seriesName: Java
///           widgetLines:
///             - title: Average transaction duration and the request per minute, by application
///               row: 4
///               column: 7
///               width: 6
///               height: 3
///               refreshRate: 30000
///               nrqlQueries:
///                 - accountId:
///                     fn::toJSON:
///                       - 1.234567e+06
///                       - 2.345671e+06
///                   query: FROM Transaction select max(duration) as 'max duration' where httpResponseCode = '504' timeseries since 5 minutes ago
///                 - query: FROM Transaction SELECT rate(count(*), 1 minute)
///               legendEnabled: true
///               ignoreTimeRange: false
///               yAxisLeftZero: true
///               yAxisLeftMin: 0
///               yAxisLeftMax: 1
///               tooltip:
///                 mode: single
///               yAxisRight:
///                 yAxisRightZero: true
///                 yAxisRightMin: 0
///                 yAxisRightMax: 300
///                 yAxisRightSeries:
///                   - A
///                   - B
///               isLabelVisible: true
///               thresholds:
///                 - name: Duration Threshold
///                   from: 1
///                   to: 2
///                   severity: critical
///                 - name: Duration Threshold Two
///                   from: 2.1
///                   to: 3.3
///                   severity: warning
///               units:
///                 - unit: ms
///                   seriesOverrides:
///                     - unit: ms
///                       seriesName: max duration
///             - title: Overall CPU % Statistics
///               row: 1
///               column: 5
///               height: 3
///               width: 4
///               nrqlQueries:
///                 - query: |
///                     SELECT average(cpuSystemPercent), average(cpuUserPercent), average(cpuIdlePercent), average(cpuIOWaitPercent) FROM SystemSample  SINCE 1 hour ago TIMESERIES
///               facetShowOtherSeries: false
///               legendEnabled: true
///               ignoreTimeRange: false
///               yAxisLeftZero: true
///               yAxisLeftMin: 0
///               yAxisLeftMax: 0
///               nullValues:
///                 - nullValue: default
///                   seriesOverrides:
///                     - nullValue: remove
///                       seriesName: Avg Cpu User Percent
///                     - nullValue: zero
///                       seriesName: Avg Cpu Idle Percent
///                     - nullValue: default
///                       seriesName: Avg Cpu IO Wait Percent
///                     - nullValue: preserve
///                       seriesName: Avg Cpu System Percent
///           widgetMarkdowns:
///             - title: Dashboard Note
///               row: 7
///               column: 1
///               width: 12
///               height: 3
///               text: |-
///                 ### Helpful Links
///
///                 * [New Relic One](https://one.newrelic.com)
///                 * [Developer Portal](https://developer.newrelic.com)
///       variables:
///         - defaultValues:
///             - value
///           isMultiSelection: true
///           items:
///             - title: item
///               value: ITEM
///           name: variable
///           nrqlQuery:
///             accountIds:
///               - 12345
///             query: FROM Transaction SELECT average(duration) FACET appName
///           replacementStrategy: default
///           title: title
///           type: nrql
///           options:
///             - showApplyAction: true
/// ```
///
/// See additional examples.
///
/// ## Additional Examples
///
/// ### Use the New Relic CLI to convert an existing dashboard
///
/// You can use the New Relic CLI to convert an existing dashboard into HCL code for use in Terraform.
///
/// 1. [Download and install the New Relic CLI](https://github.com/newrelic/newrelic-cli#installation--upgrades)
/// 2. [Export the dashboard you want to add to Terraform from the UI](https://docs.newrelic.com/docs/query-your-data/explore-query-data/dashboards/dashboards-charts-import-export-data/#dashboards). Copy the JSON from the UI and paste it into a `.json` file.
/// 3. Convert the `.json` file to HCL using the CLI: `cat dashboard.json | newrelic utils terraform dashboard --label my_dashboard_resource`
///
/// If you encounter any issues converting your dashboard, [please create a ticket on the New Relic CLI Github repository](https://github.com/newrelic/newrelic-cli/issues/new/choose).
///
/// ### Create a two page dashboard
///
/// The example below shows how you can display data for an application from a primary account and an application from a subaccount. In order to create cross-account widgets, you must use an API key from a user with admin permissions in the primary account. Please see the `widget` attribute documentation for more details.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const multiPageDashboard = new newrelic.OneDashboard("multi_page_dashboard", {
///     name: "My Multi-page dashboard",
///     permissions: "private",
///     pages: [
///         {
///             name: "My Multi-page dashboard",
///             widgetBars: [{
///                 title: "foo",
///                 row: 1,
///                 column: 1,
///                 nrqlQueries: [{
///                     query: "FROM Transaction SELECT count(*) FACET name",
///                 }],
///                 linkedEntityGuids: ["abc123"],
///             }],
///         },
///         {
///             name: "Multi-query Page",
///             widgetLines: [{
///                 title: "Comparing throughput cross-account",
///                 row: 1,
///                 column: 1,
///                 width: 12,
///                 nrqlQueries: [
///                     {
///                         accountId: firstAccountID,
///                         query: "FROM Metric SELECT rate(count(apm.service.transaction.duration), 1 minute) as 'First Account Throughput' TIMESERIES",
///                     },
///                     {
///                         accountId: secondAccountID,
///                         query: "FROM Metric SELECT rate(count(apm.service.transaction.duration), 1 minute) as 'Second Account Throughput' TIMESERIES",
///                     },
///                 ],
///                 yAxisLeftZero: false,
///             }],
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// multi_page_dashboard = newrelic.OneDashboard("multi_page_dashboard",
///     name="My Multi-page dashboard",
///     permissions="private",
///     pages=[
///         {
///             "name": "My Multi-page dashboard",
///             "widget_bars": [{
///                 "title": "foo",
///                 "row": 1,
///                 "column": 1,
///                 "nrql_queries": [{
///                     "query": "FROM Transaction SELECT count(*) FACET name",
///                 }],
///                 "linked_entity_guids": ["abc123"],
///             }],
///         },
///         {
///             "name": "Multi-query Page",
///             "widget_lines": [{
///                 "title": "Comparing throughput cross-account",
///                 "row": 1,
///                 "column": 1,
///                 "width": 12,
///                 "nrql_queries": [
///                     {
///                         "account_id": first_account_id,
///                         "query": "FROM Metric SELECT rate(count(apm.service.transaction.duration), 1 minute) as 'First Account Throughput' TIMESERIES",
///                     },
///                     {
///                         "account_id": second_account_id,
///                         "query": "FROM Metric SELECT rate(count(apm.service.transaction.duration), 1 minute) as 'Second Account Throughput' TIMESERIES",
///                     },
///                 ],
///                 "y_axis_left_zero": False,
///             }],
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var multiPageDashboard = new NewRelic.OneDashboard("multi_page_dashboard", new()
///     {
///         Name = "My Multi-page dashboard",
///         Permissions = "private",
///         Pages = new[]
///         {
///             new NewRelic.Inputs.OneDashboardPageArgs
///             {
///                 Name = "My Multi-page dashboard",
///                 WidgetBars = new[]
///                 {
///                     new NewRelic.Inputs.OneDashboardPageWidgetBarArgs
///                     {
///                         Title = "foo",
///                         Row = 1,
///                         Column = 1,
///                         NrqlQueries = new[]
///                         {
///                             new NewRelic.Inputs.OneDashboardPageWidgetBarNrqlQueryArgs
///                             {
///                                 Query = "FROM Transaction SELECT count(*) FACET name",
///                             },
///                         },
///                         LinkedEntityGuids = new[]
///                         {
///                             "abc123",
///                         },
///                     },
///                 },
///             },
///             new NewRelic.Inputs.OneDashboardPageArgs
///             {
///                 Name = "Multi-query Page",
///                 WidgetLines = new[]
///                 {
///                     new NewRelic.Inputs.OneDashboardPageWidgetLineArgs
///                     {
///                         Title = "Comparing throughput cross-account",
///                         Row = 1,
///                         Column = 1,
///                         Width = 12,
///                         NrqlQueries = new[]
///                         {
///                             new NewRelic.Inputs.OneDashboardPageWidgetLineNrqlQueryArgs
///                             {
///                                 AccountId = firstAccountID,
///                                 Query = "FROM Metric SELECT rate(count(apm.service.transaction.duration), 1 minute) as 'First Account Throughput' TIMESERIES",
///                             },
///                             new NewRelic.Inputs.OneDashboardPageWidgetLineNrqlQueryArgs
///                             {
///                                 AccountId = secondAccountID,
///                                 Query = "FROM Metric SELECT rate(count(apm.service.transaction.duration), 1 minute) as 'Second Account Throughput' TIMESERIES",
///                             },
///                         },
///                         YAxisLeftZero = false,
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := newrelic.NewOneDashboard(ctx, "multi_page_dashboard", &newrelic.OneDashboardArgs{
/// 			Name:        pulumi.String("My Multi-page dashboard"),
/// 			Permissions: pulumi.String("private"),
/// 			Pages: newrelic.OneDashboardPageArray{
/// 				&newrelic.OneDashboardPageArgs{
/// 					Name: pulumi.String("My Multi-page dashboard"),
/// 					WidgetBars: newrelic.OneDashboardPageWidgetBarArray{
/// 						&newrelic.OneDashboardPageWidgetBarArgs{
/// 							Title:  pulumi.String("foo"),
/// 							Row:    pulumi.Int(1),
/// 							Column: pulumi.Int(1),
/// 							NrqlQueries: newrelic.OneDashboardPageWidgetBarNrqlQueryArray{
/// 								&newrelic.OneDashboardPageWidgetBarNrqlQueryArgs{
/// 									Query: pulumi.String("FROM Transaction SELECT count(*) FACET name"),
/// 								},
/// 							},
/// 							LinkedEntityGuids: pulumi.StringArray{
/// 								pulumi.String("abc123"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&newrelic.OneDashboardPageArgs{
/// 					Name: pulumi.String("Multi-query Page"),
/// 					WidgetLines: newrelic.OneDashboardPageWidgetLineArray{
/// 						&newrelic.OneDashboardPageWidgetLineArgs{
/// 							Title:  pulumi.String("Comparing throughput cross-account"),
/// 							Row:    pulumi.Int(1),
/// 							Column: pulumi.Int(1),
/// 							Width:  pulumi.Int(12),
/// 							NrqlQueries: newrelic.OneDashboardPageWidgetLineNrqlQueryArray{
/// 								&newrelic.OneDashboardPageWidgetLineNrqlQueryArgs{
/// 									AccountId: pulumi.Any(firstAccountID),
/// 									Query:     pulumi.String("FROM Metric SELECT rate(count(apm.service.transaction.duration), 1 minute) as 'First Account Throughput' TIMESERIES"),
/// 								},
/// 								&newrelic.OneDashboardPageWidgetLineNrqlQueryArgs{
/// 									AccountId: pulumi.Any(secondAccountID),
/// 									Query:     pulumi.String("FROM Metric SELECT rate(count(apm.service.transaction.duration), 1 minute) as 'Second Account Throughput' TIMESERIES"),
/// 								},
/// 							},
/// 							YAxisLeftZero: pulumi.Bool(false),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.newrelic.OneDashboard;
/// import com.pulumi.newrelic.OneDashboardArgs;
/// import com.pulumi.newrelic.inputs.OneDashboardPageArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var multiPageDashboard = new OneDashboard("multiPageDashboard", OneDashboardArgs.builder()
///             .name("My Multi-page dashboard")
///             .permissions("private")
///             .pages(
///                 OneDashboardPageArgs.builder()
///                     .name("My Multi-page dashboard")
///                     .widgetBars(OneDashboardPageWidgetBarArgs.builder()
///                         .title("foo")
///                         .row(1)
///                         .column(1)
///                         .nrqlQueries(OneDashboardPageWidgetBarNrqlQueryArgs.builder()
///                             .query("FROM Transaction SELECT count(*) FACET name")
///                             .build())
///                         .linkedEntityGuids("abc123")
///                         .build())
///                     .build(),
///                 OneDashboardPageArgs.builder()
///                     .name("Multi-query Page")
///                     .widgetLines(OneDashboardPageWidgetLineArgs.builder()
///                         .title("Comparing throughput cross-account")
///                         .row(1)
///                         .column(1)
///                         .width(12)
///                         .nrqlQueries(
///                             OneDashboardPageWidgetLineNrqlQueryArgs.builder()
///                                 .accountId(firstAccountID)
///                                 .query("FROM Metric SELECT rate(count(apm.service.transaction.duration), 1 minute) as 'First Account Throughput' TIMESERIES")
///                                 .build(),
///                             OneDashboardPageWidgetLineNrqlQueryArgs.builder()
///                                 .accountId(secondAccountID)
///                                 .query("FROM Metric SELECT rate(count(apm.service.transaction.duration), 1 minute) as 'Second Account Throughput' TIMESERIES")
///                                 .build())
///                         .yAxisLeftZero(false)
///                         .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   multiPageDashboard:
///     type: newrelic:OneDashboard
///     name: multi_page_dashboard
///     properties:
///       name: My Multi-page dashboard
///       permissions: private
///       pages:
///         - name: My Multi-page dashboard
///           widgetBars:
///             - title: foo
///               row: 1
///               column: 1
///               nrqlQueries:
///                 - query: FROM Transaction SELECT count(*) FACET name
///               linkedEntityGuids:
///                 - abc123
///         - name: Multi-query Page
///           widgetLines:
///             - title: Comparing throughput cross-account
///               row: 1
///               column: 1
///               width: 12
///               nrqlQueries:
///                 - accountId: ${firstAccountID}
///                   query: FROM Metric SELECT rate(count(apm.service.transaction.duration), 1 minute) as 'First Account Throughput' TIMESERIES
///                 - accountId: ${secondAccountID}
///                   query: FROM Metric SELECT rate(count(apm.service.transaction.duration), 1 minute) as 'Second Account Throughput' TIMESERIES
///               yAxisLeftZero: false
/// ```
///
///
/// ## Import
///
/// New Relic dashboards can be imported using their GUID, e.g.
///
/// ```bash
/// $ terraform import newrelic_one_dashboard.my_dashboard <dashboard GUID>
/// ```
class OneDashboard extends pulumi.CustomResource {
  /// Determines the New Relic account where the dashboard will be created. Defaults to the account associated with the API key used.
  late final pulumi.Output<String> accountId;
  /// Brief text describing the dashboard.
  late final pulumi.Output<String?> description;
  /// The unique entity identifier of the dashboard page in New Relic.
  late final pulumi.Output<String> guid;
  /// The title of the dashboard.
  late final pulumi.Output<String> name;
  /// A nested block that describes a page. See Nested page blocks below for details.
  late final pulumi.Output<List<OneDashboardPage>> pages;
  /// The URL for viewing the dashboard.
  late final pulumi.Output<String> permalink;
  /// Determines who can see the dashboard in an account. Valid values are `private`, `public_read_only`, or `public_read_write`.  Defaults to `public_read_only`.
  late final pulumi.Output<String?> permissions;
  /// A nested block that describes a dashboard-local variable. See Nested variable blocks below for details.
  late final pulumi.Output<List<OneDashboardVariable>?> variables;

  /// Creates a new [OneDashboard].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OneDashboard]. {@macro pulumi_index_one_dashboard_one_dashboard_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OneDashboard(
    String name, {
    OneDashboardArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:index/oneDashboard:OneDashboard',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.description = registerOutput<String?>('description');
    this.guid = registerOutput<String>('guid');
    this.name = registerOutput<String>('name');
    this.pages = registerOutput<List<OneDashboardPage>>('pages');
    this.permalink = registerOutput<String>('permalink');
    this.permissions = registerOutput<String?>('permissions');
    this.variables = registerOutput<List<OneDashboardVariable>?>('variables');
  }

  /// Gets an existing [OneDashboard] resource's state with the given [name] and [id].
  static OneDashboard get(
    String name,
    pulumi.Input<String> id, {
    OneDashboardState? state,
  }) {
    return OneDashboard._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OneDashboard._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:index/oneDashboard:OneDashboard',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.description = registerOutput<String?>('description');
    this.guid = registerOutput<String>('guid');
    this.name = registerOutput<String>('name');
    this.pages = registerOutput<List<OneDashboardPage>>('pages');
    this.permalink = registerOutput<String>('permalink');
    this.permissions = registerOutput<String?>('permissions');
    this.variables = registerOutput<List<OneDashboardVariable>?>('variables');
  }
}
