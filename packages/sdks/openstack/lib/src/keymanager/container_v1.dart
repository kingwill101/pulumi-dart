import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_v1_acl.dart';
import 'container_v1_args.dart';
import 'container_v1_state.dart';

/// Manages a V1 Barbican container resource within OpenStack.
///
/// ## Example Usage
///
/// ### Simple container
///
/// A container with the TLS certificates.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
/// import * as std from "@pulumi/std";
///
/// const certificate1 = new openstack.keymanager.SecretV1("certificate_1", {
///     name: "certificate",
///     payload: std.file({
///         input: "cert.pem",
///     }).then(invoke => invoke.result),
///     secretType: "certificate",
///     payloadContentType: "text/plain",
/// });
/// const privateKey1 = new openstack.keymanager.SecretV1("private_key_1", {
///     name: "private_key",
///     payload: std.file({
///         input: "cert-key.pem",
///     }).then(invoke => invoke.result),
///     secretType: "private",
///     payloadContentType: "text/plain",
/// });
/// const intermediate1 = new openstack.keymanager.SecretV1("intermediate_1", {
///     name: "intermediate",
///     payload: std.file({
///         input: "intermediate-ca.pem",
///     }).then(invoke => invoke.result),
///     secretType: "certificate",
///     payloadContentType: "text/plain",
/// });
/// const tls1 = new openstack.keymanager.ContainerV1("tls_1", {
///     name: "tls",
///     type: "certificate",
///     secretRefs: [
///         {
///             name: "certificate",
///             secretRef: certificate1.secretRef,
///         },
///         {
///             name: "private_key",
///             secretRef: privateKey1.secretRef,
///         },
///         {
///             name: "intermediates",
///             secretRef: intermediate1.secretRef,
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
/// import pulumi_std as std
///
/// certificate1 = openstack.keymanager.SecretV1("certificate_1",
///     name="certificate",
///     payload=std.file(input="cert.pem").result,
///     secret_type="certificate",
///     payload_content_type="text/plain")
/// private_key1 = openstack.keymanager.SecretV1("private_key_1",
///     name="private_key",
///     payload=std.file(input="cert-key.pem").result,
///     secret_type="private",
///     payload_content_type="text/plain")
/// intermediate1 = openstack.keymanager.SecretV1("intermediate_1",
///     name="intermediate",
///     payload=std.file(input="intermediate-ca.pem").result,
///     secret_type="certificate",
///     payload_content_type="text/plain")
/// tls1 = openstack.keymanager.ContainerV1("tls_1",
///     name="tls",
///     type="certificate",
///     secret_refs=[
///         {
///             "name": "certificate",
///             "secret_ref": certificate1.secret_ref,
///         },
///         {
///             "name": "private_key",
///             "secret_ref": private_key1.secret_ref,
///         },
///         {
///             "name": "intermediates",
///             "secret_ref": intermediate1.secret_ref,
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var certificate1 = new OpenStack.KeyManager.SecretV1("certificate_1", new()
///     {
///         Name = "certificate",
///         Payload = Std.File.Invoke(new()
///         {
///             Input = "cert.pem",
///         }).Apply(invoke => invoke.Result),
///         SecretType = "certificate",
///         PayloadContentType = "text/plain",
///     });
///
///     var privateKey1 = new OpenStack.KeyManager.SecretV1("private_key_1", new()
///     {
///         Name = "private_key",
///         Payload = Std.File.Invoke(new()
///         {
///             Input = "cert-key.pem",
///         }).Apply(invoke => invoke.Result),
///         SecretType = "private",
///         PayloadContentType = "text/plain",
///     });
///
///     var intermediate1 = new OpenStack.KeyManager.SecretV1("intermediate_1", new()
///     {
///         Name = "intermediate",
///         Payload = Std.File.Invoke(new()
///         {
///             Input = "intermediate-ca.pem",
///         }).Apply(invoke => invoke.Result),
///         SecretType = "certificate",
///         PayloadContentType = "text/plain",
///     });
///
///     var tls1 = new OpenStack.KeyManager.ContainerV1("tls_1", new()
///     {
///         Name = "tls",
///         Type = "certificate",
///         SecretRefs = new[]
///         {
///             new OpenStack.KeyManager.Inputs.ContainerV1SecretRefArgs
///             {
///                 Name = "certificate",
///                 SecretRef = certificate1.SecretRef,
///             },
///             new OpenStack.KeyManager.Inputs.ContainerV1SecretRefArgs
///             {
///                 Name = "private_key",
///                 SecretRef = privateKey1.SecretRef,
///             },
///             new OpenStack.KeyManager.Inputs.ContainerV1SecretRefArgs
///             {
///                 Name = "intermediates",
///                 SecretRef = intermediate1.SecretRef,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/keymanager"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		invokeFile, err := std.File(ctx, &std.FileArgs{
/// 			Input: "cert.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		certificate1, err := keymanager.NewSecretV1(ctx, "certificate_1", &keymanager.SecretV1Args{
/// 			Name:               pulumi.String("certificate"),
/// 			Payload:            pulumi.String(invokeFile.Result),
/// 			SecretType:         pulumi.String("certificate"),
/// 			PayloadContentType: pulumi.String("text/plain"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile1, err := std.File(ctx, &std.FileArgs{
/// 			Input: "cert-key.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		privateKey1, err := keymanager.NewSecretV1(ctx, "private_key_1", &keymanager.SecretV1Args{
/// 			Name:               pulumi.String("private_key"),
/// 			Payload:            pulumi.String(invokeFile1.Result),
/// 			SecretType:         pulumi.String("private"),
/// 			PayloadContentType: pulumi.String("text/plain"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeFile2, err := std.File(ctx, &std.FileArgs{
/// 			Input: "intermediate-ca.pem",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		intermediate1, err := keymanager.NewSecretV1(ctx, "intermediate_1", &keymanager.SecretV1Args{
/// 			Name:               pulumi.String("intermediate"),
/// 			Payload:            pulumi.String(invokeFile2.Result),
/// 			SecretType:         pulumi.String("certificate"),
/// 			PayloadContentType: pulumi.String("text/plain"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = keymanager.NewContainerV1(ctx, "tls_1", &keymanager.ContainerV1Args{
/// 			Name: pulumi.String("tls"),
/// 			Type: pulumi.String("certificate"),
/// 			SecretRefs: keymanager.ContainerV1SecretRefArray{
/// 				&keymanager.ContainerV1SecretRefArgs{
/// 					Name:      pulumi.String("certificate"),
/// 					SecretRef: certificate1.SecretRef,
/// 				},
/// 				&keymanager.ContainerV1SecretRefArgs{
/// 					Name:      pulumi.String("private_key"),
/// 					SecretRef: privateKey1.SecretRef,
/// 				},
/// 				&keymanager.ContainerV1SecretRefArgs{
/// 					Name:      pulumi.String("intermediates"),
/// 					SecretRef: intermediate1.SecretRef,
/// 				},
/// 			},
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
/// import com.pulumi.openstack.keymanager.SecretV1;
/// import com.pulumi.openstack.keymanager.SecretV1Args;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
/// import com.pulumi.openstack.keymanager.ContainerV1;
/// import com.pulumi.openstack.keymanager.ContainerV1Args;
/// import com.pulumi.openstack.keymanager.inputs.ContainerV1SecretRefArgs;
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
///         var certificate1 = new SecretV1("certificate1", SecretV1Args.builder()
///             .name("certificate")
///             .payload(StdFunctions.file(FileArgs.builder()
///                 .input("cert.pem")
///                 .build()).result())
///             .secretType("certificate")
///             .payloadContentType("text/plain")
///             .build());
///
///         var privateKey1 = new SecretV1("privateKey1", SecretV1Args.builder()
///             .name("private_key")
///             .payload(StdFunctions.file(FileArgs.builder()
///                 .input("cert-key.pem")
///                 .build()).result())
///             .secretType("private")
///             .payloadContentType("text/plain")
///             .build());
///
///         var intermediate1 = new SecretV1("intermediate1", SecretV1Args.builder()
///             .name("intermediate")
///             .payload(StdFunctions.file(FileArgs.builder()
///                 .input("intermediate-ca.pem")
///                 .build()).result())
///             .secretType("certificate")
///             .payloadContentType("text/plain")
///             .build());
///
///         var tls1 = new ContainerV1("tls1", ContainerV1Args.builder()
///             .name("tls")
///             .type("certificate")
///             .secretRefs(
///                 ContainerV1SecretRefArgs.builder()
///                     .name("certificate")
///                     .secretRef(certificate1.secretRef())
///                     .build(),
///                 ContainerV1SecretRefArgs.builder()
///                     .name("private_key")
///                     .secretRef(privateKey1.secretRef())
///                     .build(),
///                 ContainerV1SecretRefArgs.builder()
///                     .name("intermediates")
///                     .secretRef(intermediate1.secretRef())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   certificate1:
///     type: openstack:keymanager:SecretV1
///     name: certificate_1
///     properties:
///       name: certificate
///       payload:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: cert.pem
///           return: result
///       secretType: certificate
///       payloadContentType: text/plain
///   privateKey1:
///     type: openstack:keymanager:SecretV1
///     name: private_key_1
///     properties:
///       name: private_key
///       payload:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: cert-key.pem
///           return: result
///       secretType: private
///       payloadContentType: text/plain
///   intermediate1:
///     type: openstack:keymanager:SecretV1
///     name: intermediate_1
///     properties:
///       name: intermediate
///       payload:
///         fn::invoke:
///           function: std:file
///           arguments:
///             input: intermediate-ca.pem
///           return: result
///       secretType: certificate
///       payloadContentType: text/plain
///   tls1:
///     type: openstack:keymanager:ContainerV1
///     name: tls_1
///     properties:
///       name: tls
///       type: certificate
///       secretRefs:
///         - name: certificate
///           secretRef: ${certificate1.secretRef}
///         - name: private_key
///           secretRef: ${privateKey1.secretRef}
///         - name: intermediates
///           secretRef: ${intermediate1.secretRef}
/// ```
///
///
/// ### Container with the ACL
///
/// &gt; **Note** Only read ACLs are supported
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const tls1 = new openstack.keymanager.ContainerV1("tls_1", {
///     name: "tls",
///     type: "certificate",
///     secretRefs: [
///         {
///             name: "certificate",
///             secretRef: certificate1.secretRef,
///         },
///         {
///             name: "private_key",
///             secretRef: privateKey1.secretRef,
///         },
///         {
///             name: "intermediates",
///             secretRef: intermediate1.secretRef,
///         },
///     ],
///     acl: {
///         read: {
///             projectAccess: false,
///             users: [
///                 "userid1",
///                 "userid2",
///             ],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// tls1 = openstack.keymanager.ContainerV1("tls_1",
///     name="tls",
///     type="certificate",
///     secret_refs=[
///         {
///             "name": "certificate",
///             "secret_ref": certificate1["secretRef"],
///         },
///         {
///             "name": "private_key",
///             "secret_ref": private_key1["secretRef"],
///         },
///         {
///             "name": "intermediates",
///             "secret_ref": intermediate1["secretRef"],
///         },
///     ],
///     acl={
///         "read": {
///             "project_access": False,
///             "users": [
///                 "userid1",
///                 "userid2",
///             ],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var tls1 = new OpenStack.KeyManager.ContainerV1("tls_1", new()
///     {
///         Name = "tls",
///         Type = "certificate",
///         SecretRefs = new[]
///         {
///             new OpenStack.KeyManager.Inputs.ContainerV1SecretRefArgs
///             {
///                 Name = "certificate",
///                 SecretRef = certificate1.SecretRef,
///             },
///             new OpenStack.KeyManager.Inputs.ContainerV1SecretRefArgs
///             {
///                 Name = "private_key",
///                 SecretRef = privateKey1.SecretRef,
///             },
///             new OpenStack.KeyManager.Inputs.ContainerV1SecretRefArgs
///             {
///                 Name = "intermediates",
///                 SecretRef = intermediate1.SecretRef,
///             },
///         },
///         Acl = new OpenStack.KeyManager.Inputs.ContainerV1AclArgs
///         {
///             Read = new OpenStack.KeyManager.Inputs.ContainerV1AclReadArgs
///             {
///                 ProjectAccess = false,
///                 Users = new[]
///                 {
///                     "userid1",
///                     "userid2",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/keymanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := keymanager.NewContainerV1(ctx, "tls_1", &keymanager.ContainerV1Args{
/// 			Name: pulumi.String("tls"),
/// 			Type: pulumi.String("certificate"),
/// 			SecretRefs: keymanager.ContainerV1SecretRefArray{
/// 				&keymanager.ContainerV1SecretRefArgs{
/// 					Name:      pulumi.String("certificate"),
/// 					SecretRef: pulumi.Any(certificate1.SecretRef),
/// 				},
/// 				&keymanager.ContainerV1SecretRefArgs{
/// 					Name:      pulumi.String("private_key"),
/// 					SecretRef: pulumi.Any(privateKey1.SecretRef),
/// 				},
/// 				&keymanager.ContainerV1SecretRefArgs{
/// 					Name:      pulumi.String("intermediates"),
/// 					SecretRef: pulumi.Any(intermediate1.SecretRef),
/// 				},
/// 			},
/// 			Acl: &keymanager.ContainerV1AclArgs{
/// 				Read: &keymanager.ContainerV1AclReadArgs{
/// 					ProjectAccess: pulumi.Bool(false),
/// 					Users: pulumi.StringArray{
/// 						pulumi.String("userid1"),
/// 						pulumi.String("userid2"),
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.openstack.keymanager.ContainerV1;
/// import com.pulumi.openstack.keymanager.ContainerV1Args;
/// import com.pulumi.openstack.keymanager.inputs.ContainerV1SecretRefArgs;
/// import com.pulumi.openstack.keymanager.inputs.ContainerV1AclArgs;
/// import com.pulumi.openstack.keymanager.inputs.ContainerV1AclReadArgs;
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
///         var tls1 = new ContainerV1("tls1", ContainerV1Args.builder()
///             .name("tls")
///             .type("certificate")
///             .secretRefs(
///                 ContainerV1SecretRefArgs.builder()
///                     .name("certificate")
///                     .secretRef(certificate1.secretRef())
///                     .build(),
///                 ContainerV1SecretRefArgs.builder()
///                     .name("private_key")
///                     .secretRef(privateKey1.secretRef())
///                     .build(),
///                 ContainerV1SecretRefArgs.builder()
///                     .name("intermediates")
///                     .secretRef(intermediate1.secretRef())
///                     .build())
///             .acl(ContainerV1AclArgs.builder()
///                 .read(ContainerV1AclReadArgs.builder()
///                     .projectAccess(false)
///                     .users(
///                         "userid1",
///                         "userid2")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   tls1:
///     type: openstack:keymanager:ContainerV1
///     name: tls_1
///     properties:
///       name: tls
///       type: certificate
///       secretRefs:
///         - name: certificate
///           secretRef: ${certificate1.secretRef}
///         - name: private_key
///           secretRef: ${privateKey1.secretRef}
///         - name: intermediates
///           secretRef: ${intermediate1.secretRef}
///       acl:
///         read:
///           projectAccess: false
///           users:
///             - userid1
///             - userid2
/// ```
///
///
/// ## Import
///
/// Containers can be imported using the container id (the last part of the container reference), e.g.:
///
/// ```sh
/// $ pulumi import openstack:keymanager/containerV1:ContainerV1 container_1 0c6cd26a-c012-4d7b-8034-057c0f1c2953
/// ```
class ContainerV1 extends pulumi.CustomResource {
  /// Allows to control an access to a container. Currently only
  /// the `read` operation is supported. If not specified, the container is
  /// accessible project wide. The `read` structure is described below.
  late final pulumi.Output<ContainerV1Acl> acl;

  /// The list of the container consumers. The structure is described below.
  late final pulumi.Output<List<Map<String, dynamic>>> consumers;

  /// The container reference / where to find the container.
  late final pulumi.Output<String> containerRef;

  /// The date the container was created.
  late final pulumi.Output<String> createdAt;

  /// The creator of the container.
  late final pulumi.Output<String> creatorId;

  /// Human-readable name for the Container. Does not have
  /// to be unique.
  late final pulumi.Output<String> name;

  /// The region in which to obtain the V1 KeyManager client.
  /// A KeyManager client is needed to create a container. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// V1 container.
  late final pulumi.Output<String> region;

  /// A set of dictionaries containing references to secrets. The structure is described
  /// below.
  late final pulumi.Output<List<Map<String, dynamic>>?> secretRefs;

  /// The status of the container.
  late final pulumi.Output<String> status;

  /// Used to indicate the type of container. Must be one of `generic`, `rsa` or `certificate`.
  late final pulumi.Output<String> type;

  /// The date the container was last updated.
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [ContainerV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ContainerV1]. {@macro pulumi_keymanager_container_v1_container_v1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ContainerV1(
    String name, {
    ContainerV1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:keymanager/containerV1:ContainerV1',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    acl = registerOutput<ContainerV1Acl>(
      'acl',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ContainerV1Acl.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    consumers = registerOutput<List<Map<String, dynamic>>>('consumers');
    containerRef = registerOutput<String>('containerRef');
    createdAt = registerOutput<String>('createdAt');
    creatorId = registerOutput<String>('creatorId');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    secretRefs = registerOutput<List<Map<String, dynamic>>?>('secretRefs');
    status = registerOutput<String>('status');
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [ContainerV1] resource's state with the given [name] and [id].
  static ContainerV1 get(
    String name,
    pulumi.Input<String> id, {
    ContainerV1State? state,
  }) {
    return ContainerV1._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ContainerV1._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'openstack:keymanager/containerV1:ContainerV1',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    acl = registerOutput<ContainerV1Acl>(
      'acl',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ContainerV1Acl.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    consumers = registerOutput<List<Map<String, dynamic>>>('consumers');
    containerRef = registerOutput<String>('containerRef');
    createdAt = registerOutput<String>('createdAt');
    creatorId = registerOutput<String>('creatorId');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    secretRefs = registerOutput<List<Map<String, dynamic>>?>('secretRefs');
    status = registerOutput<String>('status');
    type = registerOutput<String>('type');
    updatedAt = registerOutput<String>('updatedAt');
  }
}
