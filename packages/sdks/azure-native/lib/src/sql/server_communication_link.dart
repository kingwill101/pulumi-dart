import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_communication_link_args.dart';

/// Server communication link.
///
/// Uses Azure REST API version 2014-04-01. In version 2.x of the Azure Native provider, it used API version 2014-04-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a server communication link
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var serverCommunicationLink = new AzureNative.Sql.ServerCommunicationLink("serverCommunicationLink", new()
///     {
///         CommunicationLinkName = "link1",
///         PartnerServer = "sqldcrudtest-test",
///         ResourceGroupName = "sqlcrudtest-7398",
///         ServerName = "sqlcrudtest-4645",
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
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewServerCommunicationLink(ctx, "serverCommunicationLink", &sql.ServerCommunicationLinkArgs{
/// 			CommunicationLinkName: pulumi.String("link1"),
/// 			PartnerServer:         pulumi.String("sqldcrudtest-test"),
/// 			ResourceGroupName:     pulumi.String("sqlcrudtest-7398"),
/// 			ServerName:            pulumi.String("sqlcrudtest-4645"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_sql_servercommunicationlink" "serverCommunicationLink" {
///   communication_link_name = "link1"
///   partner_server          = "sqldcrudtest-test"
///   resource_group_name     = "sqlcrudtest-7398"
///   server_name             = "sqlcrudtest-4645"
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
/// import com.pulumi.azurenative.sql.ServerCommunicationLink;
/// import com.pulumi.azurenative.sql.ServerCommunicationLinkArgs;
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
///         var serverCommunicationLink = new ServerCommunicationLink("serverCommunicationLink", ServerCommunicationLinkArgs.builder()
///             .communicationLinkName("link1")
///             .partnerServer("sqldcrudtest-test")
///             .resourceGroupName("sqlcrudtest-7398")
///             .serverName("sqlcrudtest-4645")
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
/// const serverCommunicationLink = new azure_native.sql.ServerCommunicationLink("serverCommunicationLink", {
///     communicationLinkName: "link1",
///     partnerServer: "sqldcrudtest-test",
///     resourceGroupName: "sqlcrudtest-7398",
///     serverName: "sqlcrudtest-4645",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// server_communication_link = azure_native.sql.ServerCommunicationLink("serverCommunicationLink",
///     communication_link_name="link1",
///     partner_server="sqldcrudtest-test",
///     resource_group_name="sqlcrudtest-7398",
///     server_name="sqlcrudtest-4645")
///
/// ```
///
/// ```yaml
/// resources:
///   serverCommunicationLink:
///     type: azure-native:sql:ServerCommunicationLink
///     properties:
///       communicationLinkName: link1
///       partnerServer: sqldcrudtest-test
///       resourceGroupName: sqlcrudtest-7398
///       serverName: sqlcrudtest-4645
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
/// $ pulumi import azure-native:sql:ServerCommunicationLink link1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/communicationLinks/{communicationLinkName}
/// ```
class ServerCommunicationLink extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Communication link kind.  This property is used for Azure Portal metadata.
  late final pulumi.Output<String> kind;
  /// Communication link location.
  late final pulumi.Output<String> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The name of the partner server.
  late final pulumi.Output<String> partnerServer;
  /// The state.
  late final pulumi.Output<String> state;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ServerCommunicationLink].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerCommunicationLink]. {@macro pulumi_sql_server_communication_link_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerCommunicationLink(
    String name, {
    ServerCommunicationLinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:ServerCommunicationLink',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    kind = registerOutput<String>('kind');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    partnerServer = registerOutput<String>('partnerServer');
    state = registerOutput<String>('state');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ServerCommunicationLink] resource.
  ServerCommunicationLink.reference(String urn)
    : super(
        'azure-native:sql:ServerCommunicationLink',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    kind = registerOutput<String>('kind');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    partnerServer = registerOutput<String>('partnerServer');
    state = registerOutput<String>('state');
    type = registerOutput<String>('type');
  }
}
