import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_service_args.dart';
import 'custom_service_state.dart';
import 'custom_service_telemetry.dart';

/// A Service is a discrete, autonomous, and network-accessible unit,
/// designed to solve an individual concern. In Cloud Monitoring,
/// a Service acts as the root resource under which operational aspects of
/// the service are accessible
///
///
/// To get more information about Service, see:
///
/// * [API documentation](https://cloud.google.com/monitoring/api/ref_v3/rest/v3/services)
/// * How-to Guides
/// * [Monitoring API Documentation](https://cloud.google.com/monitoring/api/v3/)
/// * [Service Monitoring](https://cloud.google.com/monitoring/service-monitoring)
/// * [Service-orientation on Wikipedia](https://en.wikipedia.org/wiki/Service-orientation)
///
/// ## Example Usage
///
/// ### Monitoring Service Custom
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const custom = new gcp.monitoring.CustomService("custom", {
///     serviceId: "custom-srv",
///     displayName: "My Custom Service custom-srv",
///     telemetry: {
///         resourceName: "//product.googleapis.com/foo/foo/services/test",
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
/// custom = gcp.monitoring.CustomService("custom",
///     service_id="custom-srv",
///     display_name="My Custom Service custom-srv",
///     telemetry={
///         "resource_name": "//product.googleapis.com/foo/foo/services/test",
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
///     var custom = new Gcp.Monitoring.CustomService("custom", new()
///     {
///         ServiceId = "custom-srv",
///         DisplayName = "My Custom Service custom-srv",
///         Telemetry = new Gcp.Monitoring.Inputs.CustomServiceTelemetryArgs
///         {
///             ResourceName = "//product.googleapis.com/foo/foo/services/test",
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
/// 		_, err := monitoring.NewCustomService(ctx, "custom", &monitoring.CustomServiceArgs{
/// 			ServiceId:   pulumi.String("custom-srv"),
/// 			DisplayName: pulumi.String("My Custom Service custom-srv"),
/// 			Telemetry: &monitoring.CustomServiceTelemetryArgs{
/// 				ResourceName: pulumi.String("//product.googleapis.com/foo/foo/services/test"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_monitoring_customservice" "custom" {
///   service_id   = "custom-srv"
///   display_name = "My Custom Service custom-srv"
///   telemetry = {
///     resource_name = "//product.googleapis.com/foo/foo/services/test"
///   }
///   user_labels = {
///     "my_key"       = "my_value"
///     "my_other_key" = "my_other_value"
///   }
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
/// import com.pulumi.gcp.monitoring.inputs.CustomServiceTelemetryArgs;
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
///         var custom = new CustomService("custom", CustomServiceArgs.builder()
///             .serviceId("custom-srv")
///             .displayName("My Custom Service custom-srv")
///             .telemetry(CustomServiceTelemetryArgs.builder()
///                 .resourceName("//product.googleapis.com/foo/foo/services/test")
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
///   custom:
///     type: gcp:monitoring:CustomService
///     properties:
///       serviceId: custom-srv
///       displayName: My Custom Service custom-srv
///       telemetry:
///         resourceName: //product.googleapis.com/foo/foo/services/test
///       userLabels:
///         my_key: my_value
///         my_other_key: my_other_value
/// ```
///
///
/// ## Import
///
/// Service can be imported using any of these accepted formats:
///
/// * `{{project}}/{{name}}`
/// * `{{project}} {{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, Service can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:monitoring/customService:CustomService default {{project}}/{{name}}
/// $ terraform import google_monitoring_custom_service.default "{{project}} {{name}}"
/// $ pulumi import gcp:monitoring/customService:CustomService default {{name}}
/// ```
class CustomService extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Name used for UI elements listing this Service.
  late final pulumi.Output<String?> displayName;
  /// The full resource name for this service. The syntax is:
  /// projects/[PROJECT_ID]/services/[SERVICE_ID].
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// An optional service ID to use. If not given, the server will generate a
  /// service ID.
  late final pulumi.Output<String> serviceId;
  /// Configuration for how to query telemetry on a Service.
  /// Structure is documented below.
  late final pulumi.Output<CustomServiceTelemetry?> telemetry;
  /// Labels which have been used to annotate the service. Label keys must start
  /// with a letter. Label keys and values may contain lowercase letters,
  /// numbers, underscores, and dashes. Label keys and values have a maximum
  /// length of 63 characters, and must be less than 128 bytes in size. Up to 64
  /// label entries may be stored. For labels which do not have a semantic value,
  /// the empty string may be supplied for the label value.
  late final pulumi.Output<Map<String, String>?> userLabels;

  /// Creates a new [CustomService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomService]. {@macro pulumi_monitoring_custom_service_custom_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomService(
    String name, {
    CustomServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:monitoring/customService:CustomService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    serviceId = registerOutput<String>('serviceId');
    telemetry = registerOutput<CustomServiceTelemetry?>('telemetry', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomServiceTelemetry.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    userLabels = registerOutput<Map<String, String>?>('userLabels');
  }

  /// Gets an existing [CustomService] resource's state with the given [name] and [id].
  static CustomService get(
    String name,
    pulumi.Input<String> id, {
    CustomServiceState? state,
  }) {
    return CustomService._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CustomService._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:monitoring/customService:CustomService',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    serviceId = registerOutput<String>('serviceId');
    telemetry = registerOutput<CustomServiceTelemetry?>('telemetry', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomServiceTelemetry.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    userLabels = registerOutput<Map<String, String>?>('userLabels');
  }
}
