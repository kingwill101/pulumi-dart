import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_client_args.dart';
import 'azure_client_state.dart';

/// AzureClient resources hold client authentication information needed by the Anthos Multi-Cloud API to manage Azure resources on your Azure subscription.When an AzureCluster is created, an AzureClient resource needs to be provided and all operations on Azure resources associated to that cluster will authenticate to Azure services using the given client.AzureClient resources are immutable and cannot be modified upon creation.Each AzureClient resource is bound to a single Azure Active Directory Application and tenant.
///
/// For more information, see:
/// * [Multicloud overview](https://cloud.google.com/kubernetes-engine/multi-cloud/docs)
/// ## Example Usage
///
/// ### Basic_azure_client
/// A basic example of a containerazure azure client
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.container.AzureClient("primary", {
///     applicationId: "12345678-1234-1234-1234-123456789111",
///     location: "us-west1",
///     name: "client-name",
///     tenantId: "12345678-1234-1234-1234-123456789111",
///     project: "my-project-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.container.AzureClient("primary",
///     application_id="12345678-1234-1234-1234-123456789111",
///     location="us-west1",
///     name="client-name",
///     tenant_id="12345678-1234-1234-1234-123456789111",
///     project="my-project-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var primary = new Gcp.Container.AzureClient("primary", new()
///     {
///         ApplicationId = "12345678-1234-1234-1234-123456789111",
///         Location = "us-west1",
///         Name = "client-name",
///         TenantId = "12345678-1234-1234-1234-123456789111",
///         Project = "my-project-name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/container"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := container.NewAzureClient(ctx, "primary", &container.AzureClientArgs{
/// 			ApplicationId: pulumi.String("12345678-1234-1234-1234-123456789111"),
/// 			Location:      pulumi.String("us-west1"),
/// 			Name:          pulumi.String("client-name"),
/// 			TenantId:      pulumi.String("12345678-1234-1234-1234-123456789111"),
/// 			Project:       pulumi.String("my-project-name"),
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
/// resource "gcp_container_azureclient" "primary" {
///   application_id = "12345678-1234-1234-1234-123456789111"
///   location       = "us-west1"
///   name           = "client-name"
///   tenant_id      = "12345678-1234-1234-1234-123456789111"
///   project        = "my-project-name"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.container.AzureClient;
/// import com.pulumi.gcp.container.AzureClientArgs;
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
///         var primary = new AzureClient("primary", AzureClientArgs.builder()
///             .applicationId("12345678-1234-1234-1234-123456789111")
///             .location("us-west1")
///             .name("client-name")
///             .tenantId("12345678-1234-1234-1234-123456789111")
///             .project("my-project-name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:container:AzureClient
///     properties:
///       applicationId: 12345678-1234-1234-1234-123456789111
///       location: us-west1
///       name: client-name
///       tenantId: 12345678-1234-1234-1234-123456789111
///       project: my-project-name
/// ```
///
///
/// ## Import
///
/// Client can be imported using any of these accepted formats:
/// * `projects/{{project}}/locations/{{location}}/azureClients/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, Client can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:container/azureClient:AzureClient default projects/{{project}}/locations/{{location}}/azureClients/{{name}}
/// $ pulumi import gcp:container/azureClient:AzureClient default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:container/azureClient:AzureClient default {{location}}/{{name}}
/// ```
class AzureClient extends pulumi.CustomResource {
  /// The Azure Active Directory Application ID.
  late final pulumi.Output<String> applicationId;
  /// Output only. The PEM encoded x509 certificate.
  late final pulumi.Output<String> certificate;
  /// Output only. The time at which this resource was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The location for the resource
  late final pulumi.Output<String> location;
  /// The name of this resource.
  late final pulumi.Output<String> name;
  /// The project for the resource
  late final pulumi.Output<String> project;
  /// The Azure Active Directory Tenant ID.
  ///
  ///
  ///
  /// - - -
  late final pulumi.Output<String> tenantId;
  /// Output only. A globally unique identifier for the client.
  late final pulumi.Output<String> uid;

  /// Creates a new [AzureClient].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AzureClient]. {@macro pulumi_container_azure_client_azure_client_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AzureClient(
    String name, {
    AzureClientArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:container/azureClient:AzureClient',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    applicationId = registerOutput<String>('applicationId');
    certificate = registerOutput<String>('certificate');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    tenantId = registerOutput<String>('tenantId');
    uid = registerOutput<String>('uid');
  }

  /// Gets an existing [AzureClient] resource's state with the given [name] and [id].
  static AzureClient get(
    String name,
    pulumi.Input<String> id, {
    AzureClientState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AzureClient._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AzureClient._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:container/azureClient:AzureClient',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationId = registerOutput<String>('applicationId');
    certificate = registerOutput<String>('certificate');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    tenantId = registerOutput<String>('tenantId');
    uid = registerOutput<String>('uid');
  }

  /// Creates a typed reference to an existing [AzureClient] resource.
  AzureClient.reference(String urn)
    : super(
        'gcp:container/azureClient:AzureClient',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    applicationId = registerOutput<String>('applicationId');
    certificate = registerOutput<String>('certificate');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    tenantId = registerOutput<String>('tenantId');
    uid = registerOutput<String>('uid');
  }
}
