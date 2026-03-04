import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_downtime_args.dart';
import 'monitor_downtime_end_repeat.dart';
import 'monitor_downtime_frequency.dart';
import 'monitor_downtime_state.dart';

/// Use this resource to create, update, and delete [Monitor Downtimes](https://docs.newrelic.com/docs/synthetics/synthetic-monitoring/using-monitors/monitor-downtimes-disable-monitoring-during-scheduled-maintenance-times/) in New Relic.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.MonitorDowntime("foo", {
///     name: "Sample Monitor Downtime",
///     monitorGuids: [
///         "<GUID-1>",
///         "<GUID-2>",
///     ],
///     mode: "WEEKLY",
///     startTime: "2023-11-30T10:30:00",
///     endTime: "2023-12-10T02:45:30",
///     timeZone: "Asia/Kolkata",
///     endRepeat: {
///         onDate: "2023-12-20",
///     },
///     maintenanceDays: [
///         "FRIDAY",
///         "SATURDAY",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.MonitorDowntime("foo",
///     name="Sample Monitor Downtime",
///     monitor_guids=[
///         "<GUID-1>",
///         "<GUID-2>",
///     ],
///     mode="WEEKLY",
///     start_time="2023-11-30T10:30:00",
///     end_time="2023-12-10T02:45:30",
///     time_zone="Asia/Kolkata",
///     end_repeat={
///         "on_date": "2023-12-20",
///     },
///     maintenance_days=[
///         "FRIDAY",
///         "SATURDAY",
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
///     var foo = new NewRelic.MonitorDowntime("foo", new()
///     {
///         Name = "Sample Monitor Downtime",
///         MonitorGuids = new[]
///         {
///             "<GUID-1>",
///             "<GUID-2>",
///         },
///         Mode = "WEEKLY",
///         StartTime = "2023-11-30T10:30:00",
///         EndTime = "2023-12-10T02:45:30",
///         TimeZone = "Asia/Kolkata",
///         EndRepeat = new NewRelic.Inputs.MonitorDowntimeEndRepeatArgs
///         {
///             OnDate = "2023-12-20",
///         },
///         MaintenanceDays = new[]
///         {
///             "FRIDAY",
///             "SATURDAY",
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
/// 		_, err := newrelic.NewMonitorDowntime(ctx, "foo", &newrelic.MonitorDowntimeArgs{
/// 			Name: pulumi.String("Sample Monitor Downtime"),
/// 			MonitorGuids: pulumi.StringArray{
/// 				pulumi.String("<GUID-1>"),
/// 				pulumi.String("<GUID-2>"),
/// 			},
/// 			Mode:      pulumi.String("WEEKLY"),
/// 			StartTime: pulumi.String("2023-11-30T10:30:00"),
/// 			EndTime:   pulumi.String("2023-12-10T02:45:30"),
/// 			TimeZone:  pulumi.String("Asia/Kolkata"),
/// 			EndRepeat: &newrelic.MonitorDowntimeEndRepeatArgs{
/// 				OnDate: pulumi.String("2023-12-20"),
/// 			},
/// 			MaintenanceDays: pulumi.StringArray{
/// 				pulumi.String("FRIDAY"),
/// 				pulumi.String("SATURDAY"),
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
/// import com.pulumi.newrelic.MonitorDowntime;
/// import com.pulumi.newrelic.MonitorDowntimeArgs;
/// import com.pulumi.newrelic.inputs.MonitorDowntimeEndRepeatArgs;
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
///         var foo = new MonitorDowntime("foo", MonitorDowntimeArgs.builder()
///             .name("Sample Monitor Downtime")
///             .monitorGuids(
///                 "<GUID-1>",
///                 "<GUID-2>")
///             .mode("WEEKLY")
///             .startTime("2023-11-30T10:30:00")
///             .endTime("2023-12-10T02:45:30")
///             .timeZone("Asia/Kolkata")
///             .endRepeat(MonitorDowntimeEndRepeatArgs.builder()
///                 .onDate("2023-12-20")
///                 .build())
///             .maintenanceDays(
///                 "FRIDAY",
///                 "SATURDAY")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:MonitorDowntime
///     properties:
///       name: Sample Monitor Downtime
///       monitorGuids:
///         - <GUID-1>
///         - <GUID-2>
///       mode: WEEKLY
///       startTime: 2023-11-30T10:30:00
///       endTime: 2023-12-10T02:45:30
///       timeZone: Asia/Kolkata
///       endRepeat:
///         onDate: 2023-12-20
///       maintenanceDays:
///         - FRIDAY
///         - SATURDAY
/// ```
///
/// Monitor Downtimes are of four types; **one-time**, **daily**, **weekly** and **monthly**. For more details on each type and the right arguments that go with them, check out the argument reference and examples sections below.
///
/// ## Examples
///
/// ### One-Time Monitor Downtime
///
/// The below example illustrates creating a **one-time** monitor downtime.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const sampleOneTimeNewrelicMonitorDowntime = new newrelic.MonitorDowntime("sample_one_time_newrelic_monitor_downtime", {
///     name: "Sample One Time Monitor Downtime",
///     monitorGuids: [
///         "<GUID-1>",
///         "<GUID-2>",
///     ],
///     mode: "ONE_TIME",
///     startTime: "2023-12-04T10:15:00",
///     endTime: "2024-01-04T16:24:30",
///     timeZone: "America/Los_Angeles",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// sample_one_time_newrelic_monitor_downtime = newrelic.MonitorDowntime("sample_one_time_newrelic_monitor_downtime",
///     name="Sample One Time Monitor Downtime",
///     monitor_guids=[
///         "<GUID-1>",
///         "<GUID-2>",
///     ],
///     mode="ONE_TIME",
///     start_time="2023-12-04T10:15:00",
///     end_time="2024-01-04T16:24:30",
///     time_zone="America/Los_Angeles")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sampleOneTimeNewrelicMonitorDowntime = new NewRelic.MonitorDowntime("sample_one_time_newrelic_monitor_downtime", new()
///     {
///         Name = "Sample One Time Monitor Downtime",
///         MonitorGuids = new[]
///         {
///             "<GUID-1>",
///             "<GUID-2>",
///         },
///         Mode = "ONE_TIME",
///         StartTime = "2023-12-04T10:15:00",
///         EndTime = "2024-01-04T16:24:30",
///         TimeZone = "America/Los_Angeles",
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
/// 		_, err := newrelic.NewMonitorDowntime(ctx, "sample_one_time_newrelic_monitor_downtime", &newrelic.MonitorDowntimeArgs{
/// 			Name: pulumi.String("Sample One Time Monitor Downtime"),
/// 			MonitorGuids: pulumi.StringArray{
/// 				pulumi.String("<GUID-1>"),
/// 				pulumi.String("<GUID-2>"),
/// 			},
/// 			Mode:      pulumi.String("ONE_TIME"),
/// 			StartTime: pulumi.String("2023-12-04T10:15:00"),
/// 			EndTime:   pulumi.String("2024-01-04T16:24:30"),
/// 			TimeZone:  pulumi.String("America/Los_Angeles"),
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
/// import com.pulumi.newrelic.MonitorDowntime;
/// import com.pulumi.newrelic.MonitorDowntimeArgs;
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
///         var sampleOneTimeNewrelicMonitorDowntime = new MonitorDowntime("sampleOneTimeNewrelicMonitorDowntime", MonitorDowntimeArgs.builder()
///             .name("Sample One Time Monitor Downtime")
///             .monitorGuids(
///                 "<GUID-1>",
///                 "<GUID-2>")
///             .mode("ONE_TIME")
///             .startTime("2023-12-04T10:15:00")
///             .endTime("2024-01-04T16:24:30")
///             .timeZone("America/Los_Angeles")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sampleOneTimeNewrelicMonitorDowntime:
///     type: newrelic:MonitorDowntime
///     name: sample_one_time_newrelic_monitor_downtime
///     properties:
///       name: Sample One Time Monitor Downtime
///       monitorGuids:
///         - <GUID-1>
///         - <GUID-2>
///       mode: ONE_TIME
///       startTime: 2023-12-04T10:15:00
///       endTime: 2024-01-04T16:24:30
///       timeZone: America/Los_Angeles
/// ```
///
///
/// ### Daily Monitor Downtime
///
/// The below example illustrates creating a **daily** monitor downtime.
///
/// Note that `end_repeat` has been specified in the configuration; however, this is optional, in accordance with the rules of `end_repeat` specified in the argument reference section above. This example uses the `on_date` nested argument of `end_repeat`, however, the other nested argument, `on_repeat` may also be used _instead_, as you may see in some of the other examples below; though both `on_date` and `on_repeat` cannot be specified together, as they are mutually exclusive.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const sampleDailyNewrelicMonitorDowntime = new newrelic.MonitorDowntime("sample_daily_newrelic_monitor_downtime", {
///     name: "Sample Daily Monitor Downtime",
///     monitorGuids: [
///         "<GUID-1>",
///         "<GUID-2>",
///     ],
///     mode: "DAILY",
///     startTime: "2023-12-04T18:15:00",
///     endTime: "2024-01-04T07:15:00",
///     endRepeat: {
///         onDate: "2023-12-25",
///     },
///     timeZone: "Asia/Kolkata",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// sample_daily_newrelic_monitor_downtime = newrelic.MonitorDowntime("sample_daily_newrelic_monitor_downtime",
///     name="Sample Daily Monitor Downtime",
///     monitor_guids=[
///         "<GUID-1>",
///         "<GUID-2>",
///     ],
///     mode="DAILY",
///     start_time="2023-12-04T18:15:00",
///     end_time="2024-01-04T07:15:00",
///     end_repeat={
///         "on_date": "2023-12-25",
///     },
///     time_zone="Asia/Kolkata")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sampleDailyNewrelicMonitorDowntime = new NewRelic.MonitorDowntime("sample_daily_newrelic_monitor_downtime", new()
///     {
///         Name = "Sample Daily Monitor Downtime",
///         MonitorGuids = new[]
///         {
///             "<GUID-1>",
///             "<GUID-2>",
///         },
///         Mode = "DAILY",
///         StartTime = "2023-12-04T18:15:00",
///         EndTime = "2024-01-04T07:15:00",
///         EndRepeat = new NewRelic.Inputs.MonitorDowntimeEndRepeatArgs
///         {
///             OnDate = "2023-12-25",
///         },
///         TimeZone = "Asia/Kolkata",
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
/// 		_, err := newrelic.NewMonitorDowntime(ctx, "sample_daily_newrelic_monitor_downtime", &newrelic.MonitorDowntimeArgs{
/// 			Name: pulumi.String("Sample Daily Monitor Downtime"),
/// 			MonitorGuids: pulumi.StringArray{
/// 				pulumi.String("<GUID-1>"),
/// 				pulumi.String("<GUID-2>"),
/// 			},
/// 			Mode:      pulumi.String("DAILY"),
/// 			StartTime: pulumi.String("2023-12-04T18:15:00"),
/// 			EndTime:   pulumi.String("2024-01-04T07:15:00"),
/// 			EndRepeat: &newrelic.MonitorDowntimeEndRepeatArgs{
/// 				OnDate: pulumi.String("2023-12-25"),
/// 			},
/// 			TimeZone: pulumi.String("Asia/Kolkata"),
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
/// import com.pulumi.newrelic.MonitorDowntime;
/// import com.pulumi.newrelic.MonitorDowntimeArgs;
/// import com.pulumi.newrelic.inputs.MonitorDowntimeEndRepeatArgs;
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
///         var sampleDailyNewrelicMonitorDowntime = new MonitorDowntime("sampleDailyNewrelicMonitorDowntime", MonitorDowntimeArgs.builder()
///             .name("Sample Daily Monitor Downtime")
///             .monitorGuids(
///                 "<GUID-1>",
///                 "<GUID-2>")
///             .mode("DAILY")
///             .startTime("2023-12-04T18:15:00")
///             .endTime("2024-01-04T07:15:00")
///             .endRepeat(MonitorDowntimeEndRepeatArgs.builder()
///                 .onDate("2023-12-25")
///                 .build())
///             .timeZone("Asia/Kolkata")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sampleDailyNewrelicMonitorDowntime:
///     type: newrelic:MonitorDowntime
///     name: sample_daily_newrelic_monitor_downtime
///     properties:
///       name: Sample Daily Monitor Downtime
///       monitorGuids:
///         - <GUID-1>
///         - <GUID-2>
///       mode: DAILY
///       startTime: 2023-12-04T18:15:00
///       endTime: 2024-01-04T07:15:00
///       endRepeat:
///         onDate: 2023-12-25
///       timeZone: Asia/Kolkata
/// ```
///
///
/// ### Weekly Monitor Downtime
///
/// The below example illustrates creating a **weekly** monitor downtime.
///
/// Note that `maintenance_days` has been specified in the configuration as it is required with weekly monitor downtimes; and `end_repeat` has not been specified as it is optional, all in accordance with the rules of these arguments specified in the argument reference section above.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const sampleWeeklyNewrelicMonitorDowntime = new newrelic.MonitorDowntime("sample_weekly_newrelic_monitor_downtime", {
///     name: "Sample Weekly Monitor Downtime",
///     monitorGuids: [
///         "<GUID-1>",
///         "<GUID-2>",
///     ],
///     mode: "WEEKLY",
///     startTime: "2023-12-04T14:15:00",
///     endTime: "2024-01-04T23:55:00",
///     timeZone: "US/Hawaii",
///     maintenanceDays: [
///         "SATURDAY",
///         "SUNDAY",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// sample_weekly_newrelic_monitor_downtime = newrelic.MonitorDowntime("sample_weekly_newrelic_monitor_downtime",
///     name="Sample Weekly Monitor Downtime",
///     monitor_guids=[
///         "<GUID-1>",
///         "<GUID-2>",
///     ],
///     mode="WEEKLY",
///     start_time="2023-12-04T14:15:00",
///     end_time="2024-01-04T23:55:00",
///     time_zone="US/Hawaii",
///     maintenance_days=[
///         "SATURDAY",
///         "SUNDAY",
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
///     var sampleWeeklyNewrelicMonitorDowntime = new NewRelic.MonitorDowntime("sample_weekly_newrelic_monitor_downtime", new()
///     {
///         Name = "Sample Weekly Monitor Downtime",
///         MonitorGuids = new[]
///         {
///             "<GUID-1>",
///             "<GUID-2>",
///         },
///         Mode = "WEEKLY",
///         StartTime = "2023-12-04T14:15:00",
///         EndTime = "2024-01-04T23:55:00",
///         TimeZone = "US/Hawaii",
///         MaintenanceDays = new[]
///         {
///             "SATURDAY",
///             "SUNDAY",
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
/// 		_, err := newrelic.NewMonitorDowntime(ctx, "sample_weekly_newrelic_monitor_downtime", &newrelic.MonitorDowntimeArgs{
/// 			Name: pulumi.String("Sample Weekly Monitor Downtime"),
/// 			MonitorGuids: pulumi.StringArray{
/// 				pulumi.String("<GUID-1>"),
/// 				pulumi.String("<GUID-2>"),
/// 			},
/// 			Mode:      pulumi.String("WEEKLY"),
/// 			StartTime: pulumi.String("2023-12-04T14:15:00"),
/// 			EndTime:   pulumi.String("2024-01-04T23:55:00"),
/// 			TimeZone:  pulumi.String("US/Hawaii"),
/// 			MaintenanceDays: pulumi.StringArray{
/// 				pulumi.String("SATURDAY"),
/// 				pulumi.String("SUNDAY"),
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
/// import com.pulumi.newrelic.MonitorDowntime;
/// import com.pulumi.newrelic.MonitorDowntimeArgs;
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
///         var sampleWeeklyNewrelicMonitorDowntime = new MonitorDowntime("sampleWeeklyNewrelicMonitorDowntime", MonitorDowntimeArgs.builder()
///             .name("Sample Weekly Monitor Downtime")
///             .monitorGuids(
///                 "<GUID-1>",
///                 "<GUID-2>")
///             .mode("WEEKLY")
///             .startTime("2023-12-04T14:15:00")
///             .endTime("2024-01-04T23:55:00")
///             .timeZone("US/Hawaii")
///             .maintenanceDays(
///                 "SATURDAY",
///                 "SUNDAY")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sampleWeeklyNewrelicMonitorDowntime:
///     type: newrelic:MonitorDowntime
///     name: sample_weekly_newrelic_monitor_downtime
///     properties:
///       name: Sample Weekly Monitor Downtime
///       monitorGuids:
///         - <GUID-1>
///         - <GUID-2>
///       mode: WEEKLY
///       startTime: 2023-12-04T14:15:00
///       endTime: 2024-01-04T23:55:00
///       timeZone: US/Hawaii
///       maintenanceDays:
///         - SATURDAY
///         - SUNDAY
/// ```
///
///
/// ### Monthly Monitor Downtime
///
/// The below example illustrates creating a **monthly** monitor downtime.
///
/// Note that `frequency` has been specified in the configuration as it is required with monthly monitor downtimes, and `end_repeat` has been specified too, though it is optional. `frequency` has been specified with `days_of_week` comprising both of its nested arguments, `ordinal_day_of_month` and `week_day`; all in accordance with the rules of these arguments specified in the argument reference section above.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const sampleMonthlyNewrelicMonitorDowntime = new newrelic.MonitorDowntime("sample_monthly_newrelic_monitor_downtime", {
///     name: "Sample Monthly Monitor Downtime",
///     monitorGuids: [
///         "<GUID-1>",
///         "<GUID-2>",
///     ],
///     mode: "MONTHLY",
///     startTime: "2023-12-04T07:15:00",
///     endTime: "2024-01-04T19:15:00",
///     endRepeat: {
///         onRepeat: 6,
///     },
///     timeZone: "Europe/Dublin",
///     frequency: {
///         daysOfWeek: {
///             ordinalDayOfMonth: "SECOND",
///             weekDay: "SATURDAY",
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// sample_monthly_newrelic_monitor_downtime = newrelic.MonitorDowntime("sample_monthly_newrelic_monitor_downtime",
///     name="Sample Monthly Monitor Downtime",
///     monitor_guids=[
///         "<GUID-1>",
///         "<GUID-2>",
///     ],
///     mode="MONTHLY",
///     start_time="2023-12-04T07:15:00",
///     end_time="2024-01-04T19:15:00",
///     end_repeat={
///         "on_repeat": 6,
///     },
///     time_zone="Europe/Dublin",
///     frequency={
///         "days_of_week": {
///             "ordinal_day_of_month": "SECOND",
///             "week_day": "SATURDAY",
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sampleMonthlyNewrelicMonitorDowntime = new NewRelic.MonitorDowntime("sample_monthly_newrelic_monitor_downtime", new()
///     {
///         Name = "Sample Monthly Monitor Downtime",
///         MonitorGuids = new[]
///         {
///             "<GUID-1>",
///             "<GUID-2>",
///         },
///         Mode = "MONTHLY",
///         StartTime = "2023-12-04T07:15:00",
///         EndTime = "2024-01-04T19:15:00",
///         EndRepeat = new NewRelic.Inputs.MonitorDowntimeEndRepeatArgs
///         {
///             OnRepeat = 6,
///         },
///         TimeZone = "Europe/Dublin",
///         Frequency = new NewRelic.Inputs.MonitorDowntimeFrequencyArgs
///         {
///             DaysOfWeek = new NewRelic.Inputs.MonitorDowntimeFrequencyDaysOfWeekArgs
///             {
///                 OrdinalDayOfMonth = "SECOND",
///                 WeekDay = "SATURDAY",
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
/// 		_, err := newrelic.NewMonitorDowntime(ctx, "sample_monthly_newrelic_monitor_downtime", &newrelic.MonitorDowntimeArgs{
/// 			Name: pulumi.String("Sample Monthly Monitor Downtime"),
/// 			MonitorGuids: pulumi.StringArray{
/// 				pulumi.String("<GUID-1>"),
/// 				pulumi.String("<GUID-2>"),
/// 			},
/// 			Mode:      pulumi.String("MONTHLY"),
/// 			StartTime: pulumi.String("2023-12-04T07:15:00"),
/// 			EndTime:   pulumi.String("2024-01-04T19:15:00"),
/// 			EndRepeat: &newrelic.MonitorDowntimeEndRepeatArgs{
/// 				OnRepeat: pulumi.Int(6),
/// 			},
/// 			TimeZone: pulumi.String("Europe/Dublin"),
/// 			Frequency: &newrelic.MonitorDowntimeFrequencyArgs{
/// 				DaysOfWeek: &newrelic.MonitorDowntimeFrequencyDaysOfWeekArgs{
/// 					OrdinalDayOfMonth: pulumi.String("SECOND"),
/// 					WeekDay:           pulumi.String("SATURDAY"),
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
/// import com.pulumi.newrelic.MonitorDowntime;
/// import com.pulumi.newrelic.MonitorDowntimeArgs;
/// import com.pulumi.newrelic.inputs.MonitorDowntimeEndRepeatArgs;
/// import com.pulumi.newrelic.inputs.MonitorDowntimeFrequencyArgs;
/// import com.pulumi.newrelic.inputs.MonitorDowntimeFrequencyDaysOfWeekArgs;
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
///         var sampleMonthlyNewrelicMonitorDowntime = new MonitorDowntime("sampleMonthlyNewrelicMonitorDowntime", MonitorDowntimeArgs.builder()
///             .name("Sample Monthly Monitor Downtime")
///             .monitorGuids(
///                 "<GUID-1>",
///                 "<GUID-2>")
///             .mode("MONTHLY")
///             .startTime("2023-12-04T07:15:00")
///             .endTime("2024-01-04T19:15:00")
///             .endRepeat(MonitorDowntimeEndRepeatArgs.builder()
///                 .onRepeat(6)
///                 .build())
///             .timeZone("Europe/Dublin")
///             .frequency(MonitorDowntimeFrequencyArgs.builder()
///                 .daysOfWeek(MonitorDowntimeFrequencyDaysOfWeekArgs.builder()
///                     .ordinalDayOfMonth("SECOND")
///                     .weekDay("SATURDAY")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sampleMonthlyNewrelicMonitorDowntime:
///     type: newrelic:MonitorDowntime
///     name: sample_monthly_newrelic_monitor_downtime
///     properties:
///       name: Sample Monthly Monitor Downtime
///       monitorGuids:
///         - <GUID-1>
///         - <GUID-2>
///       mode: MONTHLY
///       startTime: 2023-12-04T07:15:00
///       endTime: 2024-01-04T19:15:00
///       endRepeat:
///         onRepeat: 6
///       timeZone: Europe/Dublin
///       frequency:
///         daysOfWeek:
///           ordinalDayOfMonth: SECOND
///           weekDay: SATURDAY
/// ```
///
/// However, the `frequency` block in monthly monitor downtimes may also be specified with its other nested argument, `days_of_month`, as shown in the example below - though both `days_of_month` and `days_of_week` cannot be specified together, as they are mutually exclusive.
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const sampleMonthlyNewrelicMonitorDowntime = new newrelic.MonitorDowntime("sample_monthly_newrelic_monitor_downtime", {
///     name: "Sample Monthly Monitor Downtime",
///     monitorGuids: [
///         "<GUID-1>",
///         "<GUID-2>",
///     ],
///     mode: "MONTHLY",
///     startTime: "2023-12-04T07:15:00",
///     endTime: "2024-01-04T19:15:00",
///     endRepeat: {
///         onRepeat: 6,
///     },
///     timeZone: "Europe/Dublin",
///     frequency: {
///         daysOfMonths: [
///             3,
///             6,
///             14,
///             23,
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// sample_monthly_newrelic_monitor_downtime = newrelic.MonitorDowntime("sample_monthly_newrelic_monitor_downtime",
///     name="Sample Monthly Monitor Downtime",
///     monitor_guids=[
///         "<GUID-1>",
///         "<GUID-2>",
///     ],
///     mode="MONTHLY",
///     start_time="2023-12-04T07:15:00",
///     end_time="2024-01-04T19:15:00",
///     end_repeat={
///         "on_repeat": 6,
///     },
///     time_zone="Europe/Dublin",
///     frequency={
///         "days_of_months": [
///             3,
///             6,
///             14,
///             23,
///         ],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var sampleMonthlyNewrelicMonitorDowntime = new NewRelic.MonitorDowntime("sample_monthly_newrelic_monitor_downtime", new()
///     {
///         Name = "Sample Monthly Monitor Downtime",
///         MonitorGuids = new[]
///         {
///             "<GUID-1>",
///             "<GUID-2>",
///         },
///         Mode = "MONTHLY",
///         StartTime = "2023-12-04T07:15:00",
///         EndTime = "2024-01-04T19:15:00",
///         EndRepeat = new NewRelic.Inputs.MonitorDowntimeEndRepeatArgs
///         {
///             OnRepeat = 6,
///         },
///         TimeZone = "Europe/Dublin",
///         Frequency = new NewRelic.Inputs.MonitorDowntimeFrequencyArgs
///         {
///             DaysOfMonths = new[]
///             {
///                 3,
///                 6,
///                 14,
///                 23,
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
/// 		_, err := newrelic.NewMonitorDowntime(ctx, "sample_monthly_newrelic_monitor_downtime", &newrelic.MonitorDowntimeArgs{
/// 			Name: pulumi.String("Sample Monthly Monitor Downtime"),
/// 			MonitorGuids: pulumi.StringArray{
/// 				pulumi.String("<GUID-1>"),
/// 				pulumi.String("<GUID-2>"),
/// 			},
/// 			Mode:      pulumi.String("MONTHLY"),
/// 			StartTime: pulumi.String("2023-12-04T07:15:00"),
/// 			EndTime:   pulumi.String("2024-01-04T19:15:00"),
/// 			EndRepeat: &newrelic.MonitorDowntimeEndRepeatArgs{
/// 				OnRepeat: pulumi.Int(6),
/// 			},
/// 			TimeZone: pulumi.String("Europe/Dublin"),
/// 			Frequency: &newrelic.MonitorDowntimeFrequencyArgs{
/// 				DaysOfMonths: pulumi.IntArray{
/// 					pulumi.Int(3),
/// 					pulumi.Int(6),
/// 					pulumi.Int(14),
/// 					pulumi.Int(23),
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
/// import com.pulumi.newrelic.MonitorDowntime;
/// import com.pulumi.newrelic.MonitorDowntimeArgs;
/// import com.pulumi.newrelic.inputs.MonitorDowntimeEndRepeatArgs;
/// import com.pulumi.newrelic.inputs.MonitorDowntimeFrequencyArgs;
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
///         var sampleMonthlyNewrelicMonitorDowntime = new MonitorDowntime("sampleMonthlyNewrelicMonitorDowntime", MonitorDowntimeArgs.builder()
///             .name("Sample Monthly Monitor Downtime")
///             .monitorGuids(
///                 "<GUID-1>",
///                 "<GUID-2>")
///             .mode("MONTHLY")
///             .startTime("2023-12-04T07:15:00")
///             .endTime("2024-01-04T19:15:00")
///             .endRepeat(MonitorDowntimeEndRepeatArgs.builder()
///                 .onRepeat(6)
///                 .build())
///             .timeZone("Europe/Dublin")
///             .frequency(MonitorDowntimeFrequencyArgs.builder()
///                 .daysOfMonths(
///                     3,
///                     6,
///                     14,
///                     23)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   sampleMonthlyNewrelicMonitorDowntime:
///     type: newrelic:MonitorDowntime
///     name: sample_monthly_newrelic_monitor_downtime
///     properties:
///       name: Sample Monthly Monitor Downtime
///       monitorGuids:
///         - <GUID-1>
///         - <GUID-2>
///       mode: MONTHLY
///       startTime: 2023-12-04T07:15:00
///       endTime: 2024-01-04T19:15:00
///       endRepeat:
///         onRepeat: 6
///       timeZone: Europe/Dublin
///       frequency:
///         daysOfMonths:
///           - 3
///           - 6
///           - 14
///           - 23
/// ```
///
///
/// ## Import
///
/// A monitor downtime can be imported into Terraform configuration using its `guid`, i.e.
///
/// ```bash
/// $ terraform import newrelic_monitor_downtime.monitor <guid>
/// ```
class MonitorDowntime extends pulumi.CustomResource {
  /// The ID of the New Relic account in which the Monitor Downtime shall be created. Defaults to the `account_id` in the provider{} configuration if not specified.
  late final pulumi.Output<String> accountId;

  /// A specification of when the Monitor Downtime should end its repeat cycle, by number of occurrences or date.
  late final pulumi.Output<MonitorDowntimeEndRepeat?> endRepeat;

  /// A datetime stamp signifying the end of the Monitor Downtime.
  late final pulumi.Output<String> endTime;

  /// Configuration options for which days of the month a monitor downtime will occur
  late final pulumi.Output<MonitorDowntimeFrequency?> frequency;

  /// A list of maintenance days to be included with the created weekly Monitor Downtime.
  late final pulumi.Output<List<String>?> maintenanceDays;

  /// An identifier of the type of Monitor Downtime to be created.
  late final pulumi.Output<String> mode;

  /// A list of GUIDs of monitors, to which the created Monitor Downtime shall be applied.
  late final pulumi.Output<List<String>?> monitorGuids;

  /// A name to identify the Monitor Downtime to be created.
  late final pulumi.Output<String> name;

  /// A datetime stamp signifying the start of the Monitor Downtime.
  late final pulumi.Output<String> startTime;

  /// The timezone that applies to the Monitor Downtime schedule.
  late final pulumi.Output<String> timeZone;

  /// Creates a new [MonitorDowntime].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MonitorDowntime]. {@macro pulumi_index_monitor_downtime_monitor_downtime_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MonitorDowntime(
    String name, {
    MonitorDowntimeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'newrelic:index/monitorDowntime:MonitorDowntime',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    endRepeat = registerOutput<MonitorDowntimeEndRepeat?>('endRepeat');
    endTime = registerOutput<String>('endTime');
    frequency = registerOutput<MonitorDowntimeFrequency?>('frequency');
    maintenanceDays = registerOutput<List<String>?>('maintenanceDays');
    mode = registerOutput<String>('mode');
    monitorGuids = registerOutput<List<String>?>('monitorGuids');
    this.name = registerOutput<String>('name');
    startTime = registerOutput<String>('startTime');
    timeZone = registerOutput<String>('timeZone');
  }

  /// Gets an existing [MonitorDowntime] resource's state with the given [name] and [id].
  static MonitorDowntime get(
    String name,
    pulumi.Input<String> id, {
    MonitorDowntimeState? state,
  }) {
    return MonitorDowntime._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MonitorDowntime._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'newrelic:index/monitorDowntime:MonitorDowntime',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    accountId = registerOutput<String>('accountId');
    endRepeat = registerOutput<MonitorDowntimeEndRepeat?>('endRepeat');
    endTime = registerOutput<String>('endTime');
    frequency = registerOutput<MonitorDowntimeFrequency?>('frequency');
    maintenanceDays = registerOutput<List<String>?>('maintenanceDays');
    mode = registerOutput<String>('mode');
    monitorGuids = registerOutput<List<String>?>('monitorGuids');
    this.name = registerOutput<String>('name');
    startTime = registerOutput<String>('startTime');
    timeZone = registerOutput<String>('timeZone');
  }
}
