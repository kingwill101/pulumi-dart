import 'package:pulumi/pulumi.dart' as pulumi;
import 'view_args.dart';
import 'view_state.dart';

/// Insights View resource for filtering conversations
///
///
/// To get more information about View, see:
///
/// * [API documentation](https://cloud.google.com/contact-center/insights/docs/reference/rest/v1/projects.locations.views)
///
/// ## Example Usage
///
/// ### Contact Center Insights View Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const basicView = new gcp.contactcenterinsights.View("basic_view", {
///     location: "us-central1",
///     displayName: "view-display-name",
///     value: "medium=\"CHAT\"",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// basic_view = gcp.contactcenterinsights.View("basic_view",
///     location="us-central1",
///     display_name="view-display-name",
///     value="medium=\"CHAT\"")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var basicView = new Gcp.ContactCenterInsights.View("basic_view", new()
///     {
///         Location = "us-central1",
///         DisplayName = "view-display-name",
///         Value = "medium=\"CHAT\"",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/contactcenterinsights"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := contactcenterinsights.NewView(ctx, "basic_view", &contactcenterinsights.ViewArgs{
/// 			Location:    pulumi.String("us-central1"),
/// 			DisplayName: pulumi.String("view-display-name"),
/// 			Value:       pulumi.String("medium=\"CHAT\""),
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
/// import com.pulumi.gcp.contactcenterinsights.View;
/// import com.pulumi.gcp.contactcenterinsights.ViewArgs;
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
///         var basicView = new View("basicView", ViewArgs.builder()
///             .location("us-central1")
///             .displayName("view-display-name")
///             .value("medium=\"CHAT\"")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   basicView:
///     type: gcp:contactcenterinsights:View
///     name: basic_view
///     properties:
///       location: us-central1
///       displayName: view-display-name
///       value: medium="CHAT"
/// ```
///
/// ### Contact Center Insights View Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const fullView = new gcp.contactcenterinsights.View("full_view", {
///     location: "us-central1",
///     displayName: "view-display-name",
///     value: "medium=\"PHONE_CALL\"",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// full_view = gcp.contactcenterinsights.View("full_view",
///     location="us-central1",
///     display_name="view-display-name",
///     value="medium=\"PHONE_CALL\"")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var fullView = new Gcp.ContactCenterInsights.View("full_view", new()
///     {
///         Location = "us-central1",
///         DisplayName = "view-display-name",
///         Value = "medium=\"PHONE_CALL\"",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/contactcenterinsights"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := contactcenterinsights.NewView(ctx, "full_view", &contactcenterinsights.ViewArgs{
/// 			Location:    pulumi.String("us-central1"),
/// 			DisplayName: pulumi.String("view-display-name"),
/// 			Value:       pulumi.String("medium=\"PHONE_CALL\""),
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
/// import com.pulumi.gcp.contactcenterinsights.View;
/// import com.pulumi.gcp.contactcenterinsights.ViewArgs;
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
///         var fullView = new View("fullView", ViewArgs.builder()
///             .location("us-central1")
///             .displayName("view-display-name")
///             .value("medium=\"PHONE_CALL\"")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   fullView:
///     type: gcp:contactcenterinsights:View
///     name: full_view
///     properties:
///       location: us-central1
///       displayName: view-display-name
///       value: medium="PHONE_CALL"
/// ```
///
///
/// ## Import
///
/// View can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/views/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, View can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:contactcenterinsights/view:View default projects/{{project}}/locations/{{location}}/views/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:contactcenterinsights/view:View default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:contactcenterinsights/view:View default {{location}}/{{name}}
/// ```
class View extends pulumi.CustomResource {
  /// Output only. The time at which this view was created.
  late final pulumi.Output<String> createTime;

  /// The human-readable display name of the view.
  late final pulumi.Output<String?> displayName;

  /// Location of the resource.
  late final pulumi.Output<String> location;

  /// The resource name of the view. Randomly generated by Insights.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Output only. The most recent time at which the view was updated.
  late final pulumi.Output<String> updateTime;

  /// A filter to reduce conversation results to a specific subset.
  /// Refer to https://cloud.google.com/contact-center/insights/docs/filtering
  /// for details.
  late final pulumi.Output<String?> value;

  /// Creates a new [View].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [View]. {@macro pulumi_contactcenterinsights_view_view_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  View(String name, {ViewArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'gcp:contactcenterinsights/view:View',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    createTime = registerOutput<String>('createTime');
    displayName = registerOutput<String?>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
    value = registerOutput<String?>('value');
  }

  /// Gets an existing [View] resource's state with the given [name] and [id].
  static View get(String name, pulumi.Input<String> id, {ViewState? state}) {
    return View._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  View._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:contactcenterinsights/view:View',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    displayName = registerOutput<String?>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
    value = registerOutput<String?>('value');
  }
}
