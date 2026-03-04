import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_version_args.dart';
import 'secret_version_state.dart';

/// A secret version resource.
///
///
/// To get more information about SecretVersion, see:
///
/// * [API documentation](https://cloud.google.com/secret-manager/docs/reference/rest/v1/projects.secrets.versions)
/// * How-to Guides
/// * [Create and deploy a Secret Version](https://cloud.google.com/secret-manager/docs/add-secret-version)
///
///
///
/// &gt; **Note:**  All arguments marked as write-only values will not be stored in the state: `secret_data_wo`.
/// Read more about Write-only Arguments.
///
/// ## Example Usage
///
/// ### Secret Version Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const secret_basic = new gcp.secretmanager.Secret("secret-basic", {
///     secretId: "secret-version",
///     labels: {
///         label: "my-label",
///     },
///     replication: {
///         auto: {},
///     },
/// });
/// const secret_version_basic = new gcp.secretmanager.SecretVersion("secret-version-basic", {
///     secret: secret_basic.id,
///     secretData: "secret-data",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// secret_basic = gcp.secretmanager.Secret("secret-basic",
///     secret_id="secret-version",
///     labels={
///         "label": "my-label",
///     },
///     replication={
///         "auto": {},
///     })
/// secret_version_basic = gcp.secretmanager.SecretVersion("secret-version-basic",
///     secret=secret_basic.id,
///     secret_data="secret-data")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secret_basic = new Gcp.SecretManager.Secret("secret-basic", new()
///     {
///         SecretId = "secret-version",
///         Labels =
///         {
///             { "label", "my-label" },
///         },
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var secret_version_basic = new Gcp.SecretManager.SecretVersion("secret-version-basic", new()
///     {
///         Secret = secret_basic.Id,
///         SecretData = "secret-data",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		secret_basic, err := secretmanager.NewSecret(ctx, "secret-basic", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("secret-version"),
/// 			Labels: pulumi.StringMap{
/// 				"label": pulumi.String("my-label"),
/// 			},
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretmanager.NewSecretVersion(ctx, "secret-version-basic", &secretmanager.SecretVersionArgs{
/// 			Secret:     secret_basic.ID(),
/// 			SecretData: pulumi.String("secret-data"),
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
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
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
///         var secret_basic = new Secret("secret-basic", SecretArgs.builder()
///             .secretId("secret-version")
///             .labels(Map.of("label", "my-label"))
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var secret_version_basic = new SecretVersion("secret-version-basic", SecretVersionArgs.builder()
///             .secret(secret_basic.id())
///             .secretData("secret-data")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   secret-basic:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: secret-version
///       labels:
///         label: my-label
///       replication:
///         auto: {}
///   secret-version-basic:
///     type: gcp:secretmanager:SecretVersion
///     properties:
///       secret: ${["secret-basic"].id}
///       secretData: secret-data
/// ```
///
/// ### Secret Version Basic Write Only
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const secret_basic_write_only = new gcp.secretmanager.Secret("secret-basic-write-only", {
///     secretId: "secret-version-write-only",
///     labels: {
///         label: "my-label",
///     },
///     replication: {
///         auto: {},
///     },
/// });
/// const secret_version_basic_write_only = new gcp.secretmanager.SecretVersion("secret-version-basic-write-only", {
///     secret: secret_basic_write_only.id,
///     secretDataWoVersion: 1,
///     secretDataWo: "secret-data-write-only",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// secret_basic_write_only = gcp.secretmanager.Secret("secret-basic-write-only",
///     secret_id="secret-version-write-only",
///     labels={
///         "label": "my-label",
///     },
///     replication={
///         "auto": {},
///     })
/// secret_version_basic_write_only = gcp.secretmanager.SecretVersion("secret-version-basic-write-only",
///     secret=secret_basic_write_only.id,
///     secret_data_wo_version=1,
///     secret_data_wo="secret-data-write-only")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secret_basic_write_only = new Gcp.SecretManager.Secret("secret-basic-write-only", new()
///     {
///         SecretId = "secret-version-write-only",
///         Labels =
///         {
///             { "label", "my-label" },
///         },
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             Auto = null,
///         },
///     });
///
///     var secret_version_basic_write_only = new Gcp.SecretManager.SecretVersion("secret-version-basic-write-only", new()
///     {
///         Secret = secret_basic_write_only.Id,
///         SecretDataWoVersion = 1,
///         SecretDataWo = "secret-data-write-only",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		secret_basic_write_only, err := secretmanager.NewSecret(ctx, "secret-basic-write-only", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("secret-version-write-only"),
/// 			Labels: pulumi.StringMap{
/// 				"label": pulumi.String("my-label"),
/// 			},
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				Auto: &secretmanager.SecretReplicationAutoArgs{},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretmanager.NewSecretVersion(ctx, "secret-version-basic-write-only", &secretmanager.SecretVersionArgs{
/// 			Secret:              secret_basic_write_only.ID(),
/// 			SecretDataWoVersion: pulumi.Int(1),
/// 			SecretDataWo:        pulumi.String("secret-data-write-only"),
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
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationAutoArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
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
///         var secret_basic_write_only = new Secret("secret-basic-write-only", SecretArgs.builder()
///             .secretId("secret-version-write-only")
///             .labels(Map.of("label", "my-label"))
///             .replication(SecretReplicationArgs.builder()
///                 .auto(SecretReplicationAutoArgs.builder()
///                     .build())
///                 .build())
///             .build());
///
///         var secret_version_basic_write_only = new SecretVersion("secret-version-basic-write-only", SecretVersionArgs.builder()
///             .secret(secret_basic_write_only.id())
///             .secretDataWoVersion(1)
///             .secretDataWo("secret-data-write-only")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   secret-basic-write-only:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: secret-version-write-only
///       labels:
///         label: my-label
///       replication:
///         auto: {}
///   secret-version-basic-write-only:
///     type: gcp:secretmanager:SecretVersion
///     properties:
///       secret: ${["secret-basic-write-only"].id}
///       secretDataWoVersion: 1
///       secretDataWo: secret-data-write-only
/// ```
///
/// ### Secret Version Deletion Policy Abandon
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const secret_basic = new gcp.secretmanager.Secret("secret-basic", {
///     secretId: "secret-version",
///     replication: {
///         userManaged: {
///             replicas: [{
///                 location: "us-central1",
///             }],
///         },
///     },
/// });
/// const secret_version_deletion_policy = new gcp.secretmanager.SecretVersion("secret-version-deletion-policy", {
///     secret: secret_basic.id,
///     secretData: "secret-data",
///     deletionPolicy: "ABANDON",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// secret_basic = gcp.secretmanager.Secret("secret-basic",
///     secret_id="secret-version",
///     replication={
///         "user_managed": {
///             "replicas": [{
///                 "location": "us-central1",
///             }],
///         },
///     })
/// secret_version_deletion_policy = gcp.secretmanager.SecretVersion("secret-version-deletion-policy",
///     secret=secret_basic.id,
///     secret_data="secret-data",
///     deletion_policy="ABANDON")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secret_basic = new Gcp.SecretManager.Secret("secret-basic", new()
///     {
///         SecretId = "secret-version",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             UserManaged = new Gcp.SecretManager.Inputs.SecretReplicationUserManagedArgs
///             {
///                 Replicas = new[]
///                 {
///                     new Gcp.SecretManager.Inputs.SecretReplicationUserManagedReplicaArgs
///                     {
///                         Location = "us-central1",
///                     },
///                 },
///             },
///         },
///     });
///
///     var secret_version_deletion_policy = new Gcp.SecretManager.SecretVersion("secret-version-deletion-policy", new()
///     {
///         Secret = secret_basic.Id,
///         SecretData = "secret-data",
///         DeletionPolicy = "ABANDON",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		secret_basic, err := secretmanager.NewSecret(ctx, "secret-basic", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("secret-version"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				UserManaged: &secretmanager.SecretReplicationUserManagedArgs{
/// 					Replicas: secretmanager.SecretReplicationUserManagedReplicaArray{
/// 						&secretmanager.SecretReplicationUserManagedReplicaArgs{
/// 							Location: pulumi.String("us-central1"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretmanager.NewSecretVersion(ctx, "secret-version-deletion-policy", &secretmanager.SecretVersionArgs{
/// 			Secret:         secret_basic.ID(),
/// 			SecretData:     pulumi.String("secret-data"),
/// 			DeletionPolicy: pulumi.String("ABANDON"),
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
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationUserManagedArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
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
///         var secret_basic = new Secret("secret-basic", SecretArgs.builder()
///             .secretId("secret-version")
///             .replication(SecretReplicationArgs.builder()
///                 .userManaged(SecretReplicationUserManagedArgs.builder()
///                     .replicas(SecretReplicationUserManagedReplicaArgs.builder()
///                         .location("us-central1")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var secret_version_deletion_policy = new SecretVersion("secret-version-deletion-policy", SecretVersionArgs.builder()
///             .secret(secret_basic.id())
///             .secretData("secret-data")
///             .deletionPolicy("ABANDON")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   secret-basic:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: secret-version
///       replication:
///         userManaged:
///           replicas:
///             - location: us-central1
///   secret-version-deletion-policy:
///     type: gcp:secretmanager:SecretVersion
///     properties:
///       secret: ${["secret-basic"].id}
///       secretData: secret-data
///       deletionPolicy: ABANDON
/// ```
///
/// ### Secret Version Deletion Policy Disable
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const secret_basic = new gcp.secretmanager.Secret("secret-basic", {
///     secretId: "secret-version",
///     replication: {
///         userManaged: {
///             replicas: [{
///                 location: "us-central1",
///             }],
///         },
///     },
/// });
/// const secret_version_deletion_policy = new gcp.secretmanager.SecretVersion("secret-version-deletion-policy", {
///     secret: secret_basic.id,
///     secretData: "secret-data",
///     deletionPolicy: "DISABLE",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// secret_basic = gcp.secretmanager.Secret("secret-basic",
///     secret_id="secret-version",
///     replication={
///         "user_managed": {
///             "replicas": [{
///                 "location": "us-central1",
///             }],
///         },
///     })
/// secret_version_deletion_policy = gcp.secretmanager.SecretVersion("secret-version-deletion-policy",
///     secret=secret_basic.id,
///     secret_data="secret-data",
///     deletion_policy="DISABLE")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secret_basic = new Gcp.SecretManager.Secret("secret-basic", new()
///     {
///         SecretId = "secret-version",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             UserManaged = new Gcp.SecretManager.Inputs.SecretReplicationUserManagedArgs
///             {
///                 Replicas = new[]
///                 {
///                     new Gcp.SecretManager.Inputs.SecretReplicationUserManagedReplicaArgs
///                     {
///                         Location = "us-central1",
///                     },
///                 },
///             },
///         },
///     });
///
///     var secret_version_deletion_policy = new Gcp.SecretManager.SecretVersion("secret-version-deletion-policy", new()
///     {
///         Secret = secret_basic.Id,
///         SecretData = "secret-data",
///         DeletionPolicy = "DISABLE",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		secret_basic, err := secretmanager.NewSecret(ctx, "secret-basic", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("secret-version"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				UserManaged: &secretmanager.SecretReplicationUserManagedArgs{
/// 					Replicas: secretmanager.SecretReplicationUserManagedReplicaArray{
/// 						&secretmanager.SecretReplicationUserManagedReplicaArgs{
/// 							Location: pulumi.String("us-central1"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretmanager.NewSecretVersion(ctx, "secret-version-deletion-policy", &secretmanager.SecretVersionArgs{
/// 			Secret:         secret_basic.ID(),
/// 			SecretData:     pulumi.String("secret-data"),
/// 			DeletionPolicy: pulumi.String("DISABLE"),
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
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationUserManagedArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
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
///         var secret_basic = new Secret("secret-basic", SecretArgs.builder()
///             .secretId("secret-version")
///             .replication(SecretReplicationArgs.builder()
///                 .userManaged(SecretReplicationUserManagedArgs.builder()
///                     .replicas(SecretReplicationUserManagedReplicaArgs.builder()
///                         .location("us-central1")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var secret_version_deletion_policy = new SecretVersion("secret-version-deletion-policy", SecretVersionArgs.builder()
///             .secret(secret_basic.id())
///             .secretData("secret-data")
///             .deletionPolicy("DISABLE")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   secret-basic:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: secret-version
///       replication:
///         userManaged:
///           replicas:
///             - location: us-central1
///   secret-version-deletion-policy:
///     type: gcp:secretmanager:SecretVersion
///     properties:
///       secret: ${["secret-basic"].id}
///       secretData: secret-data
///       deletionPolicy: DISABLE
/// ```
///
/// ### Secret Version With Base64 String Secret Data
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const secret_basic = new gcp.secretmanager.Secret("secret-basic", {
///     secretId: "secret-version",
///     replication: {
///         userManaged: {
///             replicas: [{
///                 location: "us-central1",
///             }],
///         },
///     },
/// });
/// const secret_version_base64 = new gcp.secretmanager.SecretVersion("secret-version-base64", {
///     secret: secret_basic.id,
///     isSecretDataBase64: true,
///     secretData: std.filebase64({
///         input: "secret-data.pfx",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// secret_basic = gcp.secretmanager.Secret("secret-basic",
///     secret_id="secret-version",
///     replication={
///         "user_managed": {
///             "replicas": [{
///                 "location": "us-central1",
///             }],
///         },
///     })
/// secret_version_base64 = gcp.secretmanager.SecretVersion("secret-version-base64",
///     secret=secret_basic.id,
///     is_secret_data_base64=True,
///     secret_data=std.filebase64(input="secret-data.pfx").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secret_basic = new Gcp.SecretManager.Secret("secret-basic", new()
///     {
///         SecretId = "secret-version",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             UserManaged = new Gcp.SecretManager.Inputs.SecretReplicationUserManagedArgs
///             {
///                 Replicas = new[]
///                 {
///                     new Gcp.SecretManager.Inputs.SecretReplicationUserManagedReplicaArgs
///                     {
///                         Location = "us-central1",
///                     },
///                 },
///             },
///         },
///     });
///
///     var secret_version_base64 = new Gcp.SecretManager.SecretVersion("secret-version-base64", new()
///     {
///         Secret = secret_basic.Id,
///         IsSecretDataBase64 = true,
///         SecretData = Std.Filebase64.Invoke(new()
///         {
///             Input = "secret-data.pfx",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		secret_basic, err := secretmanager.NewSecret(ctx, "secret-basic", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("secret-version"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				UserManaged: &secretmanager.SecretReplicationUserManagedArgs{
/// 					Replicas: secretmanager.SecretReplicationUserManagedReplicaArray{
/// 						&secretmanager.SecretReplicationUserManagedReplicaArgs{
/// 							Location: pulumi.String("us-central1"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "secret-data.pfx",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretmanager.NewSecretVersion(ctx, "secret-version-base64", &secretmanager.SecretVersionArgs{
/// 			Secret:             secret_basic.ID(),
/// 			IsSecretDataBase64: pulumi.Bool(true),
/// 			SecretData:         pulumi.String(invokeFilebase64.Result),
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
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationUserManagedArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
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
///         var secret_basic = new Secret("secret-basic", SecretArgs.builder()
///             .secretId("secret-version")
///             .replication(SecretReplicationArgs.builder()
///                 .userManaged(SecretReplicationUserManagedArgs.builder()
///                     .replicas(SecretReplicationUserManagedReplicaArgs.builder()
///                         .location("us-central1")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var secret_version_base64 = new SecretVersion("secret-version-base64", SecretVersionArgs.builder()
///             .secret(secret_basic.id())
///             .isSecretDataBase64(true)
///             .secretData(StdFunctions.filebase64(Filebase64Args.builder()
///                 .input("secret-data.pfx")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   secret-basic:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: secret-version
///       replication:
///         userManaged:
///           replicas:
///             - location: us-central1
///   secret-version-base64:
///     type: gcp:secretmanager:SecretVersion
///     properties:
///       secret: ${["secret-basic"].id}
///       isSecretDataBase64: true
///       secretData:
///         fn::invoke:
///           function: std:filebase64
///           arguments:
///             input: secret-data.pfx
///           return: result
/// ```
///
/// ### Secret Version With Base64 String Secret Data Write Only
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const secret_basic = new gcp.secretmanager.Secret("secret-basic", {
///     secretId: "secret-version-base64-write-only",
///     replication: {
///         userManaged: {
///             replicas: [{
///                 location: "us-central1",
///             }],
///         },
///     },
/// });
/// const secret_version_base64_write_only = new gcp.secretmanager.SecretVersion("secret-version-base64-write-only", {
///     secret: secret_basic.id,
///     isSecretDataBase64: true,
///     secretDataWoVersion: 1,
///     secretDataWo: std.filebase64({
///         input: "secret-data-base64-write-only.pfx",
///     }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// secret_basic = gcp.secretmanager.Secret("secret-basic",
///     secret_id="secret-version-base64-write-only",
///     replication={
///         "user_managed": {
///             "replicas": [{
///                 "location": "us-central1",
///             }],
///         },
///     })
/// secret_version_base64_write_only = gcp.secretmanager.SecretVersion("secret-version-base64-write-only",
///     secret=secret_basic.id,
///     is_secret_data_base64=True,
///     secret_data_wo_version=1,
///     secret_data_wo=std.filebase64(input="secret-data-base64-write-only.pfx").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secret_basic = new Gcp.SecretManager.Secret("secret-basic", new()
///     {
///         SecretId = "secret-version-base64-write-only",
///         Replication = new Gcp.SecretManager.Inputs.SecretReplicationArgs
///         {
///             UserManaged = new Gcp.SecretManager.Inputs.SecretReplicationUserManagedArgs
///             {
///                 Replicas = new[]
///                 {
///                     new Gcp.SecretManager.Inputs.SecretReplicationUserManagedReplicaArgs
///                     {
///                         Location = "us-central1",
///                     },
///                 },
///             },
///         },
///     });
///
///     var secret_version_base64_write_only = new Gcp.SecretManager.SecretVersion("secret-version-base64-write-only", new()
///     {
///         Secret = secret_basic.Id,
///         IsSecretDataBase64 = true,
///         SecretDataWoVersion = 1,
///         SecretDataWo = Std.Filebase64.Invoke(new()
///         {
///             Input = "secret-data-base64-write-only.pfx",
///         }).Apply(invoke => invoke.Result),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/secretmanager"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		secret_basic, err := secretmanager.NewSecret(ctx, "secret-basic", &secretmanager.SecretArgs{
/// 			SecretId: pulumi.String("secret-version-base64-write-only"),
/// 			Replication: &secretmanager.SecretReplicationArgs{
/// 				UserManaged: &secretmanager.SecretReplicationUserManagedArgs{
/// 					Replicas: secretmanager.SecretReplicationUserManagedReplicaArray{
/// 						&secretmanager.SecretReplicationUserManagedReplicaArgs{
/// 							Location: pulumi.String("us-central1"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFilebase64, err := std.Filebase64(ctx, &std.Filebase64Args{
/// 			Input: "secret-data-base64-write-only.pfx",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = secretmanager.NewSecretVersion(ctx, "secret-version-base64-write-only", &secretmanager.SecretVersionArgs{
/// 			Secret:              secret_basic.ID(),
/// 			IsSecretDataBase64:  pulumi.Bool(true),
/// 			SecretDataWoVersion: pulumi.Int(1),
/// 			SecretDataWo:        pulumi.String(invokeFilebase64.Result),
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
/// import com.pulumi.gcp.secretmanager.Secret;
/// import com.pulumi.gcp.secretmanager.SecretArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationArgs;
/// import com.pulumi.gcp.secretmanager.inputs.SecretReplicationUserManagedArgs;
/// import com.pulumi.gcp.secretmanager.SecretVersion;
/// import com.pulumi.gcp.secretmanager.SecretVersionArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.Filebase64Args;
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
///         var secret_basic = new Secret("secret-basic", SecretArgs.builder()
///             .secretId("secret-version-base64-write-only")
///             .replication(SecretReplicationArgs.builder()
///                 .userManaged(SecretReplicationUserManagedArgs.builder()
///                     .replicas(SecretReplicationUserManagedReplicaArgs.builder()
///                         .location("us-central1")
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var secret_version_base64_write_only = new SecretVersion("secret-version-base64-write-only", SecretVersionArgs.builder()
///             .secret(secret_basic.id())
///             .isSecretDataBase64(true)
///             .secretDataWoVersion(1)
///             .secretDataWo(StdFunctions.filebase64(Filebase64Args.builder()
///                 .input("secret-data-base64-write-only.pfx")
///                 .build()).result())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   secret-basic:
///     type: gcp:secretmanager:Secret
///     properties:
///       secretId: secret-version-base64-write-only
///       replication:
///         userManaged:
///           replicas:
///             - location: us-central1
///   secret-version-base64-write-only:
///     type: gcp:secretmanager:SecretVersion
///     properties:
///       secret: ${["secret-basic"].id}
///       isSecretDataBase64: true
///       secretDataWoVersion: 1
///       secretDataWo:
///         fn::invoke:
///           function: std:filebase64
///           arguments:
///             input: secret-data-base64-write-only.pfx
///           return: result
/// ```
///
///
/// ## Import
///
/// SecretVersion can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/secrets/{{secret_id}}/versions/{{version}}`
///
/// When using the `pulumi import` command, SecretVersion can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:secretmanager/secretVersion:SecretVersion default projects/{{project}}/secrets/{{secret_id}}/versions/{{version}}
/// ```
class SecretVersion extends pulumi.CustomResource {
  /// The time at which the Secret was created.
  late final pulumi.Output<String> createTime;

  /// The deletion policy for the secret version. Setting `ABANDON` allows the resource
  /// to be abandoned rather than deleted. Setting `DISABLE` allows the resource to be
  /// disabled rather than deleted. Default is `DELETE`. Possible values are:
  /// * DELETE
  /// * DISABLE
  /// * ABANDON
  late final pulumi.Output<String?> deletionPolicy;

  /// The time at which the Secret was destroyed. Only present if state is DESTROYED.
  late final pulumi.Output<String> destroyTime;

  /// The current state of the SecretVersion.
  late final pulumi.Output<bool?> enabled;

  /// If set to 'true', the secret data is expected to be base64-encoded string and would be sent as is.
  late final pulumi.Output<bool?> isSecretDataBase64;

  /// The resource name of the SecretVersion. Format:
  /// `projects/{{project}}/secrets/{{secret_id}}/versions/{{version}}`
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs. If it is not provided,
  /// the provider project is used
  late final pulumi.Output<String> project;

  /// Secret Manager secret resource
  late final pulumi.Output<String> secret;

  /// The secret data. Must be no larger than 64KiB.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final pulumi.Output<String?> secretData;

  /// **NOTE:** This field is write-only and its value will not be updated in state as part of read operations.
  /// (Optional, Write-Only)
  /// The secret data. Must be no larger than 64KiB. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  /// **Note**: This property is write-only and will not be read from the API.
  ///
  /// &gt; **Note:** One of `secret_data` or `secret_data_wo` can only be set.
  late final pulumi.Output<String?> secretDataWo;

  /// Triggers update of secret data write-only. For more info see [updating write-only arguments](https://www.terraform.io/docs/providers/google/guides/using_write_only_arguments.html#updating-write-only-arguments)
  late final pulumi.Output<int?> secretDataWoVersion;

  /// The version of the Secret.
  late final pulumi.Output<String> version;

  /// Creates a new [SecretVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecretVersion]. {@macro pulumi_secretmanager_secret_version_secret_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecretVersion(
    String name, {
    SecretVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:secretmanager/secretVersion:SecretVersion',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String?>('deletionPolicy');
    destroyTime = registerOutput<String>('destroyTime');
    enabled = registerOutput<bool?>('enabled');
    isSecretDataBase64 = registerOutput<bool?>('isSecretDataBase64');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    secret = registerOutput<String>('secret');
    secretData = registerOutput<String?>('secretData');
    secretDataWo = registerOutput<String?>('secretDataWo');
    secretDataWoVersion = registerOutput<int?>('secretDataWoVersion');
    version = registerOutput<String>('version');
  }

  /// Gets an existing [SecretVersion] resource's state with the given [name] and [id].
  static SecretVersion get(
    String name,
    pulumi.Input<String> id, {
    SecretVersionState? state,
  }) {
    return SecretVersion._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  SecretVersion._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:secretmanager/secretVersion:SecretVersion',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String?>('deletionPolicy');
    destroyTime = registerOutput<String>('destroyTime');
    enabled = registerOutput<bool?>('enabled');
    isSecretDataBase64 = registerOutput<bool?>('isSecretDataBase64');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    secret = registerOutput<String>('secret');
    secretData = registerOutput<String?>('secretData');
    secretDataWo = registerOutput<String?>('secretDataWo');
    secretDataWoVersion = registerOutput<int?>('secretDataWoVersion');
    version = registerOutput<String>('version');
  }
}
