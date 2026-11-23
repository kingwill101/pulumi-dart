import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_token_auth_user_args.dart';
import 'cluster_token_auth_user_state.dart';

/// Represents a Token Auth User for a Google Cloud Redis Cluster.
///
///
/// To get more information about ClusterTokenAuthUser, see:
///
/// * [API documentation](https://cloud.google.com/memorystore/docs/cluster/reference/rest/v1/projects.locations.clusters)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/memorystore/docs/cluster/)
///
/// &gt; **Note:** Removing a `gcp.redis.ClusterTokenAuthUser` resource from the Terraform configuration deletes the user and revokes all of its tokens.
///
/// The `default` user is automatically created when token-based authentication (`AUTH_MODE_TOKEN_AUTH`) is enabled on a cluster and is lifecycle-bound to the cluster; it cannot be created or deleted via `gcp.redis.ClusterTokenAuthUser`. To view the `default` user's metadata, use the `gcp.redis.ClusterTokenAuthUser` data source.
///
///
/// ## Example Usage
///
/// ### Redis Cluster Token Auth User Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const user_basic_cluster = new gcp.redis.Cluster("user-basic-cluster", {
///     name: "user-basic-cluster",
///     shardCount: 1,
///     region: "europe-west4",
///     authorizationMode: "AUTH_MODE_TOKEN_AUTH",
///     deletionProtectionEnabled: false,
/// });
/// const user_basic = new gcp.redis.ClusterTokenAuthUser("user-basic", {
///     cluster: user_basic_cluster.name,
///     userId: "user-basic-user",
///     region: "europe-west4",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// user_basic_cluster = gcp.redis.Cluster("user-basic-cluster",
///     name="user-basic-cluster",
///     shard_count=1,
///     region="europe-west4",
///     authorization_mode="AUTH_MODE_TOKEN_AUTH",
///     deletion_protection_enabled=False)
/// user_basic = gcp.redis.ClusterTokenAuthUser("user-basic",
///     cluster=user_basic_cluster.name,
///     user_id="user-basic-user",
///     region="europe-west4")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var user_basic_cluster = new Gcp.Redis.Cluster("user-basic-cluster", new()
///     {
///         Name = "user-basic-cluster",
///         ShardCount = 1,
///         Region = "europe-west4",
///         AuthorizationMode = "AUTH_MODE_TOKEN_AUTH",
///         DeletionProtectionEnabled = false,
///     });
///
///     var user_basic = new Gcp.Redis.ClusterTokenAuthUser("user-basic", new()
///     {
///         Cluster = user_basic_cluster.Name,
///         UserId = "user-basic-user",
///         Region = "europe-west4",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/redis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		user_basic_cluster, err := redis.NewCluster(ctx, "user-basic-cluster", &redis.ClusterArgs{
/// 			Name:                      pulumi.String("user-basic-cluster"),
/// 			ShardCount:                pulumi.Int(1),
/// 			Region:                    pulumi.String("europe-west4"),
/// 			AuthorizationMode:         pulumi.String("AUTH_MODE_TOKEN_AUTH"),
/// 			DeletionProtectionEnabled: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = redis.NewClusterTokenAuthUser(ctx, "user-basic", &redis.ClusterTokenAuthUserArgs{
/// 			Cluster: user_basic_cluster.Name,
/// 			UserId:  pulumi.String("user-basic-user"),
/// 			Region:  pulumi.String("europe-west4"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_redis_cluster" "user-basic-cluster" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name                        = "user-basic-cluster"
///   shard_count                 = 1
///   region                      = "europe-west4"
///   authorization_mode          = "AUTH_MODE_TOKEN_AUTH"
///   deletion_protection_enabled = false
/// }
/// resource "gcp_redis_cluster_token_auth_user" "user-basic" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   cluster = gcp_redis_cluster.user-basic-cluster.name
///   user_id = "user-basic-user"
///   region  = "europe-west4"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.redis.Cluster;
/// import com.pulumi.gcp.redis.ClusterArgs;
/// import com.pulumi.gcp.redis.ClusterTokenAuthUser;
/// import com.pulumi.gcp.redis.ClusterTokenAuthUserArgs;
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
///         var user_basic_cluster = new Cluster("user-basic-cluster", ClusterArgs.builder()
///             .name("user-basic-cluster")
///             .shardCount(1)
///             .region("europe-west4")
///             .authorizationMode("AUTH_MODE_TOKEN_AUTH")
///             .deletionProtectionEnabled(false)
///             .build());
///
///         var user_basic = new ClusterTokenAuthUser("user-basic", ClusterTokenAuthUserArgs.builder()
///             .cluster(user_basic_cluster.name())
///             .userId("user-basic-user")
///             .region("europe-west4")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   user-basic-cluster:
///     type: gcp:redis:Cluster
///     properties:
///       name: user-basic-cluster
///       shardCount: 1
///       region: europe-west4
///       authorizationMode: AUTH_MODE_TOKEN_AUTH
///       deletionProtectionEnabled: false
///   user-basic:
///     type: gcp:redis:ClusterTokenAuthUser
///     properties:
///       cluster: ${["user-basic-cluster"].name}
///       userId: user-basic-user
///       region: europe-west4
/// ```
///
///
/// ## Import
///
/// ClusterTokenAuthUser can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{region}}/clusters/{{cluster}}/tokenAuthUsers/{{user_id}}`
/// * `{{project}}/{{region}}/{{cluster}}/{{user_id}}`
/// * `{{region}}/{{cluster}}/{{user_id}}`
/// * `{{cluster}}/{{user_id}}`
///
///
/// When using the `pulumi import` command, ClusterTokenAuthUser can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:redis/clusterTokenAuthUser:ClusterTokenAuthUser default projects/{{project}}/locations/{{region}}/clusters/{{cluster}}/tokenAuthUsers/{{user_id}}
/// $ pulumi import gcp:redis/clusterTokenAuthUser:ClusterTokenAuthUser default {{project}}/{{region}}/{{cluster}}/{{user_id}}
/// $ pulumi import gcp:redis/clusterTokenAuthUser:ClusterTokenAuthUser default {{region}}/{{cluster}}/{{user_id}}
/// $ pulumi import gcp:redis/clusterTokenAuthUser:ClusterTokenAuthUser default {{cluster}}/{{user_id}}
/// ```
class ClusterTokenAuthUser extends pulumi.CustomResource {
  /// The name or resource ID of the Redis cluster.
  late final pulumi.Output<String> cluster;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The full resource name of the Token Auth User.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The name of the region of the Redis cluster.
  late final pulumi.Output<String> region;
  /// The current state of the Token Auth User.
  late final pulumi.Output<String> state;
  /// The unique ID (username) of the Token Auth User.
  /// The `default` user cannot be managed with this resource.
  late final pulumi.Output<String> userId;

