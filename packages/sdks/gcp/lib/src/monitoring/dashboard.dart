import 'package:pulumi/pulumi.dart' as pulumi;
import 'dashboard_args.dart';
import 'dashboard_state.dart';

/// A Google Stackdriver dashboard. Dashboards define the content and layout of pages in the Stackdriver web application.
///
/// To get more information about Dashboards, see:
///
/// * [API documentation](https://cloud.google.com/monitoring/api/ref_v3/rest/v1/projects.dashboards)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/monitoring/dashboards)
///
/// ## Example Usage
///
/// ### Monitoring Dashboard Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dashboard = new gcp.monitoring.Dashboard("dashboard", {dashboardJson: `{
///   \\"displayName\\": \\"Demo Dashboard\\",
///   \\"gridLayout\\": {
///     \\"widgets\\": [
///       {
///         \\"blank\\": {}
///       }
///     ]
///   }
/// }
///
/// `});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dashboard = gcp.monitoring.Dashboard("dashboard", dashboard_json="""{
///   \"displayName\": \"Demo Dashboard\",
///   \"gridLayout\": {
///     \"widgets\": [
///       {
///         \"blank\": {}
///       }
///     ]
///   }
/// }
///
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dashboard = new Gcp.Monitoring.Dashboard("dashboard", new()
///     {
///         DashboardJson = @"{
///   \""displayName\"": \""Demo Dashboard\"",
///   \""gridLayout\"": {
///     \""widgets\"": [
///       {
///         \""blank\"": {}
///       }
///     ]
///   }
/// }
///
/// ",
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
/// 		_, err := monitoring.NewDashboard(ctx, "dashboard", &monitoring.DashboardArgs{
/// 			DashboardJson: pulumi.String(`{
///   \"displayName\": \"Demo Dashboard\",
///   \"gridLayout\": {
///     \"widgets\": [
///       {
///         \"blank\": {}
///       }
///     ]
///   }
/// }
///
/// `),
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
/// resource "gcp_monitoring_dashboard" "dashboard" {
///   dashboard_json = "{\n  \\\"displayName\\\": \\\"Demo Dashboard\\\",\n  \\\"gridLayout\\\": {\n    \\\"widgets\\\": [\n      {\n        \\\"blank\\\": {}\n      }\n    ]\n  }\n}\n\n"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.monitoring.Dashboard;
/// import com.pulumi.gcp.monitoring.DashboardArgs;
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
///         var dashboard = new Dashboard("dashboard", DashboardArgs.builder()
///             .dashboardJson("""
/// {
///   \"displayName\": \"Demo Dashboard\",
///   \"gridLayout\": {
///     \"widgets\": [
///       {
///         \"blank\": {}
///       }
///     ]
///   }
/// }
///
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dashboard:
///     type: gcp:monitoring:Dashboard
///     properties:
///       dashboardJson: |+
///         {
///           \"displayName\": \"Demo Dashboard\",
///           \"gridLayout\": {
///             \"widgets\": [
///               {
///                 \"blank\": {}
///               }
///             ]
///           }
///         }
/// ```
///
///
/// ### Monitoring Dashboard GridLayout
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const dashboard = new gcp.monitoring.Dashboard("dashboard", {dashboardJson: `{
///   \\"displayName\\": \\"Grid Layout Example\\",
///   \\"gridLayout\\": {
///     \\"columns\\": \\"2\\",
///     \\"widgets\\": [
///       {
///         \\"title\\": \\"Widget 1\\",
///         \\"xyChart\\": {
///           \\"dataSets\\": [{
///             \\"timeSeriesQuery\\": {
///               \\"timeSeriesFilter\\": {
///                 \\"filter\\": \\"metric.type=\\\\\\"agent.googleapis.com/nginx/connections/accepted_count\\\\\\"\\",
///                 \\"aggregation\\": {
///                   \\"perSeriesAligner\\": \\"ALIGN_RATE\\"
///                 }
///               },
///               \\"unitOverride\\": \\"1\\"
///             },
///             \\"plotType\\": \\"LINE\\"
///           }],
///           \\"timeshiftDuration\\": \\"0s\\",
///           \\"yAxis\\": {
///             \\"label\\": \\"y1Axis\\",
///             \\"scale\\": \\"LINEAR\\"
///           }
///         }
///       },
///       {
///         \\"text\\": {
///           \\"content\\": \\"Widget 2\\",
///           \\"format\\": \\"MARKDOWN\\"
///         }
///       },
///       {
///         \\"title\\": \\"Widget 3\\",
///         \\"xyChart\\": {
///           \\"dataSets\\": [{
///             \\"timeSeriesQuery\\": {
///               \\"timeSeriesFilter\\": {
///                 \\"filter\\": \\"metric.type=\\\\\\"agent.googleapis.com/nginx/connections/accepted_count\\\\\\"\\",
///                 \\"aggregation\\": {
///                   \\"perSeriesAligner\\": \\"ALIGN_RATE\\"
///                 }
///               },
///               \\"unitOverride\\": \\"1\\"
///             },
///             \\"plotType\\": \\"STACKED_BAR\\"
///           }],
///           \\"timeshiftDuration\\": \\"0s\\",
///           \\"yAxis\\": {
///             \\"label\\": \\"y1Axis\\",
///             \\"scale\\": \\"LINEAR\\"
///           }
///         }
///       }
///     ]
///   }
/// }
///
/// `});
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// dashboard = gcp.monitoring.Dashboard("dashboard", dashboard_json="""{
///   \"displayName\": \"Grid Layout Example\",
///   \"gridLayout\": {
///     \"columns\": \"2\",
///     \"widgets\": [
///       {
///         \"title\": \"Widget 1\",
///         \"xyChart\": {
///           \"dataSets\": [{
///             \"timeSeriesQuery\": {
///               \"timeSeriesFilter\": {
///                 \"filter\": \"metric.type=\\\"agent.googleapis.com/nginx/connections/accepted_count\\\"\",
///                 \"aggregation\": {
///                   \"perSeriesAligner\": \"ALIGN_RATE\"
///                 }
///               },
///               \"unitOverride\": \"1\"
///             },
///             \"plotType\": \"LINE\"
///           }],
///           \"timeshiftDuration\": \"0s\",
///           \"yAxis\": {
///             \"label\": \"y1Axis\",
///             \"scale\": \"LINEAR\"
///           }
///         }
///       },
///       {
///         \"text\": {
///           \"content\": \"Widget 2\",
///           \"format\": \"MARKDOWN\"
///         }
///       },
///       {
///         \"title\": \"Widget 3\",
///         \"xyChart\": {
///           \"dataSets\": [{
///             \"timeSeriesQuery\": {
///               \"timeSeriesFilter\": {
///                 \"filter\": \"metric.type=\\\"agent.googleapis.com/nginx/connections/accepted_count\\\"\",
///                 \"aggregation\": {
///                   \"perSeriesAligner\": \"ALIGN_RATE\"
///                 }
///               },
///               \"unitOverride\": \"1\"
///             },
///             \"plotType\": \"STACKED_BAR\"
///           }],
///           \"timeshiftDuration\": \"0s\",
///           \"yAxis\": {
///             \"label\": \"y1Axis\",
///             \"scale\": \"LINEAR\"
///           }
///         }
///       }
///     ]
///   }
/// }
///
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var dashboard = new Gcp.Monitoring.Dashboard("dashboard", new()
///     {
///         DashboardJson = @"{
///   \""displayName\"": \""Grid Layout Example\"",
///   \""gridLayout\"": {
///     \""columns\"": \""2\"",
///     \""widgets\"": [
///       {
///         \""title\"": \""Widget 1\"",
///         \""xyChart\"": {
///           \""dataSets\"": [{
///             \""timeSeriesQuery\"": {
///               \""timeSeriesFilter\"": {
///                 \""filter\"": \""metric.type=\\\""agent.googleapis.com/nginx/connections/accepted_count\\\""\"",
///                 \""aggregation\"": {
///                   \""perSeriesAligner\"": \""ALIGN_RATE\""
///                 }
///               },
///               \""unitOverride\"": \""1\""
///             },
///             \""plotType\"": \""LINE\""
///           }],
///           \""timeshiftDuration\"": \""0s\"",
///           \""yAxis\"": {
///             \""label\"": \""y1Axis\"",
///             \""scale\"": \""LINEAR\""
///           }
///         }
///       },
///       {
///         \""text\"": {
///           \""content\"": \""Widget 2\"",
///           \""format\"": \""MARKDOWN\""
///         }
///       },
///       {
///         \""title\"": \""Widget 3\"",
///         \""xyChart\"": {
///           \""dataSets\"": [{
///             \""timeSeriesQuery\"": {
///               \""timeSeriesFilter\"": {
///                 \""filter\"": \""metric.type=\\\""agent.googleapis.com/nginx/connections/accepted_count\\\""\"",
///                 \""aggregation\"": {
///                   \""perSeriesAligner\"": \""ALIGN_RATE\""
///                 }
///               },
///               \""unitOverride\"": \""1\""
///             },
///             \""plotType\"": \""STACKED_BAR\""
///           }],
///           \""timeshiftDuration\"": \""0s\"",
///           \""yAxis\"": {
///             \""label\"": \""y1Axis\"",
///             \""scale\"": \""LINEAR\""
///           }
///         }
///       }
///     ]
///   }
/// }
///
/// ",
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
/// 		_, err := monitoring.NewDashboard(ctx, "dashboard", &monitoring.DashboardArgs{
/// 			DashboardJson: pulumi.String(`{
///   \"displayName\": \"Grid Layout Example\",
///   \"gridLayout\": {
///     \"columns\": \"2\",
///     \"widgets\": [
///       {
///         \"title\": \"Widget 1\",
///         \"xyChart\": {
///           \"dataSets\": [{
///             \"timeSeriesQuery\": {
///               \"timeSeriesFilter\": {
///                 \"filter\": \"metric.type=\\\"agent.googleapis.com/nginx/connections/accepted_count\\\"\",
///                 \"aggregation\": {
///                   \"perSeriesAligner\": \"ALIGN_RATE\"
///                 }
///               },
///               \"unitOverride\": \"1\"
///             },
///             \"plotType\": \"LINE\"
///           }],
///           \"timeshiftDuration\": \"0s\",
///           \"yAxis\": {
///             \"label\": \"y1Axis\",
///             \"scale\": \"LINEAR\"
///           }
///         }
///       },
///       {
///         \"text\": {
///           \"content\": \"Widget 2\",
///           \"format\": \"MARKDOWN\"
///         }
///       },
///       {
///         \"title\": \"Widget 3\",
///         \"xyChart\": {
///           \"dataSets\": [{
///             \"timeSeriesQuery\": {
///               \"timeSeriesFilter\": {
///                 \"filter\": \"metric.type=\\\"agent.googleapis.com/nginx/connections/accepted_count\\\"\",
///                 \"aggregation\": {
///                   \"perSeriesAligner\": \"ALIGN_RATE\"
///                 }
///               },
///               \"unitOverride\": \"1\"
///             },
///             \"plotType\": \"STACKED_BAR\"
///           }],
///           \"timeshiftDuration\": \"0s\",
///           \"yAxis\": {
///             \"label\": \"y1Axis\",
///             \"scale\": \"LINEAR\"
///           }
///         }
///       }
///     ]
///   }
/// }
///
/// `),
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
/// resource "gcp_monitoring_dashboard" "dashboard" {
///   dashboard_json = "{\n  \\\"displayName\\\": \\\"Grid Layout Example\\\",\n  \\\"gridLayout\\\": {\n    \\\"columns\\\": \\\"2\\\",\n    \\\"widgets\\\": [\n      {\n        \\\"title\\\": \\\"Widget 1\\\",\n        \\\"xyChart\\\": {\n          \\\"dataSets\\\": [{\n            \\\"timeSeriesQuery\\\": {\n              \\\"timeSeriesFilter\\\": {\n                \\\"filter\\\": \\\"metric.type=\\\\\\\"agent.googleapis.com/nginx/connections/accepted_count\\\\\\\"\\\",\n                \\\"aggregation\\\": {\n                  \\\"perSeriesAligner\\\": \\\"ALIGN_RATE\\\"\n                }\n              },\n              \\\"unitOverride\\\": \\\"1\\\"\n            },\n            \\\"plotType\\\": \\\"LINE\\\"\n          }],\n          \\\"timeshiftDuration\\\": \\\"0s\\\",\n          \\\"yAxis\\\": {\n            \\\"label\\\": \\\"y1Axis\\\",\n            \\\"scale\\\": \\\"LINEAR\\\"\n          }\n        }\n      },\n      {\n        \\\"text\\\": {\n          \\\"content\\\": \\\"Widget 2\\\",\n          \\\"format\\\": \\\"MARKDOWN\\\"\n        }\n      },\n      {\n        \\\"title\\\": \\\"Widget 3\\\",\n        \\\"xyChart\\\": {\n          \\\"dataSets\\\": [{\n            \\\"timeSeriesQuery\\\": {\n              \\\"timeSeriesFilter\\\": {\n                \\\"filter\\\": \\\"metric.type=\\\\\\\"agent.googleapis.com/nginx/connections/accepted_count\\\\\\\"\\\",\n                \\\"aggregation\\\": {\n                  \\\"perSeriesAligner\\\": \\\"ALIGN_RATE\\\"\n                }\n              },\n              \\\"unitOverride\\\": \\\"1\\\"\n            },\n            \\\"plotType\\\": \\\"STACKED_BAR\\\"\n          }],\n          \\\"timeshiftDuration\\\": \\\"0s\\\",\n          \\\"yAxis\\\": {\n            \\\"label\\\": \\\"y1Axis\\\",\n            \\\"scale\\\": \\\"LINEAR\\\"\n          }\n        }\n      }\n    ]\n  }\n}\n\n"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.monitoring.Dashboard;
/// import com.pulumi.gcp.monitoring.DashboardArgs;
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
///         var dashboard = new Dashboard("dashboard", DashboardArgs.builder()
///             .dashboardJson("""
/// {
///   \"displayName\": \"Grid Layout Example\",
///   \"gridLayout\": {
///     \"columns\": \"2\",
///     \"widgets\": [
///       {
///         \"title\": \"Widget 1\",
///         \"xyChart\": {
///           \"dataSets\": [{
///             \"timeSeriesQuery\": {
///               \"timeSeriesFilter\": {
///                 \"filter\": \"metric.type=\\\"agent.googleapis.com/nginx/connections/accepted_count\\\"\",
///                 \"aggregation\": {
///                   \"perSeriesAligner\": \"ALIGN_RATE\"
///                 }
///               },
///               \"unitOverride\": \"1\"
///             },
///             \"plotType\": \"LINE\"
///           }],
///           \"timeshiftDuration\": \"0s\",
///           \"yAxis\": {
///             \"label\": \"y1Axis\",
///             \"scale\": \"LINEAR\"
///           }
///         }
///       },
///       {
///         \"text\": {
///           \"content\": \"Widget 2\",
///           \"format\": \"MARKDOWN\"
///         }
///       },
///       {
///         \"title\": \"Widget 3\",
///         \"xyChart\": {
///           \"dataSets\": [{
///             \"timeSeriesQuery\": {
///               \"timeSeriesFilter\": {
///                 \"filter\": \"metric.type=\\\"agent.googleapis.com/nginx/connections/accepted_count\\\"\",
///                 \"aggregation\": {
///                   \"perSeriesAligner\": \"ALIGN_RATE\"
///                 }
///               },
///               \"unitOverride\": \"1\"
///             },
///             \"plotType\": \"STACKED_BAR\"
///           }],
///           \"timeshiftDuration\": \"0s\",
///           \"yAxis\": {
///             \"label\": \"y1Axis\",
///             \"scale\": \"LINEAR\"
///           }
///         }
///       }
///     ]
///   }
/// }
///
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dashboard:
///     type: gcp:monitoring:Dashboard
///     properties:
///       dashboardJson: |+
///         {
///           \"displayName\": \"Grid Layout Example\",
///           \"gridLayout\": {
///             \"columns\": \"2\",
///             \"widgets\": [
///               {
///                 \"title\": \"Widget 1\",
///                 \"xyChart\": {
///                   \"dataSets\": [{
///                     \"timeSeriesQuery\": {
///                       \"timeSeriesFilter\": {
///                         \"filter\": \"metric.type=\\\"agent.googleapis.com/nginx/connections/accepted_count\\\"\",
///                         \"aggregation\": {
///                           \"perSeriesAligner\": \"ALIGN_RATE\"
///                         }
///                       },
///                       \"unitOverride\": \"1\"
///                     },
///                     \"plotType\": \"LINE\"
///                   }],
///                   \"timeshiftDuration\": \"0s\",
///                   \"yAxis\": {
///                     \"label\": \"y1Axis\",
///                     \"scale\": \"LINEAR\"
///                   }
///                 }
///               },
///               {
///                 \"text\": {
///                   \"content\": \"Widget 2\",
///                   \"format\": \"MARKDOWN\"
///                 }
///               },
///               {
///                 \"title\": \"Widget 3\",
///                 \"xyChart\": {
///                   \"dataSets\": [{
///                     \"timeSeriesQuery\": {
///                       \"timeSeriesFilter\": {
///                         \"filter\": \"metric.type=\\\"agent.googleapis.com/nginx/connections/accepted_count\\\"\",
///                         \"aggregation\": {
///                           \"perSeriesAligner\": \"ALIGN_RATE\"
///                         }
///                       },
///                       \"unitOverride\": \"1\"
///                     },
///                     \"plotType\": \"STACKED_BAR\"
///                   }],
///                   \"timeshiftDuration\": \"0s\",
///                   \"yAxis\": {
///                     \"label\": \"y1Axis\",
///                     \"scale\": \"LINEAR\"
///                   }
///                 }
///               }
///             ]
///           }
///         }
/// ```
///
///
/// ## Import
///
/// Dashboard can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/dashboards/{{dashboard_id}}`
/// * `{{dashboard_id}}`
///
///
/// When using the `pulumi import` command, Dashboard can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:monitoring/dashboard:Dashboard default projects/{{project}}/dashboards/{{dashboard_id}}
/// $ pulumi import gcp:monitoring/dashboard:Dashboard default {{dashboard_id}}
/// ```
class Dashboard extends pulumi.CustomResource {
  /// The JSON representation of a dashboard, following the format at https://cloud.google.com/monitoring/api/ref_v3/rest/v1/projects.dashboards.
  /// The representation of an existing dashboard can be found by using the [API Explorer](https://cloud.google.com/monitoring/api/ref_v3/rest/v1/projects.dashboards/get)
  ///
  /// &gt; **Warning:** Because this is represented as a JSON string, Terraform doesn't have underlying information to know
  /// which fields in the string have defaults. To prevent permanent diffs from default values, Terraform will attempt to
  /// suppress diffs where the value is returned in the JSON string but doesn't exist in the configuration. Consequently,
  /// legitmate remove-only diffs will also be suppressed. For Terraform to detect the diff, key removals must also be
  /// accompanied by a non-removal change (trivial or not).
  ///
  /// - - -
  late final pulumi.Output<String> dashboardJson;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Creates a new [Dashboard].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Dashboard]. {@macro pulumi_monitoring_dashboard_dashboard_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Dashboard(
    String name, {
    DashboardArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:monitoring/dashboard:Dashboard',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    dashboardJson = registerOutput<String>('dashboardJson');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    project = registerOutput<String>('project');
  }

  /// Gets an existing [Dashboard] resource's state with the given [name] and [id].
  static Dashboard get(
    String name,
    pulumi.Input<String> id, {
    DashboardState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Dashboard._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Dashboard._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:monitoring/dashboard:Dashboard',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dashboardJson = registerOutput<String>('dashboardJson');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    project = registerOutput<String>('project');
  }

  /// Creates a typed reference to an existing [Dashboard] resource.
  Dashboard.reference(String urn)
    : super(
        'gcp:monitoring/dashboard:Dashboard',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    dashboardJson = registerOutput<String>('dashboardJson');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    project = registerOutput<String>('project');
  }
}
