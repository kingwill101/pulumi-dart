import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_args.dart';

/// Security Application over a given scope
///
/// Uses Azure REST API version 2022-07-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-07-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create application
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var application = new AzureNative.Security.Application("application", new()
///     {
///         ApplicationId = "ad9a8e26-29d9-4829-bb30-e597a58cdbb8",
///         Description = "An application on critical recommendations",
///         DisplayName = "Admin's application",
///         SourceResourceType = AzureNative.Security.ApplicationSourceResourceType.Assessments,
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	security "github.com/pulumi/pulumi-azure-native-sdk/security/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := security.NewApplication(ctx, "application", &security.ApplicationArgs{
/// 			ApplicationId:      pulumi.String("ad9a8e26-29d9-4829-bb30-e597a58cdbb8"),
/// 			Description:        pulumi.String("An application on critical recommendations"),
/// 			DisplayName:        pulumi.String("Admin's application"),
/// 			SourceResourceType: pulumi.String(security.ApplicationSourceResourceTypeAssessments),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.security.Application;
/// import com.pulumi.azurenative.security.ApplicationArgs;
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
///         var application = new Application("application", ApplicationArgs.builder()
///             .applicationId("ad9a8e26-29d9-4829-bb30-e597a58cdbb8")
///             .description("An application on critical recommendations")
///             .displayName("Admin's application")
///             .sourceResourceType("Assessments")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const application = new azure_native.security.Application("application", {
///     applicationId: "ad9a8e26-29d9-4829-bb30-e597a58cdbb8",
///     description: "An application on critical recommendations",
///     displayName: "Admin's application",
///     sourceResourceType: azure_native.security.ApplicationSourceResourceType.Assessments,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// application = azure_native.security.Application("application",
///     application_id="ad9a8e26-29d9-4829-bb30-e597a58cdbb8",
///     description="An application on critical recommendations",
///     display_name="Admin's application",
///     source_resource_type=azure_native.security.ApplicationSourceResourceType.ASSESSMENTS)
///
/// ```
///
/// ```yaml
/// resources:
///   application:
///     type: azure-native:security:Application
///     properties:
///       applicationId: ad9a8e26-29d9-4829-bb30-e597a58cdbb8
///       description: An application on critical recommendations
///       displayName: Admin's application
///       sourceResourceType: Assessments
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:security:Application 1f3afdf9-d0c9-4c3d-847f-89da613e70a8 /subscriptions/{subscriptionId}/providers/Microsoft.Security/applications/{applicationId}
/// ```
class Application extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// description of the application
  late final pulumi.Output<String?> description;
  /// display name of the application
  late final pulumi.Output<String?> displayName;
  /// Resource name
  late final pulumi.Output<String> name;
  /// The application source, what it affects, e.g. Assessments
  late final pulumi.Output<String> sourceResourceType;
  /// Resource type
  late final pulumi.Output<String> type;

  /// Creates a new [Application].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Application]. {@macro pulumi_security_application_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Application(
    String name, {
    ApplicationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:security:Application',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    this.name = registerOutput<String>('name');
    sourceResourceType = registerOutput<String>('sourceResourceType');
    type = registerOutput<String>('type');
  }
}