  /// Creates a new [ClusterTokenAuthUser].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterTokenAuthUser]. {@macro pulumi_redis_cluster_token_auth_user_cluster_token_auth_user_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterTokenAuthUser(
    String name, {
    ClusterTokenAuthUserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:redis/clusterTokenAuthUser:ClusterTokenAuthUser',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '10.5.0').merge(options),
        ) {
    cluster = registerOutput<String>('cluster');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    state = registerOutput<String>('state');
    userId = registerOutput<String>('userId');
  }

  /// Gets an existing [ClusterTokenAuthUser] resource's state with the given [name] and [id].
  static ClusterTokenAuthUser get(
    String name,
    pulumi.Input<String> id, {
    ClusterTokenAuthUserState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ClusterTokenAuthUser._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ClusterTokenAuthUser._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:redis/clusterTokenAuthUser:ClusterTokenAuthUser',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cluster = registerOutput<String>('cluster');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    userId = registerOutput<String>('userId');
  }

  /// Creates a typed reference to an existing [ClusterTokenAuthUser] resource.
  ClusterTokenAuthUser.reference(String urn)
    : super(
        'gcp:redis/clusterTokenAuthUser:ClusterTokenAuthUser',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    cluster = registerOutput<String>('cluster');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    state = registerOutput<String>('state');
    userId = registerOutput<String>('userId');
  }
}
