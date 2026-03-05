import 'package:pulumi/pulumi.dart' as pulumi;
import 'slo_args.dart';
import 'slo_basic_sli.dart';
import 'slo_request_based_sli.dart';
import 'slo_state.dart';
import 'slo_windows_based_sli.dart';

/// A Service-Level Objective (SLO) describes the level of desired good
/// service. It consists of a service-level indicator (SLI), a performance
/// goal, and a period over which the objective is to be evaluated against
/// that goal. The SLO can use SLIs defined in a number of different manners.
/// Typical SLOs might include "99% of requests in each rolling week have
/// latency below 200 milliseconds" or "99.5% of requests in each calendar
/// month return successfully."
///
///
/// To get more information about Slo, see:
///
/// * [API documentation](https://cloud.google.com/monitoring/api/ref_v3/rest/v3/services.serviceLevelObjectives)
/// * How-to Guides
/// * [Monitoring API Documentation](https://cloud.google.com/monitoring/api/v3/)
/// * [Service Monitoring](https://cloud.google.com/monitoring/service-monitoring)
///
/// ## Example Usage
///
/// ### Monitoring Slo Appengine
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = gcp.monitoring.getAppEngineService({
///     moduleId: "default",
/// });
/// const appengSlo = new gcp.monitoring.Slo("appeng_slo", {
///     service: _default.then(_default => _default.serviceId),
///     sloId: "ae-slo",
///     displayName: "Test SLO for App Engine",
///     goal: 0.9,
///     calendarPeriod: "DAY",
///     basicSli: {
///         latency: {
///             threshold: "1s",
///         },
///     },
///     userLabels: {
///         my_key: "my_value",
///         my_other_key: "my_other_value",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.monitoring.get_app_engine_service(module_id="default")
/// appeng_slo = gcp.monitoring.Slo("appeng_slo",
///     service=default.service_id,
///     slo_id="ae-slo",
///     display_name="Test SLO for App Engine",
///     goal=0.9,
///     calendar_period="DAY",
///     basic_sli={
///         "latency": {
///             "threshold": "1s",
///         },
///     },
///     user_labels={
///         "my_key": "my_value",
///         "my_other_key": "my_other_value",
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
///     var @default = Gcp.Monitoring.GetAppEngineService.Invoke(new()
///     {
///         ModuleId = "default",
///     });
///
///     var appengSlo = new Gcp.Monitoring.Slo("appeng_slo", new()
///     {
///         Service = @default.Apply(@default => @default.Apply(getAppEngineServiceResult => getAppEngineServiceResult.ServiceId)),
///         SloId = "ae-slo",
///         DisplayName = "Test SLO for App Engine",
///         Goal = 0.9,
///         CalendarPeriod = "DAY",
///         BasicSli = new Gcp.Monitoring.Inputs.SloBasicSliArgs
///         {
///             Latency = new Gcp.Monitoring.Inputs.SloBasicSliLatencyArgs
///             {
///                 Threshold = "1s",
///             },
///         },
///         UserLabels =
///         {
///             { "my_key", "my_value" },
///             { "my_other_key", "my_other_value" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/monitoring"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := monitoring.GetAppEngineService(ctx, &monitoring.GetAppEngineServiceArgs{
/// 			ModuleId: "default",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = monitoring.NewSlo(ctx, "appeng_slo", &monitoring.SloArgs{
/// 			Service:        pulumi.String(_default.ServiceId),
/// 			SloId:          pulumi.String("ae-slo"),
/// 			DisplayName:    pulumi.String("Test SLO for App Engine"),
/// 			Goal:           pulumi.Float64(0.9),
/// 			CalendarPeriod: pulumi.String("DAY"),
/// 			BasicSli: &monitoring.SloBasicSliArgs{
/// 				Latency: &monitoring.SloBasicSliLatencyArgs{
/// 					Threshold: pulumi.String("1s"),
/// 				},
/// 			},
/// 			UserLabels: pulumi.StringMap{
/// 				"my_key":       pulumi.String("my_value"),
/// 				"my_other_key": pulumi.String("my_other_value"),
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
/// import com.pulumi.gcp.monitoring.MonitoringFunctions;
/// import com.pulumi.gcp.monitoring.inputs.GetAppEngineServiceArgs;
/// import com.pulumi.gcp.monitoring.Slo;
/// import com.pulumi.gcp.monitoring.SloArgs;
/// import com.pulumi.gcp.monitoring.inputs.SloBasicSliArgs;
/// import com.pulumi.gcp.monitoring.inputs.SloBasicSliLatencyArgs;
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
///         final var default = MonitoringFunctions.getAppEngineService(GetAppEngineServiceArgs.builder()
///             .moduleId("default")
///             .build());
///
///         var appengSlo = new Slo("appengSlo", SloArgs.builder()
///             .service(default_.serviceId())
///             .sloId("ae-slo")
///             .displayName("Test SLO for App Engine")
///             .goal(0.9)
///             .calendarPeriod("DAY")
///             .basicSli(SloBasicSliArgs.builder()
///                 .latency(SloBasicSliLatencyArgs.builder()
///                     .threshold("1s")
///                     .build())
///                 .build())
///             .userLabels(Map.ofEntries(
///                 Map.entry("my_key", "my_value"),
///                 Map.entry("my_other_key", "my_other_value")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   appengSlo:
///     type: gcp:monitoring:Slo
///     name: appeng_slo
///     properties:
///       service: ${default.serviceId}
///       sloId: ae-slo
///       displayName: Test SLO for App Engine
///       goal: 0.9
///       calendarPeriod: DAY
///       basicSli:
///         latency:
///           threshold: 1s
///       userLabels:
///         my_key: my_value
///         my_other_key: my_other_value
/// variables:
///   default:
///     fn::invoke:
///       function: gcp:monitoring:getAppEngineService
///       arguments:
///         moduleId: default
/// ```
///
/// ### Monitoring Slo Request Based
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const customsrv = new gcp.monitoring.CustomService("customsrv", {
///     serviceId: "custom-srv-request-slos",
///     displayName: "My Custom Service",
/// });
/// const requestBasedSlo = new gcp.monitoring.Slo("request_based_slo", {
///     service: customsrv.serviceId,
///     sloId: "consumed-api-slo",
///     displayName: "Test SLO with request based SLI (good total ratio)",
///     goal: 0.9,
///     rollingPeriodDays: 30,
///     requestBasedSli: {
///         distributionCut: {
///             distributionFilter: "metric.type=\"serviceruntime.googleapis.com/api/request_latencies\" resource.type=\"api\"  ",
///             range: {
///                 max: 0.5,
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// customsrv = gcp.monitoring.CustomService("customsrv",
///     service_id="custom-srv-request-slos",
///     display_name="My Custom Service")
/// request_based_slo = gcp.monitoring.Slo("request_based_slo",
///     service=customsrv.service_id,
///     slo_id="consumed-api-slo",
///     display_name="Test SLO with request based SLI (good total ratio)",
///     goal=0.9,
///     rolling_period_days=30,
///     request_based_sli={
///         "distribution_cut": {
///             "distribution_filter": "metric.type=\"serviceruntime.googleapis.com/api/request_latencies\" resource.type=\"api\"  ",
///             "range": {
///                 "max": 0.5,
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
///     var customsrv = new Gcp.Monitoring.CustomService("customsrv", new()
///     {
///         ServiceId = "custom-srv-request-slos",
///         DisplayName = "My Custom Service",
///     });
///
///     var requestBasedSlo = new Gcp.Monitoring.Slo("request_based_slo", new()
///     {
///         Service = customsrv.ServiceId,
///         SloId = "consumed-api-slo",
///         DisplayName = "Test SLO with request based SLI (good total ratio)",
///         Goal = 0.9,
///         RollingPeriodDays = 30,
///         RequestBasedSli = new Gcp.Monitoring.Inputs.SloRequestBasedSliArgs
///         {
///             DistributionCut = new Gcp.Monitoring.Inputs.SloRequestBasedSliDistributionCutArgs
///             {
///                 DistributionFilter = "metric.type=\"serviceruntime.googleapis.com/api/request_latencies\" resource.type=\"api\"  ",
///                 Range = new Gcp.Monitoring.Inputs.SloRequestBasedSliDistributionCutRangeArgs
///                 {
///                     Max = 0.5,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/monitoring"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		customsrv, err := monitoring.NewCustomService(ctx, "customsrv", &monitoring.CustomServiceArgs{
/// 			ServiceId:   pulumi.String("custom-srv-request-slos"),
/// 			DisplayName: pulumi.String("My Custom Service"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = monitoring.NewSlo(ctx, "request_based_slo", &monitoring.SloArgs{
/// 			Service:           customsrv.ServiceId,
/// 			SloId:             pulumi.String("consumed-api-slo"),
/// 			DisplayName:       pulumi.String("Test SLO with request based SLI (good total ratio)"),
/// 			Goal:              pulumi.Float64(0.9),
/// 			RollingPeriodDays: pulumi.Int(30),
/// 			RequestBasedSli: &monitoring.SloRequestBasedSliArgs{
/// 				DistributionCut: &monitoring.SloRequestBasedSliDistributionCutArgs{
/// 					DistributionFilter: pulumi.String("metric.type=\"serviceruntime.googleapis.com/api/request_latencies\" resource.type=\"api\"  "),
/// 					Range: &monitoring.SloRequestBasedSliDistributionCutRangeArgs{
/// 						Max: pulumi.Float64(0.5),
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
/// import com.pulumi.gcp.monitoring.CustomService;
/// import com.pulumi.gcp.monitoring.CustomServiceArgs;
/// import com.pulumi.gcp.monitoring.Slo;
/// import com.pulumi.gcp.monitoring.SloArgs;
/// import com.pulumi.gcp.monitoring.inputs.SloRequestBasedSliArgs;
/// import com.pulumi.gcp.monitoring.inputs.SloRequestBasedSliDistributionCutArgs;
/// import com.pulumi.gcp.monitoring.inputs.SloRequestBasedSliDistributionCutRangeArgs;
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
///         var customsrv = new CustomService("customsrv", CustomServiceArgs.builder()
///             .serviceId("custom-srv-request-slos")
///             .displayName("My Custom Service")
///             .build());
///
///         var requestBasedSlo = new Slo("requestBasedSlo", SloArgs.builder()
///             .service(customsrv.serviceId())
///             .sloId("consumed-api-slo")
///             .displayName("Test SLO with request based SLI (good total ratio)")
///             .goal(0.9)
///             .rollingPeriodDays(30)
///             .requestBasedSli(SloRequestBasedSliArgs.builder()
///                 .distributionCut(SloRequestBasedSliDistributionCutArgs.builder()
///                     .distributionFilter("metric.type=\"serviceruntime.googleapis.com/api/request_latencies\" resource.type=\"api\"  ")
///                     .range(SloRequestBasedSliDistributionCutRangeArgs.builder()
///                         .max(0.5)
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
///   customsrv:
///     type: gcp:monitoring:CustomService
///     properties:
///       serviceId: custom-srv-request-slos
///       displayName: My Custom Service
///   requestBasedSlo:
///     type: gcp:monitoring:Slo
///     name: request_based_slo
///     properties:
///       service: ${customsrv.serviceId}
///       sloId: consumed-api-slo
///       displayName: Test SLO with request based SLI (good total ratio)
///       goal: 0.9
///       rollingPeriodDays: 30
///       requestBasedSli:
///         distributionCut:
///           distributionFilter: 'metric.type="serviceruntime.googleapis.com/api/request_latencies" resource.type="api"  '
///           range:
///             max: 0.5
/// ```
///
/// ### Monitoring Slo Windows Based Good Bad Metric Filter
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const customsrv = new gcp.monitoring.CustomService("customsrv", {
///     serviceId: "custom-srv-windows-slos",
///     displayName: "My Custom Service",
/// });
/// const windowsBased = new gcp.monitoring.Slo("windows_based", {
///     service: customsrv.serviceId,
///     displayName: "Test SLO with window based SLI",
///     goal: 0.95,
///     calendarPeriod: "FORTNIGHT",
///     windowsBasedSli: {
///         windowPeriod: "400s",
///         goodBadMetricFilter: std.join({
///             separator: " AND ",
///             input: [
///                 "metric.type=\"monitoring.googleapis.com/uptime_check/check_passed\"",
///                 "resource.type=\"uptime_url\"",
///             ],
///         }).then(invoke => invoke.result),
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// customsrv = gcp.monitoring.CustomService("customsrv",
///     service_id="custom-srv-windows-slos",
///     display_name="My Custom Service")
/// windows_based = gcp.monitoring.Slo("windows_based",
///     service=customsrv.service_id,
///     display_name="Test SLO with window based SLI",
///     goal=0.95,
///     calendar_period="FORTNIGHT",
///     windows_based_sli={
///         "window_period": "400s",
///         "good_bad_metric_filter": std.join(separator=" AND ",
///             input=[
///                 "metric.type=\"monitoring.googleapis.com/uptime_check/check_passed\"",
///                 "resource.type=\"uptime_url\"",
///             ]).result,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var customsrv = new Gcp.Monitoring.CustomService("customsrv", new()
///     {
///         ServiceId = "custom-srv-windows-slos",
///         DisplayName = "My Custom Service",
///     });
///
///     var windowsBased = new Gcp.Monitoring.Slo("windows_based", new()
///     {
///         Service = customsrv.ServiceId,
///         DisplayName = "Test SLO with window based SLI",
///         Goal = 0.95,
///         CalendarPeriod = "FORTNIGHT",
///         WindowsBasedSli = new Gcp.Monitoring.Inputs.SloWindowsBasedSliArgs
///         {
///             WindowPeriod = "400s",
///             GoodBadMetricFilter = Std.Join.Invoke(new()
///             {
///                 Separator = " AND ",
///                 Input = new[]
///                 {
///                     "metric.type=\"monitoring.googleapis.com/uptime_check/check_passed\"",
///                     "resource.type=\"uptime_url\"",
///                 },
///             }).Apply(invoke => invoke.Result),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/monitoring"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		customsrv, err := monitoring.NewCustomService(ctx, "customsrv", &monitoring.CustomServiceArgs{
/// 			ServiceId:   pulumi.String("custom-srv-windows-slos"),
/// 			DisplayName: pulumi.String("My Custom Service"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeJoin, err := std.Join(ctx, &std.JoinArgs{
/// 			Separator: " AND ",
/// 			Input: []string{
/// 				"metric.type=\"monitoring.googleapis.com/uptime_check/check_passed\"",
/// 				"resource.type=\"uptime_url\"",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = monitoring.NewSlo(ctx, "windows_based", &monitoring.SloArgs{
/// 			Service:        customsrv.ServiceId,
/// 			DisplayName:    pulumi.String("Test SLO with window based SLI"),
/// 			Goal:           pulumi.Float64(0.95),
/// 			CalendarPeriod: pulumi.String("FORTNIGHT"),
/// 			WindowsBasedSli: &monitoring.SloWindowsBasedSliArgs{
/// 				WindowPeriod:        pulumi.String("400s"),
/// 				GoodBadMetricFilter: pulumi.String(invokeJoin.Result),
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
/// import com.pulumi.gcp.monitoring.CustomService;
/// import com.pulumi.gcp.monitoring.CustomServiceArgs;
/// import com.pulumi.gcp.monitoring.Slo;
/// import com.pulumi.gcp.monitoring.SloArgs;
/// import com.pulumi.gcp.monitoring.inputs.SloWindowsBasedSliArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JoinArgs;
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
///         var customsrv = new CustomService("customsrv", CustomServiceArgs.builder()
///             .serviceId("custom-srv-windows-slos")
///             .displayName("My Custom Service")
///             .build());
///
///         var windowsBased = new Slo("windowsBased", SloArgs.builder()
///             .service(customsrv.serviceId())
///             .displayName("Test SLO with window based SLI")
///             .goal(0.95)
///             .calendarPeriod("FORTNIGHT")
///             .windowsBasedSli(SloWindowsBasedSliArgs.builder()
///                 .windowPeriod("400s")
///                 .goodBadMetricFilter(StdFunctions.join(JoinArgs.builder()
///                     .separator(" AND ")
///                     .input(
///                         "metric.type=\"monitoring.googleapis.com/uptime_check/check_passed\"",
///                         "resource.type=\"uptime_url\"")
///                     .build()).result())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   customsrv:
///     type: gcp:monitoring:CustomService
///     properties:
///       serviceId: custom-srv-windows-slos
///       displayName: My Custom Service
///   windowsBased:
///     type: gcp:monitoring:Slo
///     name: windows_based
///     properties:
///       service: ${customsrv.serviceId}
///       displayName: Test SLO with window based SLI
///       goal: 0.95
///       calendarPeriod: FORTNIGHT
///       windowsBasedSli:
///         windowPeriod: 400s
///         goodBadMetricFilter:
///           fn::invoke:
///             function: std:join
///             arguments:
///               separator: ' AND '
///               input:
///                 - metric.type="monitoring.googleapis.com/uptime_check/check_passed"
///                 - resource.type="uptime_url"
///             return: result
/// ```
///
/// ### Monitoring Slo Windows Based Metric Mean
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const customsrv = new gcp.monitoring.CustomService("customsrv", {
///     serviceId: "custom-srv-windows-slos",
///     displayName: "My Custom Service",
/// });
/// const windowsBased = new gcp.monitoring.Slo("windows_based", {
///     service: customsrv.serviceId,
///     displayName: "Test SLO with window based SLI",
///     goal: 0.9,
///     rollingPeriodDays: 20,
///     windowsBasedSli: {
///         windowPeriod: "600s",
///         metricMeanInRange: {
///             timeSeries: std.join({
///                 separator: " AND ",
///                 input: [
///                     "metric.type=\"agent.googleapis.com/cassandra/client_request/latency/95p\"",
///                     "resource.type=\"gce_instance\"",
///                 ],
///             }).then(invoke => invoke.result),
///             range: {
///                 max: 5,
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// customsrv = gcp.monitoring.CustomService("customsrv",
///     service_id="custom-srv-windows-slos",
///     display_name="My Custom Service")
/// windows_based = gcp.monitoring.Slo("windows_based",
///     service=customsrv.service_id,
///     display_name="Test SLO with window based SLI",
///     goal=0.9,
///     rolling_period_days=20,
///     windows_based_sli={
///         "window_period": "600s",
///         "metric_mean_in_range": {
///             "time_series": std.join(separator=" AND ",
///                 input=[
///                     "metric.type=\"agent.googleapis.com/cassandra/client_request/latency/95p\"",
///                     "resource.type=\"gce_instance\"",
///                 ]).result,
///             "range": {
///                 "max": 5,
///             },
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var customsrv = new Gcp.Monitoring.CustomService("customsrv", new()
///     {
///         ServiceId = "custom-srv-windows-slos",
///         DisplayName = "My Custom Service",
///     });
///
///     var windowsBased = new Gcp.Monitoring.Slo("windows_based", new()
///     {
///         Service = customsrv.ServiceId,
///         DisplayName = "Test SLO with window based SLI",
///         Goal = 0.9,
///         RollingPeriodDays = 20,
///         WindowsBasedSli = new Gcp.Monitoring.Inputs.SloWindowsBasedSliArgs
///         {
///             WindowPeriod = "600s",
///             MetricMeanInRange = new Gcp.Monitoring.Inputs.SloWindowsBasedSliMetricMeanInRangeArgs
///             {
///                 TimeSeries = Std.Join.Invoke(new()
///                 {
///                     Separator = " AND ",
///                     Input = new[]
///                     {
///                         "metric.type=\"agent.googleapis.com/cassandra/client_request/latency/95p\"",
///                         "resource.type=\"gce_instance\"",
///                     },
///                 }).Apply(invoke => invoke.Result),
///                 Range = new Gcp.Monitoring.Inputs.SloWindowsBasedSliMetricMeanInRangeRangeArgs
///                 {
///                     Max = 5,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/monitoring"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		customsrv, err := monitoring.NewCustomService(ctx, "customsrv", &monitoring.CustomServiceArgs{
/// 			ServiceId:   pulumi.String("custom-srv-windows-slos"),
/// 			DisplayName: pulumi.String("My Custom Service"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeJoin, err := std.Join(ctx, &std.JoinArgs{
/// 			Separator: " AND ",
/// 			Input: []string{
/// 				"metric.type=\"agent.googleapis.com/cassandra/client_request/latency/95p\"",
/// 				"resource.type=\"gce_instance\"",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = monitoring.NewSlo(ctx, "windows_based", &monitoring.SloArgs{
/// 			Service:           customsrv.ServiceId,
/// 			DisplayName:       pulumi.String("Test SLO with window based SLI"),
/// 			Goal:              pulumi.Float64(0.9),
/// 			RollingPeriodDays: pulumi.Int(20),
/// 			WindowsBasedSli: &monitoring.SloWindowsBasedSliArgs{
/// 				WindowPeriod: pulumi.String("600s"),
/// 				MetricMeanInRange: &monitoring.SloWindowsBasedSliMetricMeanInRangeArgs{
/// 					TimeSeries: pulumi.String(invokeJoin.Result),
/// 					Range: &monitoring.SloWindowsBasedSliMetricMeanInRangeRangeArgs{
/// 						Max: pulumi.Float64(5),
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
/// import com.pulumi.gcp.monitoring.CustomService;
/// import com.pulumi.gcp.monitoring.CustomServiceArgs;
/// import com.pulumi.gcp.monitoring.Slo;
/// import com.pulumi.gcp.monitoring.SloArgs;
/// import com.pulumi.gcp.monitoring.inputs.SloWindowsBasedSliArgs;
/// import com.pulumi.gcp.monitoring.inputs.SloWindowsBasedSliMetricMeanInRangeArgs;
/// import com.pulumi.gcp.monitoring.inputs.SloWindowsBasedSliMetricMeanInRangeRangeArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JoinArgs;
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
///         var customsrv = new CustomService("customsrv", CustomServiceArgs.builder()
///             .serviceId("custom-srv-windows-slos")
///             .displayName("My Custom Service")
///             .build());
///
///         var windowsBased = new Slo("windowsBased", SloArgs.builder()
///             .service(customsrv.serviceId())
///             .displayName("Test SLO with window based SLI")
///             .goal(0.9)
///             .rollingPeriodDays(20)
///             .windowsBasedSli(SloWindowsBasedSliArgs.builder()
///                 .windowPeriod("600s")
///                 .metricMeanInRange(SloWindowsBasedSliMetricMeanInRangeArgs.builder()
///                     .timeSeries(StdFunctions.join(JoinArgs.builder()
///                         .separator(" AND ")
///                         .input(
///                             "metric.type=\"agent.googleapis.com/cassandra/client_request/latency/95p\"",
///                             "resource.type=\"gce_instance\"")
///                         .build()).result())
///                     .range(SloWindowsBasedSliMetricMeanInRangeRangeArgs.builder()
///                         .max(5.0)
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
///   customsrv:
///     type: gcp:monitoring:CustomService
///     properties:
///       serviceId: custom-srv-windows-slos
///       displayName: My Custom Service
///   windowsBased:
///     type: gcp:monitoring:Slo
///     name: windows_based
///     properties:
///       service: ${customsrv.serviceId}
///       displayName: Test SLO with window based SLI
///       goal: 0.9
///       rollingPeriodDays: 20
///       windowsBasedSli:
///         windowPeriod: 600s
///         metricMeanInRange:
///           timeSeries:
///             fn::invoke:
///               function: std:join
///               arguments:
///                 separator: ' AND '
///                 input:
///                   - metric.type="agent.googleapis.com/cassandra/client_request/latency/95p"
///                   - resource.type="gce_instance"
///               return: result
///           range:
///             max: 5
/// ```
///
/// ### Monitoring Slo Windows Based Metric Sum
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const customsrv = new gcp.monitoring.CustomService("customsrv", {
///     serviceId: "custom-srv-windows-slos",
///     displayName: "My Custom Service",
/// });
/// const windowsBased = new gcp.monitoring.Slo("windows_based", {
///     service: customsrv.serviceId,
///     displayName: "Test SLO with window based SLI",
///     goal: 0.9,
///     rollingPeriodDays: 20,
///     windowsBasedSli: {
///         windowPeriod: "400s",
///         metricSumInRange: {
///             timeSeries: std.join({
///                 separator: " AND ",
///                 input: [
///                     "metric.type=\"monitoring.googleapis.com/uptime_check/request_latency\"",
///                     "resource.type=\"uptime_url\"",
///                 ],
///             }).then(invoke => invoke.result),
///             range: {
///                 max: 5000,
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// customsrv = gcp.monitoring.CustomService("customsrv",
///     service_id="custom-srv-windows-slos",
///     display_name="My Custom Service")
/// windows_based = gcp.monitoring.Slo("windows_based",
///     service=customsrv.service_id,
///     display_name="Test SLO with window based SLI",
///     goal=0.9,
///     rolling_period_days=20,
///     windows_based_sli={
///         "window_period": "400s",
///         "metric_sum_in_range": {
///             "time_series": std.join(separator=" AND ",
///                 input=[
///                     "metric.type=\"monitoring.googleapis.com/uptime_check/request_latency\"",
///                     "resource.type=\"uptime_url\"",
///                 ]).result,
///             "range": {
///                 "max": 5000,
///             },
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var customsrv = new Gcp.Monitoring.CustomService("customsrv", new()
///     {
///         ServiceId = "custom-srv-windows-slos",
///         DisplayName = "My Custom Service",
///     });
///
///     var windowsBased = new Gcp.Monitoring.Slo("windows_based", new()
///     {
///         Service = customsrv.ServiceId,
///         DisplayName = "Test SLO with window based SLI",
///         Goal = 0.9,
///         RollingPeriodDays = 20,
///         WindowsBasedSli = new Gcp.Monitoring.Inputs.SloWindowsBasedSliArgs
///         {
///             WindowPeriod = "400s",
///             MetricSumInRange = new Gcp.Monitoring.Inputs.SloWindowsBasedSliMetricSumInRangeArgs
///             {
///                 TimeSeries = Std.Join.Invoke(new()
///                 {
///                     Separator = " AND ",
///                     Input = new[]
///                     {
///                         "metric.type=\"monitoring.googleapis.com/uptime_check/request_latency\"",
///                         "resource.type=\"uptime_url\"",
///                     },
///                 }).Apply(invoke => invoke.Result),
///                 Range = new Gcp.Monitoring.Inputs.SloWindowsBasedSliMetricSumInRangeRangeArgs
///                 {
///                     Max = 5000,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/monitoring"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		customsrv, err := monitoring.NewCustomService(ctx, "customsrv", &monitoring.CustomServiceArgs{
/// 			ServiceId:   pulumi.String("custom-srv-windows-slos"),
/// 			DisplayName: pulumi.String("My Custom Service"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeJoin, err := std.Join(ctx, &std.JoinArgs{
/// 			Separator: " AND ",
/// 			Input: []string{
/// 				"metric.type=\"monitoring.googleapis.com/uptime_check/request_latency\"",
/// 				"resource.type=\"uptime_url\"",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = monitoring.NewSlo(ctx, "windows_based", &monitoring.SloArgs{
/// 			Service:           customsrv.ServiceId,
/// 			DisplayName:       pulumi.String("Test SLO with window based SLI"),
/// 			Goal:              pulumi.Float64(0.9),
/// 			RollingPeriodDays: pulumi.Int(20),
/// 			WindowsBasedSli: &monitoring.SloWindowsBasedSliArgs{
/// 				WindowPeriod: pulumi.String("400s"),
/// 				MetricSumInRange: &monitoring.SloWindowsBasedSliMetricSumInRangeArgs{
/// 					TimeSeries: pulumi.String(invokeJoin.Result),
/// 					Range: &monitoring.SloWindowsBasedSliMetricSumInRangeRangeArgs{
/// 						Max: pulumi.Float64(5000),
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
/// import com.pulumi.gcp.monitoring.CustomService;
/// import com.pulumi.gcp.monitoring.CustomServiceArgs;
/// import com.pulumi.gcp.monitoring.Slo;
/// import com.pulumi.gcp.monitoring.SloArgs;
/// import com.pulumi.gcp.monitoring.inputs.SloWindowsBasedSliArgs;
/// import com.pulumi.gcp.monitoring.inputs.SloWindowsBasedSliMetricSumInRangeArgs;
/// import com.pulumi.gcp.monitoring.inputs.SloWindowsBasedSliMetricSumInRangeRangeArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JoinArgs;
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
///         var customsrv = new CustomService("customsrv", CustomServiceArgs.builder()
///             .serviceId("custom-srv-windows-slos")
///             .displayName("My Custom Service")
///             .build());
///
///         var windowsBased = new Slo("windowsBased", SloArgs.builder()
///             .service(customsrv.serviceId())
///             .displayName("Test SLO with window based SLI")
///             .goal(0.9)
///             .rollingPeriodDays(20)
///             .windowsBasedSli(SloWindowsBasedSliArgs.builder()
///                 .windowPeriod("400s")
///                 .metricSumInRange(SloWindowsBasedSliMetricSumInRangeArgs.builder()
///                     .timeSeries(StdFunctions.join(JoinArgs.builder()
///                         .separator(" AND ")
///                         .input(
///                             "metric.type=\"monitoring.googleapis.com/uptime_check/request_latency\"",
///                             "resource.type=\"uptime_url\"")
///                         .build()).result())
///                     .range(SloWindowsBasedSliMetricSumInRangeRangeArgs.builder()
///                         .max(5000.0)
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
///   customsrv:
///     type: gcp:monitoring:CustomService
///     properties:
///       serviceId: custom-srv-windows-slos
///       displayName: My Custom Service
///   windowsBased:
///     type: gcp:monitoring:Slo
///     name: windows_based
///     properties:
///       service: ${customsrv.serviceId}
///       displayName: Test SLO with window based SLI
///       goal: 0.9
///       rollingPeriodDays: 20
///       windowsBasedSli:
///         windowPeriod: 400s
///         metricSumInRange:
///           timeSeries:
///             fn::invoke:
///               function: std:join
///               arguments:
///                 separator: ' AND '
///                 input:
///                   - metric.type="monitoring.googleapis.com/uptime_check/request_latency"
///                   - resource.type="uptime_url"
///               return: result
///           range:
///             max: 5000
/// ```
///
/// ### Monitoring Slo Windows Based Ratio Threshold
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const customsrv = new gcp.monitoring.CustomService("customsrv", {
///     serviceId: "custom-srv-windows-slos",
///     displayName: "My Custom Service",
/// });
/// const windowsBased = new gcp.monitoring.Slo("windows_based", {
///     service: customsrv.serviceId,
///     displayName: "Test SLO with window based SLI",
///     goal: 0.9,
///     rollingPeriodDays: 20,
///     windowsBasedSli: {
///         windowPeriod: "100s",
///         goodTotalRatioThreshold: {
///             threshold: 0.1,
///             performance: {
///                 distributionCut: {
///                     distributionFilter: std.join({
///                         separator: " AND ",
///                         input: [
///                             "metric.type=\"serviceruntime.googleapis.com/api/request_latencies\"",
///                             "resource.type=\"consumed_api\"",
///                         ],
///                     }).then(invoke => invoke.result),
///                     range: {
///                         min: 1,
///                         max: 9,
///                     },
///                 },
///             },
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// customsrv = gcp.monitoring.CustomService("customsrv",
///     service_id="custom-srv-windows-slos",
///     display_name="My Custom Service")
/// windows_based = gcp.monitoring.Slo("windows_based",
///     service=customsrv.service_id,
///     display_name="Test SLO with window based SLI",
///     goal=0.9,
///     rolling_period_days=20,
///     windows_based_sli={
///         "window_period": "100s",
///         "good_total_ratio_threshold": {
///             "threshold": 0.1,
///             "performance": {
///                 "distribution_cut": {
///                     "distribution_filter": std.join(separator=" AND ",
///                         input=[
///                             "metric.type=\"serviceruntime.googleapis.com/api/request_latencies\"",
///                             "resource.type=\"consumed_api\"",
///                         ]).result,
///                     "range": {
///                         "min": 1,
///                         "max": 9,
///                     },
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
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var customsrv = new Gcp.Monitoring.CustomService("customsrv", new()
///     {
///         ServiceId = "custom-srv-windows-slos",
///         DisplayName = "My Custom Service",
///     });
///
///     var windowsBased = new Gcp.Monitoring.Slo("windows_based", new()
///     {
///         Service = customsrv.ServiceId,
///         DisplayName = "Test SLO with window based SLI",
///         Goal = 0.9,
///         RollingPeriodDays = 20,
///         WindowsBasedSli = new Gcp.Monitoring.Inputs.SloWindowsBasedSliArgs
///         {
///             WindowPeriod = "100s",
///             GoodTotalRatioThreshold = new Gcp.Monitoring.Inputs.SloWindowsBasedSliGoodTotalRatioThresholdArgs
///             {
///                 Threshold = 0.1,
///                 Performance = new Gcp.Monitoring.Inputs.SloWindowsBasedSliGoodTotalRatioThresholdPerformanceArgs
///                 {
///                     DistributionCut = new Gcp.Monitoring.Inputs.SloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCutArgs
///                     {
///                         DistributionFilter = Std.Join.Invoke(new()
///                         {
///                             Separator = " AND ",
///                             Input = new[]
///                             {
///                                 "metric.type=\"serviceruntime.googleapis.com/api/request_latencies\"",
///                                 "resource.type=\"consumed_api\"",
///                             },
///                         }).Apply(invoke => invoke.Result),
///                         Range = new Gcp.Monitoring.Inputs.SloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCutRangeArgs
///                         {
///                             Min = 1,
///                             Max = 9,
///                         },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/monitoring"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		customsrv, err := monitoring.NewCustomService(ctx, "customsrv", &monitoring.CustomServiceArgs{
/// 			ServiceId:   pulumi.String("custom-srv-windows-slos"),
/// 			DisplayName: pulumi.String("My Custom Service"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeJoin, err := std.Join(ctx, &std.JoinArgs{
/// 			Separator: " AND ",
/// 			Input: []string{
/// 				"metric.type=\"serviceruntime.googleapis.com/api/request_latencies\"",
/// 				"resource.type=\"consumed_api\"",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = monitoring.NewSlo(ctx, "windows_based", &monitoring.SloArgs{
/// 			Service:           customsrv.ServiceId,
/// 			DisplayName:       pulumi.String("Test SLO with window based SLI"),
/// 			Goal:              pulumi.Float64(0.9),
/// 			RollingPeriodDays: pulumi.Int(20),
/// 			WindowsBasedSli: &monitoring.SloWindowsBasedSliArgs{
/// 				WindowPeriod: pulumi.String("100s"),
/// 				GoodTotalRatioThreshold: &monitoring.SloWindowsBasedSliGoodTotalRatioThresholdArgs{
/// 					Threshold: pulumi.Float64(0.1),
/// 					Performance: &monitoring.SloWindowsBasedSliGoodTotalRatioThresholdPerformanceArgs{
/// 						DistributionCut: &monitoring.SloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCutArgs{
/// 							DistributionFilter: pulumi.String(invokeJoin.Result),
/// 							Range: &monitoring.SloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCutRangeArgs{
/// 								Min: pulumi.Float64(1),
/// 								Max: pulumi.Float64(9),
/// 							},
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
/// import com.pulumi.gcp.monitoring.CustomService;
/// import com.pulumi.gcp.monitoring.CustomServiceArgs;
/// import com.pulumi.gcp.monitoring.Slo;
/// import com.pulumi.gcp.monitoring.SloArgs;
/// import com.pulumi.gcp.monitoring.inputs.SloWindowsBasedSliArgs;
/// import com.pulumi.gcp.monitoring.inputs.SloWindowsBasedSliGoodTotalRatioThresholdArgs;
/// import com.pulumi.gcp.monitoring.inputs.SloWindowsBasedSliGoodTotalRatioThresholdPerformanceArgs;
/// import com.pulumi.gcp.monitoring.inputs.SloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCutArgs;
/// import com.pulumi.gcp.monitoring.inputs.SloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCutRangeArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.JoinArgs;
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
///         var customsrv = new CustomService("customsrv", CustomServiceArgs.builder()
///             .serviceId("custom-srv-windows-slos")
///             .displayName("My Custom Service")
///             .build());
///
///         var windowsBased = new Slo("windowsBased", SloArgs.builder()
///             .service(customsrv.serviceId())
///             .displayName("Test SLO with window based SLI")
///             .goal(0.9)
///             .rollingPeriodDays(20)
///             .windowsBasedSli(SloWindowsBasedSliArgs.builder()
///                 .windowPeriod("100s")
///                 .goodTotalRatioThreshold(SloWindowsBasedSliGoodTotalRatioThresholdArgs.builder()
///                     .threshold(0.1)
///                     .performance(SloWindowsBasedSliGoodTotalRatioThresholdPerformanceArgs.builder()
///                         .distributionCut(SloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCutArgs.builder()
///                             .distributionFilter(StdFunctions.join(JoinArgs.builder()
///                                 .separator(" AND ")
///                                 .input(
///                                     "metric.type=\"serviceruntime.googleapis.com/api/request_latencies\"",
///                                     "resource.type=\"consumed_api\"")
///                                 .build()).result())
///                             .range(SloWindowsBasedSliGoodTotalRatioThresholdPerformanceDistributionCutRangeArgs.builder()
///                                 .min(1.0)
///                                 .max(9.0)
///                                 .build())
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
///   customsrv:
///     type: gcp:monitoring:CustomService
///     properties:
///       serviceId: custom-srv-windows-slos
///       displayName: My Custom Service
///   windowsBased:
///     type: gcp:monitoring:Slo
///     name: windows_based
///     properties:
///       service: ${customsrv.serviceId}
///       displayName: Test SLO with window based SLI
///       goal: 0.9
///       rollingPeriodDays: 20
///       windowsBasedSli:
///         windowPeriod: 100s
///         goodTotalRatioThreshold:
///           threshold: 0.1
///           performance:
///             distributionCut:
///               distributionFilter:
///                 fn::invoke:
///                   function: std:join
///                   arguments:
///                     separator: ' AND '
///                     input:
///                       - metric.type="serviceruntime.googleapis.com/api/request_latencies"
///                       - resource.type="consumed_api"
///                   return: result
///               range:
///                 min: 1
///                 max: 9
/// ```
///
///
/// ## Import
///
/// Slo can be imported using any of these accepted formats:
///
/// * `{{project}}/{{name}}`
///
/// * `{{project}} {{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Slo can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:monitoring/slo:Slo default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:monitoring/slo:Slo default "{{project}} {{name}}"
/// ```
///
/// ```sh
/// $ pulumi import gcp:monitoring/slo:Slo default {{name}}
/// ```
class Slo extends pulumi.CustomResource {
  /// Basic Service-Level Indicator (SLI) on a well-known service type.
  /// Performance will be computed on the basis of pre-defined metrics.
  /// SLIs are used to measure and calculate the quality of the Service's
  /// performance with respect to a single aspect of service quality.
  /// Exactly one of the following must be set:
  /// `basic_sli`, `request_based_sli`, `windows_based_sli`
  /// Structure is documented below.
  late final pulumi.Output<SloBasicSli?> basicSli;

  /// A calendar period, semantically "since the start of the current
  /// &lt;calendarPeriod&gt;".
  /// Possible values are: `DAY`, `WEEK`, `FORTNIGHT`, `MONTH`.
  late final pulumi.Output<String?> calendarPeriod;

  /// Name used for UI elements listing this SLO.
  late final pulumi.Output<String?> displayName;

  /// The fraction of service that must be good in order for this objective
  /// to be met. 0 &lt; goal &lt;= 0.999
  late final pulumi.Output<double> goal;

  /// The full resource name for this service. The syntax is:
  /// projects/[PROJECT_ID_OR_NUMBER]/services/[SERVICE_ID]/serviceLevelObjectives/[SLO_NAME]
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// A request-based SLI defines a SLI for which atomic units of
  /// service are counted directly.
  /// A SLI describes a good service.
  /// It is used to measure and calculate the quality of the Service's
  /// performance with respect to a single aspect of service quality.
  /// Exactly one of the following must be set:
  /// `basic_sli`, `request_based_sli`, `windows_based_sli`
  /// Structure is documented below.
  late final pulumi.Output<SloRequestBasedSli?> requestBasedSli;

  /// A rolling time period, semantically "in the past X days".
  /// Must be between 1 to 30 days, inclusive.
  late final pulumi.Output<int?> rollingPeriodDays;

  /// ID of the service to which this SLO belongs.
  late final pulumi.Output<String> service;

  /// The id to use for this ServiceLevelObjective. If omitted, an id will be generated instead.
  late final pulumi.Output<String> sloId;

  /// This field is intended to be used for organizing and identifying the AlertPolicy
  /// objects.The field can contain up to 64 entries. Each key and value is limited
  /// to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values
  /// can contain only lowercase letters, numerals, underscores, and dashes. Keys
  /// must begin with a letter.
  late final pulumi.Output<Map<String, String>?> userLabels;

  /// A windows-based SLI defines the criteria for time windows.
  /// good_service is defined based off the count of these time windows
  /// for which the provided service was of good quality.
  /// A SLI describes a good service. It is used to measure and calculate
  /// the quality of the Service's performance with respect to a single
  /// aspect of service quality.
  /// Exactly one of the following must be set:
  /// `basic_sli`, `request_based_sli`, `windows_based_sli`
  /// Structure is documented below.
  late final pulumi.Output<SloWindowsBasedSli?> windowsBasedSli;

  /// Creates a new [Slo].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Slo]. {@macro pulumi_monitoring_slo_slo_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Slo(String name, {SloArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'gcp:monitoring/slo:Slo',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    basicSli = registerOutput<SloBasicSli?>(
      'basicSli',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SloBasicSli.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    calendarPeriod = registerOutput<String?>('calendarPeriod');
    displayName = registerOutput<String?>('displayName');
    goal = registerOutput<double>('goal');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    requestBasedSli = registerOutput<SloRequestBasedSli?>(
      'requestBasedSli',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SloRequestBasedSli.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    rollingPeriodDays = registerOutput<int?>('rollingPeriodDays');
    service = registerOutput<String>('service');
    sloId = registerOutput<String>('sloId');
    userLabels = registerOutput<Map<String, String>?>('userLabels');
    windowsBasedSli = registerOutput<SloWindowsBasedSli?>(
      'windowsBasedSli',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SloWindowsBasedSli.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }

  /// Gets an existing [Slo] resource's state with the given [name] and [id].
  static Slo get(String name, pulumi.Input<String> id, {SloState? state}) {
    return Slo._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Slo._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:monitoring/slo:Slo',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    basicSli = registerOutput<SloBasicSli?>(
      'basicSli',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SloBasicSli.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    calendarPeriod = registerOutput<String?>('calendarPeriod');
    displayName = registerOutput<String?>('displayName');
    goal = registerOutput<double>('goal');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    requestBasedSli = registerOutput<SloRequestBasedSli?>(
      'requestBasedSli',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SloRequestBasedSli.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    rollingPeriodDays = registerOutput<int?>('rollingPeriodDays');
    service = registerOutput<String>('service');
    sloId = registerOutput<String>('sloId');
    userLabels = registerOutput<Map<String, String>?>('userLabels');
    windowsBasedSli = registerOutput<SloWindowsBasedSli?>(
      'windowsBasedSli',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SloWindowsBasedSli.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
