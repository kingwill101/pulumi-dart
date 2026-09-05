import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_api_revision_deployment_args.dart';
import 'environment_api_revision_deployment_state.dart';

/// Deploys a specific Apigee API Proxy revision to a given Apigee environment.
///
///
/// To get more information about EnvironmentApiRevisionDeployment, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.environments.apis.revisions.deployments/deploy)
/// * How-to Guides
/// * [Deploying an API proxy](https://cloud.google.com/apigee/docs/api-platform/deploy/ui-deploy-new#apigee-api)
///
/// ## Example Usage
///
/// ### Apigee Environment Api Revision Deployment Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const proxyDeploymentBasic = new gcp.apigee.EnvironmentApiRevisionDeployment("proxy_deployment_basic", {
///     orgId: "my-org",
///     environment: "dev",
///     api: "hello-proxy",
///     revision: 1,
///     override: true,
///     sequencedRollout: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// proxy_deployment_basic = gcp.apigee.EnvironmentApiRevisionDeployment("proxy_deployment_basic",
///     org_id="my-org",
///     environment="dev",
///     api="hello-proxy",
///     revision=1,
///     override=True,
///     sequenced_rollout=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var proxyDeploymentBasic = new Gcp.Apigee.EnvironmentApiRevisionDeployment("proxy_deployment_basic", new()
///     {
///         OrgId = "my-org",
///         Environment = "dev",
///         Api = "hello-proxy",
///         Revision = 1,
///         Override = true,
///         SequencedRollout = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigee"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := apigee.NewEnvironmentApiRevisionDeployment(ctx, "proxy_deployment_basic", &apigee.EnvironmentApiRevisionDeploymentArgs{
/// 			OrgId:            pulumi.String("my-org"),
/// 			Environment:      pulumi.String("dev"),
/// 			Api:              pulumi.String("hello-proxy"),
/// 			Revision:         pulumi.Int(1),
/// 			Override:         pulumi.Bool(true),
/// 			SequencedRollout: pulumi.Bool(true),
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
/// resource "gcp_apigee_environmentapirevisiondeployment" "proxy_deployment_basic" {
///   org_id            = "my-org"
///   environment       = "dev"
///   api               = "hello-proxy"
///   revision          = 1
///   override          = true
///   sequenced_rollout = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.apigee.EnvironmentApiRevisionDeployment;
/// import com.pulumi.gcp.apigee.EnvironmentApiRevisionDeploymentArgs;
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
///         var proxyDeploymentBasic = new EnvironmentApiRevisionDeployment("proxyDeploymentBasic", EnvironmentApiRevisionDeploymentArgs.builder()
///             .orgId("my-org")
///             .environment("dev")
///             .api("hello-proxy")
///             .revision(1)
///             .override(true)
///             .sequencedRollout(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   proxyDeploymentBasic:
///     type: gcp:apigee:EnvironmentApiRevisionDeployment
///     name: proxy_deployment_basic
///     properties:
///       orgId: my-org
///       environment: dev
///       api: hello-proxy
///       revision: 1
///       override: true
///       sequencedRollout: true
/// ```
///
///
/// ## Import
///
/// EnvironmentApiRevisionDeployment can be imported using any of these accepted formats:
///
/// * `organizations/{{org_id}}/environments/{{environment}}/apis/{{api}}/revisions/{{revision}}`
/// * `{{org_id}}/{{environment}}/{{api}}/{{revision}}`
/// * `{{id}}`
///
///
/// When using the `pulumi import` command, EnvironmentApiRevisionDeployment can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/environmentApiRevisionDeployment:EnvironmentApiRevisionDeployment default organizations/{{org_id}}/environments/{{environment}}/apis/{{api}}/revisions/{{revision}}
/// $ pulumi import gcp:apigee/environmentApiRevisionDeployment:EnvironmentApiRevisionDeployment default {{org_id}}/{{environment}}/{{api}}/{{revision}}
/// $ pulumi import gcp:apigee/environmentApiRevisionDeployment:EnvironmentApiRevisionDeployment default {{id}}
/// ```
class EnvironmentApiRevisionDeployment extends pulumi.CustomResource {
  /// Apigee API proxy name.
  late final pulumi.Output<String> api;
  /// Basepaths associated with the deployed proxy.
  late final pulumi.Output<List<String>> basepaths;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// RFC3339 timestamp when deployment started.
  late final pulumi.Output<String> deployStartTime;
  /// Apigee environment name.
  late final pulumi.Output<String> environment;
  /// Apigee organization ID.
  late final pulumi.Output<String> orgId;
  /// If true, replaces other deployed revisions of this proxy in the environment.
  late final pulumi.Output<bool?> override;
  /// API proxy revision number to deploy.
  late final pulumi.Output<int> revision;
  /// If true, enables sequenced rollout for safe traffic switching.
  late final pulumi.Output<bool?> sequencedRollout;
  /// Optional service account the deployed proxy runs as.
  late final pulumi.Output<String?> serviceAccount;
  /// Deployment state reported by Apigee.
  late final pulumi.Output<String> state;

  /// Creates a new [EnvironmentApiRevisionDeployment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnvironmentApiRevisionDeployment]. {@macro pulumi_apigee_environment_api_revision_deployment_environment_api_revision_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnvironmentApiRevisionDeployment(
    String name, {
    EnvironmentApiRevisionDeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/environmentApiRevisionDeployment:EnvironmentApiRevisionDeployment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    api = registerOutput<String>('api');
    basepaths = registerOutput<List<String>>('basepaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deployStartTime = registerOutput<String>('deployStartTime');
    environment = registerOutput<String>('environment');
    orgId = registerOutput<String>('orgId');
    override = registerOutput<bool?>('override');
    revision = registerOutput<int>('revision');
    sequencedRollout = registerOutput<bool?>('sequencedRollout');
    serviceAccount = registerOutput<String?>('serviceAccount');
    state = registerOutput<String>('state');
  }

  /// Gets an existing [EnvironmentApiRevisionDeployment] resource's state with the given [name] and [id].
  static EnvironmentApiRevisionDeployment get(
    String name,
    pulumi.Input<String> id, {
    EnvironmentApiRevisionDeploymentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return EnvironmentApiRevisionDeployment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  EnvironmentApiRevisionDeployment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/environmentApiRevisionDeployment:EnvironmentApiRevisionDeployment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    api = registerOutput<String>('api');
    basepaths = registerOutput<List<String>>('basepaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deployStartTime = registerOutput<String>('deployStartTime');
    environment = registerOutput<String>('environment');
    orgId = registerOutput<String>('orgId');
    override = registerOutput<bool?>('override');
    revision = registerOutput<int>('revision');
    sequencedRollout = registerOutput<bool?>('sequencedRollout');
    serviceAccount = registerOutput<String?>('serviceAccount');
    this.state = registerOutput<String>('state');
  }

  /// Creates a typed reference to an existing [EnvironmentApiRevisionDeployment] resource.
  EnvironmentApiRevisionDeployment.reference(String urn)
    : super(
        'gcp:apigee/environmentApiRevisionDeployment:EnvironmentApiRevisionDeployment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    api = registerOutput<String>('api');
    basepaths = registerOutput<List<String>>('basepaths', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    deployStartTime = registerOutput<String>('deployStartTime');
    environment = registerOutput<String>('environment');
    orgId = registerOutput<String>('orgId');
    override = registerOutput<bool?>('override');
    revision = registerOutput<int>('revision');
    sequencedRollout = registerOutput<bool?>('sequencedRollout');
    serviceAccount = registerOutput<String?>('serviceAccount');
    state = registerOutput<String>('state');
  }
}
