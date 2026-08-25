import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_chart_args.dart';
import 'dashboard_chart_chart_layout.dart';
import 'dashboard_chart_dashboard_chart.dart';
import 'dashboard_chart_dashboard_query.dart';
import 'dashboard_chart_state.dart';

/// A chart resource used within a NativeDashboard. Its lifecycle (Create, Update, Delete) is managed via custom methods on the NativeDashboard resource.
///
///
/// To get more information about DashboardChart, see:
///
/// * [API documentation](https://cloud.google.com/chronicle/docs/reference/rest/v1/projects.locations.instances.dashboardCharts)
/// * How-to Guides
/// * [Google SecOps Guides](https://cloud.google.com/chronicle/docs/secops/secops-overview)
///
/// ## Example Usage
///
/// ### Chronicle Dashboardchart Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // A Native Dashboard is required to create a Dashboard Chart.
/// const myDashboard = new gcp.chronicle.NativeDashboard("my_dashboard", {
///     location: "us",
///     instance: "00000000-0000-0000-0000-000000000000",
///     displayName: "dashboard_1",
///     description: "dashboard_description",
///     access: "DASHBOARD_PRIVATE",
///     type: "CUSTOM",
///     filters: [{
///         id: "GlobalTimeFilter",
///         displayName: "Global Time Filter",
///         dataSource: "GLOBAL",
///         isStandardTimeRangeFilter: true,
///         isStandardTimeRangeFilterEnabled: true,
///         filterOperatorAndFieldValues: [{
///             filterOperator: "PAST",
///             fieldValues: [
///                 "1",
///                 "DAY",
///             ],
///         }],
///     }],
/// });
/// const myChart = new gcp.chronicle.DashboardChart("my_chart", {
///     location: myDashboard.location,
///     instance: myDashboard.instance,
///     nativeDashboard: myDashboard.name,
///     chartLayout: {
///         startX: 0,
///         spanX: 50,
///         startY: 12,
///         spanY: 18,
///     },
///     dashboardChart: {
///         displayName: "Data Source Health Overview",
///         description: "Health of data sources over time",
///         tileType: "TILE_TYPE_VISUALIZATION",
///         chartDatasource: {
///             dataSources: ["IOC_MATCHES"],
///         },
///         visualization: {
///             series: [{
///                 seriesType: "LINE",
///                 encode: {
///                     x: "timestamp",
///                     y: "total_count",
///                 },
///                 dataLabel: {
///                     show: true,
///                 },
///             }],
///             xAxes: [{
///                 axisType: "CATEGORY",
///                 displayName: "Date",
///             }],
///             yAxes: [{
///                 axisType: "CATEGORY",
///                 displayName: "Sources",
///             }],
///             legends: [{
///                 top: 12,
///                 legendOrient: "HORIZONTAL",
///                 show: true,
///                 id: "test_map_legend_01",
///                 bottom: 10,
///                 left: 10,
///                 right: 5,
///                 legendAlign: "LEFT",
///                 paddings: [10],
///                 z: 2,
///                 zLevel: 1,
///             }],
///             seriesColumns: ["health_status"],
///             groupingType: "Grouped",
///         },
///         drillDownConfig: {
///             leftDrillDowns: [{
///                 id: "D89B834D-977A-4E0C-83B0-12AB1D05E76B",
///                 displayName: "Link to the google",
///                 customSettings: {
///                     newTab: true,
///                     externalLink: {
///                         description: "This is an external link",
///                         link: "www.google.com",
///                     },
///                 },
///             }],
///         },
///     },
///     dashboardQuery: {
///         query: `IOC_Type = ioc.ioc_type
///
/// match:
///   IOC_Type
///
/// outcome:
///   IOC_Count = count(ioc.ioc_value)
///
/// order:
///   IOC_Count desc
/// `,
///         input: {
///             relativeTime: {
///                 timeUnit: "DAY",
///                 startTimeVal: "1",
///             },
///         },
///     },
/// });
/// const buttonTile = new gcp.chronicle.DashboardChart("button_tile", {
///     location: myDashboard.location,
///     instance: myDashboard.instance,
///     nativeDashboard: myDashboard.name,
///     chartLayout: {
///         startX: 0,
///         spanX: 12,
///         startY: 66,
///         spanY: 4,
///     },
///     dashboardChart: {
///         displayName: "Navigation Button",
///         tileType: "TILE_TYPE_BUTTON",
///         visualization: {
///             button: {
///                 description: "This is a button tile",
///                 label: "View Custom Detection Rules",
///                 hyperlink: "/rulesDashboard",
///                 newTab: true,
///                 properties: {
///                     color: "#1a73e8",
///                     buttonStyle: "BUTTON_STYLE_TRANSPARENT",
///                 },
///             },
///         },
///     },
/// });
/// const markdownTile = new gcp.chronicle.DashboardChart("markdown_tile", {
///     location: myDashboard.location,
///     instance: myDashboard.instance,
///     nativeDashboard: myDashboard.name,
///     chartLayout: {
///         startX: 0,
///         spanX: 24,
///         startY: 48,
///         spanY: 4,
///     },
///     dashboardChart: {
///         displayName: "markdown",
///         tileType: "TILE_TYPE_MARKDOWN",
///         visualization: {
///             markdown: {
///                 content: `### Dashboard Header
/// This is a markdown block used for descriptions or section headers.`,
///                 properties: {
///                     backgroundColor: "#09326C",
///                 },
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # A Native Dashboard is required to create a Dashboard Chart.
/// my_dashboard = gcp.chronicle.NativeDashboard("my_dashboard",
///     location="us",
///     instance="00000000-0000-0000-0000-000000000000",
///     display_name="dashboard_1",
///     description="dashboard_description",
///     access="DASHBOARD_PRIVATE",
///     type="CUSTOM",
///     filters=[{
///         "id": "GlobalTimeFilter",
///         "display_name": "Global Time Filter",
///         "data_source": "GLOBAL",
///         "is_standard_time_range_filter": True,
///         "is_standard_time_range_filter_enabled": True,
///         "filter_operator_and_field_values": [{
///             "filter_operator": "PAST",
///             "field_values": [
///                 "1",
///                 "DAY",
///             ],
///         }],
///     }])
/// my_chart = gcp.chronicle.DashboardChart("my_chart",
///     location=my_dashboard.location,
///     instance=my_dashboard.instance,
///     native_dashboard=my_dashboard.name,
///     chart_layout={
///         "start_x": 0,
///         "span_x": 50,
///         "start_y": 12,
///         "span_y": 18,
///     },
///     dashboard_chart={
///         "display_name": "Data Source Health Overview",
///         "description": "Health of data sources over time",
///         "tile_type": "TILE_TYPE_VISUALIZATION",
///         "chart_datasource": {
///             "data_sources": ["IOC_MATCHES"],
///         },
///         "visualization": {
///             "series": [{
///                 "series_type": "LINE",
///                 "encode": {
///                     "x": "timestamp",
///                     "y": "total_count",
///                 },
///                 "data_label": {
///                     "show": True,
///                 },
///             }],
///             "x_axes": [{
///                 "axis_type": "CATEGORY",
///                 "display_name": "Date",
///             }],
///             "y_axes": [{
///                 "axis_type": "CATEGORY",
///                 "display_name": "Sources",
///             }],
///             "legends": [{
///                 "top": 12,
///                 "legend_orient": "HORIZONTAL",
///                 "show": True,
///                 "id": "test_map_legend_01",
///                 "bottom": 10,
///                 "left": 10,
///                 "right": 5,
///                 "legend_align": "LEFT",
///                 "paddings": [10],
///                 "z": 2,
///                 "z_level": 1,
///             }],
///             "series_columns": ["health_status"],
///             "grouping_type": "Grouped",
///         },
///         "drill_down_config": {
///             "left_drill_downs": [{
///                 "id": "D89B834D-977A-4E0C-83B0-12AB1D05E76B",
///                 "display_name": "Link to the google",
///                 "custom_settings": {
///                     "new_tab": True,
///                     "external_link": {
///                         "description": "This is an external link",
///                         "link": "www.google.com",
///                     },
///                 },
///             }],
///         },
///     },
///     dashboard_query={
///         "query": """$IOC_Type = ioc.ioc_type
///
/// match:
///   $IOC_Type
///
/// outcome:
///   $IOC_Count = count(ioc.ioc_value)
///
/// order:
///   $IOC_Count desc
/// """,
///         "input": {
///             "relative_time": {
///                 "time_unit": "DAY",
///                 "start_time_val": "1",
///             },
///         },
///     })
/// button_tile = gcp.chronicle.DashboardChart("button_tile",
///     location=my_dashboard.location,
///     instance=my_dashboard.instance,
///     native_dashboard=my_dashboard.name,
///     chart_layout={
///         "start_x": 0,
///         "span_x": 12,
///         "start_y": 66,
///         "span_y": 4,
///     },
///     dashboard_chart={
///         "display_name": "Navigation Button",
///         "tile_type": "TILE_TYPE_BUTTON",
///         "visualization": {
///             "button": {
///                 "description": "This is a button tile",
///                 "label": "View Custom Detection Rules",
///                 "hyperlink": "/rulesDashboard",
///                 "new_tab": True,
///                 "properties": {
///                     "color": "#1a73e8",
///                     "button_style": "BUTTON_STYLE_TRANSPARENT",
///                 },
///             },
///         },
///     })
/// markdown_tile = gcp.chronicle.DashboardChart("markdown_tile",
///     location=my_dashboard.location,
///     instance=my_dashboard.instance,
///     native_dashboard=my_dashboard.name,
///     chart_layout={
///         "start_x": 0,
///         "span_x": 24,
///         "start_y": 48,
///         "span_y": 4,
///     },
///     dashboard_chart={
///         "display_name": "markdown",
///         "tile_type": "TILE_TYPE_MARKDOWN",
///         "visualization": {
///             "markdown": {
///                 "content": """### Dashboard Header
/// This is a markdown block used for descriptions or section headers.""",
///                 "properties": {
///                     "background_color": "#09326C",
///                 },
///             },
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // A Native Dashboard is required to create a Dashboard Chart.
///     var myDashboard = new Gcp.Chronicle.NativeDashboard("my_dashboard", new()
///     {
///         Location = "us",
///         Instance = "00000000-0000-0000-0000-000000000000",
///         DisplayName = "dashboard_1",
///         Description = "dashboard_description",
///         Access = "DASHBOARD_PRIVATE",
///         Type = "CUSTOM",
///         Filters = new[]
///         {
///             new Gcp.Chronicle.Inputs.NativeDashboardFilterArgs
///             {
///                 Id = "GlobalTimeFilter",
///                 DisplayName = "Global Time Filter",
///                 DataSource = "GLOBAL",
///                 IsStandardTimeRangeFilter = true,
///                 IsStandardTimeRangeFilterEnabled = true,
///                 FilterOperatorAndFieldValues = new[]
///                 {
///                     new Gcp.Chronicle.Inputs.NativeDashboardFilterFilterOperatorAndFieldValueArgs
///                     {
///                         FilterOperator = "PAST",
///                         FieldValues = new[]
///                         {
///                             "1",
///                             "DAY",
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var myChart = new Gcp.Chronicle.DashboardChart("my_chart", new()
///     {
///         Location = myDashboard.Location,
///         Instance = myDashboard.Instance,
///         NativeDashboard = myDashboard.Name,
///         ChartLayout = new Gcp.Chronicle.Inputs.DashboardChartChartLayoutArgs
///         {
///             StartX = 0,
///             SpanX = 50,
///             StartY = 12,
///             SpanY = 18,
///         },
///         DashboardChartDetails = new Gcp.Chronicle.Inputs.DashboardChartDashboardChartArgs
///         {
///             DisplayName = "Data Source Health Overview",
///             Description = "Health of data sources over time",
///             TileType = "TILE_TYPE_VISUALIZATION",
///             ChartDatasource = new Gcp.Chronicle.Inputs.DashboardChartDashboardChartChartDatasourceArgs
///             {
///                 DataSources = new[]
///                 {
///                     "IOC_MATCHES",
///                 },
///             },
///             Visualization = new Gcp.Chronicle.Inputs.DashboardChartDashboardChartVisualizationArgs
///             {
///                 Series = new[]
///                 {
///                     new Gcp.Chronicle.Inputs.DashboardChartDashboardChartVisualizationSeriesArgs
///                     {
///                         SeriesType = "LINE",
///                         Encode = new Gcp.Chronicle.Inputs.DashboardChartDashboardChartVisualizationSeriesEncodeArgs
///                         {
///                             X = "timestamp",
///                             Y = "total_count",
///                         },
///                         DataLabel = new Gcp.Chronicle.Inputs.DashboardChartDashboardChartVisualizationSeriesDataLabelArgs
///                         {
///                             Show = true,
///                         },
///                     },
///                 },
///                 XAxes = new[]
///                 {
///                     new Gcp.Chronicle.Inputs.DashboardChartDashboardChartVisualizationXAxisArgs
///                     {
///                         AxisType = "CATEGORY",
///                         DisplayName = "Date",
///                     },
///                 },
///                 YAxes = new[]
///                 {
///                     new Gcp.Chronicle.Inputs.DashboardChartDashboardChartVisualizationYAxisArgs
///                     {
///                         AxisType = "CATEGORY",
///                         DisplayName = "Sources",
///                     },
///                 },
///                 Legends = new[]
///                 {
///                     new Gcp.Chronicle.Inputs.DashboardChartDashboardChartVisualizationLegendArgs
///                     {
///                         Top = 12,
///                         LegendOrient = "HORIZONTAL",
///                         Show = true,
///                         Id = "test_map_legend_01",
///                         Bottom = 10,
///                         Left = 10,
///                         Right = 5,
///                         LegendAlign = "LEFT",
///                         Paddings = new[]
///                         {
///                             10,
///                         },
///                         Z = 2,
///                         ZLevel = 1,
///                     },
///                 },
///                 SeriesColumns = new[]
///                 {
///                     "health_status",
///                 },
///                 GroupingType = "Grouped",
///             },
///             DrillDownConfig = new Gcp.Chronicle.Inputs.DashboardChartDashboardChartDrillDownConfigArgs
///             {
///                 LeftDrillDowns = new[]
///                 {
///                     new Gcp.Chronicle.Inputs.DashboardChartDashboardChartDrillDownConfigLeftDrillDownArgs
///                     {
///                         Id = "D89B834D-977A-4E0C-83B0-12AB1D05E76B",
///                         DisplayName = "Link to the google",
///                         CustomSettings = new Gcp.Chronicle.Inputs.DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsArgs
///                         {
///                             NewTab = true,
///                             ExternalLink = new Gcp.Chronicle.Inputs.DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsExternalLinkArgs
///                             {
///                                 Description = "This is an external link",
///                                 Link = "www.google.com",
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         DashboardQuery = new Gcp.Chronicle.Inputs.DashboardChartDashboardQueryArgs
///         {
///             Query = @"$IOC_Type = ioc.ioc_type
///
/// match:
///   $IOC_Type
///
/// outcome:
///   $IOC_Count = count(ioc.ioc_value)
///
/// order:
///   $IOC_Count desc
/// ",
///             Input = new Gcp.Chronicle.Inputs.DashboardChartDashboardQueryInputArgs
///             {
///                 RelativeTime = new Gcp.Chronicle.Inputs.DashboardChartDashboardQueryInputRelativeTimeArgs
///                 {
///                     TimeUnit = "DAY",
///                     StartTimeVal = "1",
///                 },
///             },
///         },
///     });
///
///     var buttonTile = new Gcp.Chronicle.DashboardChart("button_tile", new()
///     {
///         Location = myDashboard.Location,
///         Instance = myDashboard.Instance,
///         NativeDashboard = myDashboard.Name,
///         ChartLayout = new Gcp.Chronicle.Inputs.DashboardChartChartLayoutArgs
///         {
///             StartX = 0,
///             SpanX = 12,
///             StartY = 66,
///             SpanY = 4,
///         },
///         DashboardChartDetails = new Gcp.Chronicle.Inputs.DashboardChartDashboardChartArgs
///         {
///             DisplayName = "Navigation Button",
///             TileType = "TILE_TYPE_BUTTON",
///             Visualization = new Gcp.Chronicle.Inputs.DashboardChartDashboardChartVisualizationArgs
///             {
///                 Button = new Gcp.Chronicle.Inputs.DashboardChartDashboardChartVisualizationButtonArgs
///                 {
///                     Description = "This is a button tile",
///                     Label = "View Custom Detection Rules",
///                     Hyperlink = "/rulesDashboard",
///                     NewTab = true,
///                     Properties = new Gcp.Chronicle.Inputs.DashboardChartDashboardChartVisualizationButtonPropertiesArgs
///                     {
///                         Color = "#1a73e8",
///                         ButtonStyle = "BUTTON_STYLE_TRANSPARENT",
///                     },
///                 },
///             },
///         },
///     });
///
///     var markdownTile = new Gcp.Chronicle.DashboardChart("markdown_tile", new()
///     {
///         Location = myDashboard.Location,
///         Instance = myDashboard.Instance,
///         NativeDashboard = myDashboard.Name,
///         ChartLayout = new Gcp.Chronicle.Inputs.DashboardChartChartLayoutArgs
///         {
///             StartX = 0,
///             SpanX = 24,
///             StartY = 48,
///             SpanY = 4,
///         },
///         DashboardChartDetails = new Gcp.Chronicle.Inputs.DashboardChartDashboardChartArgs
///         {
///             DisplayName = "markdown",
///             TileType = "TILE_TYPE_MARKDOWN",
///             Visualization = new Gcp.Chronicle.Inputs.DashboardChartDashboardChartVisualizationArgs
///             {
///                 Markdown = new Gcp.Chronicle.Inputs.DashboardChartDashboardChartVisualizationMarkdownArgs
///                 {
///                     Content = @"### Dashboard Header
/// This is a markdown block used for descriptions or section headers.",
///                     Properties = new Gcp.Chronicle.Inputs.DashboardChartDashboardChartVisualizationMarkdownPropertiesArgs
///                     {
///                         BackgroundColor = "#09326C",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/chronicle"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// A Native Dashboard is required to create a Dashboard Chart.
/// 		myDashboard, err := chronicle.NewNativeDashboard(ctx, "my_dashboard", &chronicle.NativeDashboardArgs{
/// 			Location:    pulumi.String("us"),
/// 			Instance:    pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 			DisplayName: pulumi.String("dashboard_1"),
/// 			Description: pulumi.String("dashboard_description"),
/// 			Access:      pulumi.String("DASHBOARD_PRIVATE"),
/// 			Type:        pulumi.String("CUSTOM"),
/// 			Filters: chronicle.NativeDashboardFilterArray{
/// 				&chronicle.NativeDashboardFilterArgs{
/// 					Id:                               pulumi.String("GlobalTimeFilter"),
/// 					DisplayName:                      pulumi.String("Global Time Filter"),
/// 					DataSource:                       pulumi.String("GLOBAL"),
/// 					IsStandardTimeRangeFilter:        pulumi.Bool(true),
/// 					IsStandardTimeRangeFilterEnabled: pulumi.Bool(true),
/// 					FilterOperatorAndFieldValues: chronicle.NativeDashboardFilterFilterOperatorAndFieldValueArray{
/// 						&chronicle.NativeDashboardFilterFilterOperatorAndFieldValueArgs{
/// 							FilterOperator: pulumi.String("PAST"),
/// 							FieldValues: pulumi.StringArray{
/// 								pulumi.String("1"),
/// 								pulumi.String("DAY"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = chronicle.NewDashboardChart(ctx, "my_chart", &chronicle.DashboardChartArgs{
/// 			Location:        myDashboard.Location,
/// 			Instance:        myDashboard.Instance,
/// 			NativeDashboard: myDashboard.Name,
/// 			ChartLayout: &chronicle.DashboardChartChartLayoutArgs{
/// 				StartX: pulumi.Int(0),
/// 				SpanX:  pulumi.Int(50),
/// 				StartY: pulumi.Int(12),
/// 				SpanY:  pulumi.Int(18),
/// 			},
/// 			DashboardChart: &chronicle.DashboardChartDashboardChartArgs{
/// 				DisplayName: pulumi.String("Data Source Health Overview"),
/// 				Description: pulumi.String("Health of data sources over time"),
/// 				TileType:    pulumi.String("TILE_TYPE_VISUALIZATION"),
/// 				ChartDatasource: &chronicle.DashboardChartDashboardChartChartDatasourceArgs{
/// 					DataSources: pulumi.StringArray{
/// 						pulumi.String("IOC_MATCHES"),
/// 					},
/// 				},
/// 				Visualization: &chronicle.DashboardChartDashboardChartVisualizationArgs{
/// 					Series: chronicle.DashboardChartDashboardChartVisualizationSeriesArray{
/// 						&chronicle.DashboardChartDashboardChartVisualizationSeriesArgs{
/// 							SeriesType: pulumi.String("LINE"),
/// 							Encode: &chronicle.DashboardChartDashboardChartVisualizationSeriesEncodeArgs{
/// 								X: pulumi.String("timestamp"),
/// 								Y: pulumi.String("total_count"),
/// 							},
/// 							DataLabel: &chronicle.DashboardChartDashboardChartVisualizationSeriesDataLabelArgs{
/// 								Show: pulumi.Bool(true),
/// 							},
/// 						},
/// 					},
/// 					XAxes: chronicle.DashboardChartDashboardChartVisualizationXAxisArray{
/// 						&chronicle.DashboardChartDashboardChartVisualizationXAxisArgs{
/// 							AxisType:    pulumi.String("CATEGORY"),
/// 							DisplayName: pulumi.String("Date"),
/// 						},
/// 					},
/// 					YAxes: chronicle.DashboardChartDashboardChartVisualizationYAxisArray{
/// 						&chronicle.DashboardChartDashboardChartVisualizationYAxisArgs{
/// 							AxisType:    pulumi.String("CATEGORY"),
/// 							DisplayName: pulumi.String("Sources"),
/// 						},
/// 					},
/// 					Legends: chronicle.DashboardChartDashboardChartVisualizationLegendArray{
/// 						&chronicle.DashboardChartDashboardChartVisualizationLegendArgs{
/// 							Top:          pulumi.Int(12),
/// 							LegendOrient: pulumi.String("HORIZONTAL"),
/// 							Show:         pulumi.Bool(true),
/// 							Id:           pulumi.String("test_map_legend_01"),
/// 							Bottom:       pulumi.Int(10),
/// 							Left:         pulumi.Int(10),
/// 							Right:        pulumi.Int(5),
/// 							LegendAlign:  pulumi.String("LEFT"),
/// 							Paddings: pulumi.IntArray{
/// 								pulumi.Int(10),
/// 							},
/// 							Z:      pulumi.Int(2),
/// 							ZLevel: pulumi.Int(1),
/// 						},
/// 					},
/// 					SeriesColumns: pulumi.StringArray{
/// 						pulumi.String("health_status"),
/// 					},
/// 					GroupingType: pulumi.String("Grouped"),
/// 				},
/// 				DrillDownConfig: &chronicle.DashboardChartDashboardChartDrillDownConfigArgs{
/// 					LeftDrillDowns: chronicle.DashboardChartDashboardChartDrillDownConfigLeftDrillDownArray{
/// 						&chronicle.DashboardChartDashboardChartDrillDownConfigLeftDrillDownArgs{
/// 							Id:          pulumi.String("D89B834D-977A-4E0C-83B0-12AB1D05E76B"),
/// 							DisplayName: pulumi.String("Link to the google"),
/// 							CustomSettings: &chronicle.DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsArgs{
/// 								NewTab: pulumi.Bool(true),
/// 								ExternalLink: &chronicle.DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsExternalLinkArgs{
/// 									Description: pulumi.String("This is an external link"),
/// 									Link:        pulumi.String("www.google.com"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			DashboardQuery: &chronicle.DashboardChartDashboardQueryArgs{
/// 				Query: pulumi.String(`$IOC_Type = ioc.ioc_type
///
/// match:
///   $IOC_Type
///
/// outcome:
///   $IOC_Count = count(ioc.ioc_value)
///
/// order:
///   $IOC_Count desc
/// `),
/// 				Input: &chronicle.DashboardChartDashboardQueryInputTypeArgs{
/// 					RelativeTime: &chronicle.DashboardChartDashboardQueryInputRelativeTimeArgs{
/// 						TimeUnit:     pulumi.String("DAY"),
/// 						StartTimeVal: pulumi.String("1"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = chronicle.NewDashboardChart(ctx, "button_tile", &chronicle.DashboardChartArgs{
/// 			Location:        myDashboard.Location,
/// 			Instance:        myDashboard.Instance,
/// 			NativeDashboard: myDashboard.Name,
/// 			ChartLayout: &chronicle.DashboardChartChartLayoutArgs{
/// 				StartX: pulumi.Int(0),
/// 				SpanX:  pulumi.Int(12),
/// 				StartY: pulumi.Int(66),
/// 				SpanY:  pulumi.Int(4),
/// 			},
/// 			DashboardChart: &chronicle.DashboardChartDashboardChartArgs{
/// 				DisplayName: pulumi.String("Navigation Button"),
/// 				TileType:    pulumi.String("TILE_TYPE_BUTTON"),
/// 				Visualization: &chronicle.DashboardChartDashboardChartVisualizationArgs{
/// 					Button: &chronicle.DashboardChartDashboardChartVisualizationButtonArgs{
/// 						Description: pulumi.String("This is a button tile"),
/// 						Label:       pulumi.String("View Custom Detection Rules"),
/// 						Hyperlink:   pulumi.String("/rulesDashboard"),
/// 						NewTab:      pulumi.Bool(true),
/// 						Properties: &chronicle.DashboardChartDashboardChartVisualizationButtonPropertiesArgs{
/// 							Color:       pulumi.String("#1a73e8"),
/// 							ButtonStyle: pulumi.String("BUTTON_STYLE_TRANSPARENT"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = chronicle.NewDashboardChart(ctx, "markdown_tile", &chronicle.DashboardChartArgs{
/// 			Location:        myDashboard.Location,
/// 			Instance:        myDashboard.Instance,
/// 			NativeDashboard: myDashboard.Name,
/// 			ChartLayout: &chronicle.DashboardChartChartLayoutArgs{
/// 				StartX: pulumi.Int(0),
/// 				SpanX:  pulumi.Int(24),
/// 				StartY: pulumi.Int(48),
/// 				SpanY:  pulumi.Int(4),
/// 			},
/// 			DashboardChart: &chronicle.DashboardChartDashboardChartArgs{
/// 				DisplayName: pulumi.String("markdown"),
/// 				TileType:    pulumi.String("TILE_TYPE_MARKDOWN"),
/// 				Visualization: &chronicle.DashboardChartDashboardChartVisualizationArgs{
/// 					Markdown: &chronicle.DashboardChartDashboardChartVisualizationMarkdownArgs{
/// 						Content: pulumi.String("### Dashboard Header\nThis is a markdown block used for descriptions or section headers."),
/// 						Properties: &chronicle.DashboardChartDashboardChartVisualizationMarkdownPropertiesArgs{
/// 							BackgroundColor: pulumi.String("#09326C"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// # A Native Dashboard is required to create a Dashboard Chart.
/// resource "gcp_chronicle_nativedashboard" "my_dashboard" {
///   location     = "us"
///   instance     = "00000000-0000-0000-0000-000000000000"
///   display_name = "dashboard_1"
///   description  = "dashboard_description"
///   access       = "DASHBOARD_PRIVATE"
///   type         = "CUSTOM"
///   filters {
///     id                                    = "GlobalTimeFilter"
///     display_name                          = "Global Time Filter"
///     data_source                           = "GLOBAL"
///     is_standard_time_range_filter         = true
///     is_standard_time_range_filter_enabled = true
///     filter_operator_and_field_values {
///       filter_operator = "PAST"
///       field_values    = ["1", "DAY"]
///     }
///   }
/// }
/// resource "gcp_chronicle_dashboardchart" "my_chart" {
///   location         = gcp_chronicle_nativedashboard.my_dashboard.location
///   instance         = gcp_chronicle_nativedashboard.my_dashboard.instance
///   native_dashboard = gcp_chronicle_nativedashboard.my_dashboard.name
///   chart_layout = {
///     start_x = 0
///     span_x  = 50
///     start_y = 12
///     span_y  = 18
///   }
///   dashboard_chart = {
///     display_name = "Data Source Health Overview"
///     description  = "Health of data sources over time"
///     tile_type    = "TILE_TYPE_VISUALIZATION"
///     chart_datasource = {
///       data_sources = ["IOC_MATCHES"]
///     }
///     visualization = {
///       series = [{
///         "seriesType" = "LINE"
///         "encode" = {
///           "x" = "timestamp"
///           "y" = "total_count"
///         }
///         "dataLabel" = {
///           "show" = true
///         }
///       }]
///       x_axes = [{
///         "axisType"    = "CATEGORY"
///         "displayName" = "Date"
///       }]
///       y_axes = [{
///         "axisType"    = "CATEGORY"
///         "displayName" = "Sources"
///       }]
///       legends = [{
///         "top"          = 12
///         "legendOrient" = "HORIZONTAL"
///         "show"         = true
///         "id"           = "test_map_legend_01"
///         "bottom"       = 10
///         "left"         = 10
///         "right"        = 5
///         "legendAlign"  = "LEFT"
///         "paddings"     = [10]
///         "z"            = 2
///         "zLevel"       = 1
///       }]
///       series_columns = ["health_status"]
///       grouping_type  = "Grouped"
///     }
///     drill_down_config = {
///       left_drill_downs = [{
///         "id"          = "D89B834D-977A-4E0C-83B0-12AB1D05E76B"
///         "displayName" = "Link to the google"
///         "customSettings" = {
///           "newTab" = true
///           "externalLink" = {
///             "description" = "This is an external link"
///             "link"        = "www.google.com"
///           }
///         }
///       }]
///     }
///   }
///   dashboard_query = {
///     query = "$IOC_Type = ioc.ioc_type\n      \nmatch:\n  $IOC_Type\n      \noutcome:\n  $IOC_Count = count(ioc.ioc_value) \n      \norder:\n  $IOC_Count desc\n"
///     input = {
///       relative_time = {
///         time_unit      = "DAY"
///         start_time_val = "1"
///       }
///     }
///   }
/// }
/// resource "gcp_chronicle_dashboardchart" "button_tile" {
///   location         = gcp_chronicle_nativedashboard.my_dashboard.location
///   instance         = gcp_chronicle_nativedashboard.my_dashboard.instance
///   native_dashboard = gcp_chronicle_nativedashboard.my_dashboard.name
///   chart_layout = {
///     start_x = 0
///     span_x  = 12
///     start_y = 66
///     span_y  = 4
///   }
///   dashboard_chart = {
///     display_name = "Navigation Button"
///     tile_type    = "TILE_TYPE_BUTTON"
///     visualization = {
///       button = {
///         description = "This is a button tile"
///         label       = "View Custom Detection Rules"
///         hyperlink   = "/rulesDashboard"
///         new_tab     = true
///         properties = {
///           color        = "#1a73e8"
///           button_style = "BUTTON_STYLE_TRANSPARENT"
///         }
///       }
///     }
///   }
/// }
/// resource "gcp_chronicle_dashboardchart" "markdown_tile" {
///   location         = gcp_chronicle_nativedashboard.my_dashboard.location
///   instance         = gcp_chronicle_nativedashboard.my_dashboard.instance
///   native_dashboard = gcp_chronicle_nativedashboard.my_dashboard.name
///   chart_layout = {
///     start_x = 0
///     span_x  = 24
///     start_y = 48
///     span_y  = 4
///   }
///   dashboard_chart = {
///     display_name = "markdown"
///     tile_type    = "TILE_TYPE_MARKDOWN"
///     visualization = {
///       markdown = {
///         content = "### Dashboard Header\nThis is a markdown block used for descriptions or section headers."
///         properties = {
///           background_color = "#09326C"
///         }
///       }
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.chronicle.NativeDashboard;
/// import com.pulumi.gcp.chronicle.NativeDashboardArgs;
/// import com.pulumi.gcp.chronicle.inputs.NativeDashboardFilterArgs;
/// import com.pulumi.gcp.chronicle.inputs.NativeDashboardFilterFilterOperatorAndFieldValueArgs;
/// import com.pulumi.gcp.chronicle.DashboardChart;
/// import com.pulumi.gcp.chronicle.DashboardChartArgs;
/// import com.pulumi.gcp.chronicle.inputs.DashboardChartChartLayoutArgs;
/// import com.pulumi.gcp.chronicle.inputs.DashboardChartDashboardChartArgs;
/// import com.pulumi.gcp.chronicle.inputs.DashboardChartDashboardChartChartDatasourceArgs;
/// import com.pulumi.gcp.chronicle.inputs.DashboardChartDashboardChartVisualizationArgs;
/// import com.pulumi.gcp.chronicle.inputs.DashboardChartDashboardChartVisualizationSeriesArgs;
/// import com.pulumi.gcp.chronicle.inputs.DashboardChartDashboardChartVisualizationSeriesEncodeArgs;
/// import com.pulumi.gcp.chronicle.inputs.DashboardChartDashboardChartVisualizationSeriesDataLabelArgs;
/// import com.pulumi.gcp.chronicle.inputs.DashboardChartDashboardChartVisualizationXAxisArgs;
/// import com.pulumi.gcp.chronicle.inputs.DashboardChartDashboardChartVisualizationYAxisArgs;
/// import com.pulumi.gcp.chronicle.inputs.DashboardChartDashboardChartVisualizationLegendArgs;
/// import com.pulumi.gcp.chronicle.inputs.DashboardChartDashboardChartDrillDownConfigArgs;
/// import com.pulumi.gcp.chronicle.inputs.DashboardChartDashboardChartDrillDownConfigLeftDrillDownArgs;
/// import com.pulumi.gcp.chronicle.inputs.DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsArgs;
/// import com.pulumi.gcp.chronicle.inputs.DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsExternalLinkArgs;
/// import com.pulumi.gcp.chronicle.inputs.DashboardChartDashboardQueryArgs;
/// import com.pulumi.gcp.chronicle.inputs.DashboardChartDashboardQueryInputArgs;
/// import com.pulumi.gcp.chronicle.inputs.DashboardChartDashboardQueryInputRelativeTimeArgs;
/// import com.pulumi.gcp.chronicle.inputs.DashboardChartDashboardChartVisualizationButtonArgs;
/// import com.pulumi.gcp.chronicle.inputs.DashboardChartDashboardChartVisualizationButtonPropertiesArgs;
/// import com.pulumi.gcp.chronicle.inputs.DashboardChartDashboardChartVisualizationMarkdownArgs;
/// import com.pulumi.gcp.chronicle.inputs.DashboardChartDashboardChartVisualizationMarkdownPropertiesArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         // A Native Dashboard is required to create a Dashboard Chart.
///         var myDashboard = new NativeDashboard("myDashboard", NativeDashboardArgs.builder()
///             .location("us")
///             .instance("00000000-0000-0000-0000-000000000000")
///             .displayName("dashboard_1")
///             .description("dashboard_description")
///             .access("DASHBOARD_PRIVATE")
///             .type("CUSTOM")
///             .filters(NativeDashboardFilterArgs.builder()
///                 .id("GlobalTimeFilter")
///                 .displayName("Global Time Filter")
///                 .dataSource("GLOBAL")
///                 .isStandardTimeRangeFilter(true)
///                 .isStandardTimeRangeFilterEnabled(true)
///                 .filterOperatorAndFieldValues(NativeDashboardFilterFilterOperatorAndFieldValueArgs.builder()
///                     .filterOperator("PAST")
///                     .fieldValues(
///                         "1",
///                         "DAY")
///                     .build())
///                 .build())
///             .build());
///
///         var myChart = new DashboardChart("myChart", DashboardChartArgs.builder()
///             .location(myDashboard.location())
///             .instance(myDashboard.instance())
///             .nativeDashboard(myDashboard.name())
///             .chartLayout(DashboardChartChartLayoutArgs.builder()
///                 .startX(0)
///                 .spanX(50)
///                 .startY(12)
///                 .spanY(18)
///                 .build())
///             .dashboardChart(DashboardChartDashboardChartArgs.builder()
///                 .displayName("Data Source Health Overview")
///                 .description("Health of data sources over time")
///                 .tileType("TILE_TYPE_VISUALIZATION")
///                 .chartDatasource(DashboardChartDashboardChartChartDatasourceArgs.builder()
///                     .dataSources("IOC_MATCHES")
///                     .build())
///                 .visualization(DashboardChartDashboardChartVisualizationArgs.builder()
///                     .series(DashboardChartDashboardChartVisualizationSeriesArgs.builder()
///                         .seriesType("LINE")
///                         .encode(DashboardChartDashboardChartVisualizationSeriesEncodeArgs.builder()
///                             .x("timestamp")
///                             .y("total_count")
///                             .build())
///                         .dataLabel(DashboardChartDashboardChartVisualizationSeriesDataLabelArgs.builder()
///                             .show(true)
///                             .build())
///                         .build())
///                     .xAxes(DashboardChartDashboardChartVisualizationXAxisArgs.builder()
///                         .axisType("CATEGORY")
///                         .displayName("Date")
///                         .build())
///                     .yAxes(DashboardChartDashboardChartVisualizationYAxisArgs.builder()
///                         .axisType("CATEGORY")
///                         .displayName("Sources")
///                         .build())
///                     .legends(DashboardChartDashboardChartVisualizationLegendArgs.builder()
///                         .top(12)
///                         .legendOrient("HORIZONTAL")
///                         .show(true)
///                         .id("test_map_legend_01")
///                         .bottom(10)
///                         .left(10)
///                         .right(5)
///                         .legendAlign("LEFT")
///                         .paddings(10)
///                         .z(2)
///                         .zLevel(1)
///                         .build())
///                     .seriesColumns("health_status")
///                     .groupingType("Grouped")
///                     .build())
///                 .drillDownConfig(DashboardChartDashboardChartDrillDownConfigArgs.builder()
///                     .leftDrillDowns(DashboardChartDashboardChartDrillDownConfigLeftDrillDownArgs.builder()
///                         .id("D89B834D-977A-4E0C-83B0-12AB1D05E76B")
///                         .displayName("Link to the google")
///                         .customSettings(DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsArgs.builder()
///                             .newTab(true)
///                             .externalLink(DashboardChartDashboardChartDrillDownConfigLeftDrillDownCustomSettingsExternalLinkArgs.builder()
///                                 .description("This is an external link")
///                                 .link("www.google.com")
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .dashboardQuery(DashboardChartDashboardQueryArgs.builder()
///                 .query("""
/// $IOC_Type = ioc.ioc_type
///
/// match:
///   $IOC_Type
///
/// outcome:
///   $IOC_Count = count(ioc.ioc_value)
///
/// order:
///   $IOC_Count desc
///                 """)
///                 .input(DashboardChartDashboardQueryInputArgs.builder()
///                     .relativeTime(DashboardChartDashboardQueryInputRelativeTimeArgs.builder()
///                         .timeUnit("DAY")
///                         .startTimeVal("1")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var buttonTile = new DashboardChart("buttonTile", DashboardChartArgs.builder()
///             .location(myDashboard.location())
///             .instance(myDashboard.instance())
///             .nativeDashboard(myDashboard.name())
///             .chartLayout(DashboardChartChartLayoutArgs.builder()
///                 .startX(0)
///                 .spanX(12)
///                 .startY(66)
///                 .spanY(4)
///                 .build())
///             .dashboardChart(DashboardChartDashboardChartArgs.builder()
///                 .displayName("Navigation Button")
///                 .tileType("TILE_TYPE_BUTTON")
///                 .visualization(DashboardChartDashboardChartVisualizationArgs.builder()
///                     .button(DashboardChartDashboardChartVisualizationButtonArgs.builder()
///                         .description("This is a button tile")
///                         .label("View Custom Detection Rules")
///                         .hyperlink("/rulesDashboard")
///                         .newTab(true)
///                         .properties(DashboardChartDashboardChartVisualizationButtonPropertiesArgs.builder()
///                             .color("#1a73e8")
///                             .buttonStyle("BUTTON_STYLE_TRANSPARENT")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var markdownTile = new DashboardChart("markdownTile", DashboardChartArgs.builder()
///             .location(myDashboard.location())
///             .instance(myDashboard.instance())
///             .nativeDashboard(myDashboard.name())
///             .chartLayout(DashboardChartChartLayoutArgs.builder()
///                 .startX(0)
///                 .spanX(24)
///                 .startY(48)
///                 .spanY(4)
///                 .build())
///             .dashboardChart(DashboardChartDashboardChartArgs.builder()
///                 .displayName("markdown")
///                 .tileType("TILE_TYPE_MARKDOWN")
///                 .visualization(DashboardChartDashboardChartVisualizationArgs.builder()
///                     .markdown(DashboardChartDashboardChartVisualizationMarkdownArgs.builder()
///                         .content("""
/// ### Dashboard Header
/// This is a markdown block used for descriptions or section headers.                        """)
///                         .properties(DashboardChartDashboardChartVisualizationMarkdownPropertiesArgs.builder()
///                             .backgroundColor("#09326C")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # A Native Dashboard is required to create a Dashboard Chart.
///   myDashboard:
///     type: gcp:chronicle:NativeDashboard
///     name: my_dashboard
///     properties:
///       location: us
///       instance: 00000000-0000-0000-0000-000000000000
///       displayName: dashboard_1
///       description: dashboard_description
///       access: DASHBOARD_PRIVATE
///       type: CUSTOM
///       filters:
///         - id: GlobalTimeFilter
///           displayName: Global Time Filter
///           dataSource: GLOBAL
///           isStandardTimeRangeFilter: true
///           isStandardTimeRangeFilterEnabled: true
///           filterOperatorAndFieldValues:
///             - filterOperator: PAST
///               fieldValues:
///                 - '1'
///                 - DAY
///   myChart:
///     type: gcp:chronicle:DashboardChart
///     name: my_chart
///     properties:
///       location: ${myDashboard.location}
///       instance: ${myDashboard.instance}
///       nativeDashboard: ${myDashboard.name}
///       chartLayout:
///         startX: 0
///         spanX: 50
///         startY: 12
///         spanY: 18
///       dashboardChart:
///         displayName: Data Source Health Overview
///         description: Health of data sources over time
///         tileType: TILE_TYPE_VISUALIZATION
///         chartDatasource:
///           dataSources:
///             - IOC_MATCHES
///         visualization:
///           series:
///             - seriesType: LINE
///               encode:
///                 x: timestamp
///                 y: total_count
///               dataLabel:
///                 show: true
///           xAxes:
///             - axisType: CATEGORY
///               displayName: Date
///           yAxes:
///             - axisType: CATEGORY
///               displayName: Sources
///           legends:
///             - top: 12
///               legendOrient: HORIZONTAL
///               show: true
///               id: test_map_legend_01
///               bottom: 10
///               left: 10
///               right: 5
///               legendAlign: LEFT
///               paddings:
///                 - 10
///               z: 2
///               zLevel: 1
///           seriesColumns:
///             - health_status
///           groupingType: Grouped
///         drillDownConfig:
///           leftDrillDowns:
///             - id: D89B834D-977A-4E0C-83B0-12AB1D05E76B
///               displayName: Link to the google
///               customSettings:
///                 newTab: true
///                 externalLink:
///                   description: This is an external link
///                   link: www.google.com
///       dashboardQuery:
///         query: "$IOC_Type = ioc.ioc_type\n      \nmatch:\n  $IOC_Type\n      \noutcome:\n  $IOC_Count = count(ioc.ioc_value) \n      \norder:\n  $IOC_Count desc\n"
///         input:
///           relativeTime:
///             timeUnit: DAY
///             startTimeVal: '1'
///   buttonTile:
///     type: gcp:chronicle:DashboardChart
///     name: button_tile
///     properties:
///       location: ${myDashboard.location}
///       instance: ${myDashboard.instance}
///       nativeDashboard: ${myDashboard.name}
///       chartLayout:
///         startX: 0
///         spanX: 12
///         startY: 66
///         spanY: 4
///       dashboardChart:
///         displayName: Navigation Button
///         tileType: TILE_TYPE_BUTTON
///         visualization:
///           button:
///             description: This is a button tile
///             label: View Custom Detection Rules
///             hyperlink: /rulesDashboard
///             newTab: true
///             properties:
///               color: '#1a73e8'
///               buttonStyle: BUTTON_STYLE_TRANSPARENT
///   markdownTile:
///     type: gcp:chronicle:DashboardChart
///     name: markdown_tile
///     properties:
///       location: ${myDashboard.location}
///       instance: ${myDashboard.instance}
///       nativeDashboard: ${myDashboard.name}
///       chartLayout:
///         startX: 0
///         spanX: 24
///         startY: 48
///         spanY: 4
///       dashboardChart:
///         displayName: markdown
///         tileType: TILE_TYPE_MARKDOWN
///         visualization:
///           markdown:
///             content: |-
///               ### Dashboard Header
///               This is a markdown block used for descriptions or section headers.
///             properties:
///               backgroundColor: '#09326C'
/// ```
///
///
/// ## Import
///
/// DashboardChart can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/instances/{{instance}}/dashboardCharts/{{chart_id}}`
/// * `{{project}}/{{location}}/{{instance}}/{{chart_id}}`
/// * `{{location}}/{{instance}}/{{chart_id}}`
///
///
/// When using the `pulumi import` command, DashboardChart can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:chronicle/dashboardChart:DashboardChart default projects/{{project}}/locations/{{location}}/instances/{{instance}}/dashboardCharts/{{chart_id}}
/// $ pulumi import gcp:chronicle/dashboardChart:DashboardChart default {{project}}/{{location}}/{{instance}}/{{chart_id}}
/// $ pulumi import gcp:chronicle/dashboardChart:DashboardChart default {{location}}/{{instance}}/{{chart_id}}
/// ```
class DashboardChart extends pulumi.CustomResource {
  /// The unique identifier of the chart, automatically extracted from the full resource name.
  late final pulumi.Output<String> chartId;
  /// The layout of this chart within the NativeDashboard.
  /// Structure is documented below.
  late final pulumi.Output<DashboardChartChartLayout?> chartLayout;
  /// Core configuration details for the DashboardChart.
  /// Structure is documented below.
  late final pulumi.Output<DashboardChartDashboardChart> dashboardChart;
  /// The complete specification of the query for this chart. This includes the raw query string, execution parameters (like time windows), and server-generated metadata.
  /// Structure is documented below.
  late final pulumi.Output<DashboardChartDashboardQuery?> dashboardQuery;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The ID of the Chronicle instance.
  late final pulumi.Output<String> instance;
  /// The location of the Chronicle instance.
  late final pulumi.Output<String> location;
  /// The full resource name of the DashboardChart.
  late final pulumi.Output<String> name;
  /// The parent NativeDashboard resource name, formatted as projects/{project}/locations/{location}/instances/{instance}/nativeDashboards/{dashboard_id}
  late final pulumi.Output<String?> nativeDashboard;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [DashboardChart].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DashboardChart]. {@macro pulumi_chronicle_dashboard_chart_dashboard_chart_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DashboardChart(
    String name, {
    DashboardChartArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/dashboardChart:DashboardChart',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    chartId = registerOutput<String>('chartId');
    chartLayout = registerOutput<DashboardChartChartLayout?>('chartLayout', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DashboardChartChartLayout.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dashboardChart = registerOutput<DashboardChartDashboardChart>('dashboardChart', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DashboardChartDashboardChart.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dashboardQuery = registerOutput<DashboardChartDashboardQuery?>('dashboardQuery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DashboardChartDashboardQuery.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    nativeDashboard = registerOutput<String?>('nativeDashboard');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [DashboardChart] resource's state with the given [name] and [id].
  static DashboardChart get(
    String name,
    pulumi.Input<String> id, {
    DashboardChartState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DashboardChart._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DashboardChart._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:chronicle/dashboardChart:DashboardChart',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    chartId = registerOutput<String>('chartId');
    chartLayout = registerOutput<DashboardChartChartLayout?>('chartLayout', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DashboardChartChartLayout.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dashboardChart = registerOutput<DashboardChartDashboardChart>('dashboardChart', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DashboardChartDashboardChart.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dashboardQuery = registerOutput<DashboardChartDashboardQuery?>('dashboardQuery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DashboardChartDashboardQuery.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    nativeDashboard = registerOutput<String?>('nativeDashboard');
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [DashboardChart] resource.
  DashboardChart.reference(String urn)
    : super(
        'gcp:chronicle/dashboardChart:DashboardChart',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    chartId = registerOutput<String>('chartId');
    chartLayout = registerOutput<DashboardChartChartLayout?>('chartLayout', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DashboardChartChartLayout.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dashboardChart = registerOutput<DashboardChartDashboardChart>('dashboardChart', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DashboardChartDashboardChart.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dashboardQuery = registerOutput<DashboardChartDashboardQuery?>('dashboardQuery', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DashboardChartDashboardQuery.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    instance = registerOutput<String>('instance');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    nativeDashboard = registerOutput<String?>('nativeDashboard');
    project = registerOutput<String>('project');
  }
}
