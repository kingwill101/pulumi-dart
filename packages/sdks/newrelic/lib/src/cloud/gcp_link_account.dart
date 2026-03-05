import 'package:pulumi/pulumi.dart' as pulumi;
import 'gcp_link_account_args.dart';
import 'gcp_link_account_state.dart';

/// Use this resource to link a GCP account to New Relic.
///
/// ## Prerequisite
///
/// To start receiving Google Cloud Platform (GCP) data with New Relic GCP integrations, connect your Google project to New Relic infrastructure monitoring. If you don't have one already, create a New Relic account. It's free, forever.
///
/// Setup is required in GCP for this resource to work properly. The New Relic GCP integration can be done by creating a user account or a service account.
///
/// A user with Project IAM Admin role is needed to add the service account ID as a member in your GCP project.
///
/// In the GCP project IAM & admin, the service account must have the Project Viewer role and the Service Usage Consumer role or, alternatively, a custom role.
///
/// Follow the [steps outlined here](https://docs.newrelic.com/docs/infrastructure/google-cloud-platform-integrations/get-started/connect-google-cloud-platform-services-new-relic) to set up the integration.
///
/// ## Example Usage
///
/// You can also use the full example, including the GCP set up, found in our guides.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.cloud.GcpLinkAccount("foo", {
///     accountId: "account id of newrelic account",
///     projectId: "id of the Project",
///     name: "account name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.cloud.GcpLinkAccount("foo",
///     account_id="account id of newrelic account",
///     project_id="id of the Project",
///     name="account name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.Cloud.GcpLinkAccount("foo", new()
///     {
///         AccountId = "account id of newrelic account",
///         ProjectId = "id of the Project",
///         Name = "account name",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic/cloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloud.NewGcpLinkAccount(ctx, "foo", &cloud.GcpLinkAccountArgs{
/// 			AccountId: pulumi.String("account id of newrelic account"),
/// 			ProjectId: pulumi.String("id of the Project"),
/// 			Name:      pulumi.String("account name"),
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
/// import com.pulumi.newrelic.cloud.GcpLinkAccount;
/// import com.pulumi.newrelic.cloud.GcpLinkAccountArgs;
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
///         var foo = new GcpLinkAccount("foo", GcpLinkAccountArgs.builder()
///             .accountId("account id of newrelic account")
///             .projectId("id of the Project")
///             .name("account name")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:cloud:GcpLinkAccount
///     properties:
///       accountId: account id of newrelic account
///       projectId: id of the Project
///       name: account name
/// ```
///
///
/// ## Import
///
/// Linked GCP accounts can be imported using `id`, you can find the `id` of an existing GCP linked accounts in GCP dashboard under Infrastructure in Newrelic Console.
///
/// ```bash
///
///   $  terraform import newrelic_cloud_gcp_link_account.foo <id>
///
/// ```
class GcpLinkAccount extends pulumi.CustomResource {
  /// Account ID of the New Relic account.
  late final pulumi.Output<String> accountId;
  /// The name of the GCP account in New Relic.
  ///
  /// &gt; **WARNING:** Starting with v3.27.2 of the New Relic Terraform Provider, updating any of the aforementioned attributes (except `name`) of a `newrelic.cloud.GcpLinkAccount` resource that has been applied would **force a replacement** of the resource (destruction of the resource, followed by the creation of a new resource). Please carefully review the output of `pulumi preview`, which would clearly indicate a replacement of this resource, before performing a `pulumi up`.
  late final pulumi.Output<String> name;
  /// Project ID of the GCP account.
  late final pulumi.Output<String> projectId;

  /// Creates a new [GcpLinkAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GcpLinkAccount]. {@macro pulumi_cloud_gcp_link_account_gcp_link_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GcpLinkAccount(
    String name, {
    GcpLinkAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:cloud/gcpLinkAccount:GcpLinkAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    this.name = registerOutput<String>('name');
    projectId = registerOutput<String>('projectId');
  }

  /// Gets an existing [GcpLinkAccount] resource's state with the given [name] and [id].
  static GcpLinkAccount get(
    String name,
    pulumi.Input<String> id, {
    GcpLinkAccountState? state,
  }) {
    return GcpLinkAccount._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GcpLinkAccount._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:cloud/gcpLinkAccount:GcpLinkAccount',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    this.name = registerOutput<String>('name');
    projectId = registerOutput<String>('projectId');
  }
}
