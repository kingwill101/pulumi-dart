import 'package:pulumi/pulumi.dart' as pulumi;
import 'federated_identity_credential_args.dart';
import 'federated_identity_credential_state.dart';

/// Manages a Federated Identity Credential.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example",
///     location: "West Europe",
/// });
/// const exampleUserAssignedIdentity = new azure.authorization.UserAssignedIdentity("example", {
///     location: example.location,
///     name: "example",
///     resourceGroupName: example.name,
/// });
/// const exampleFederatedIdentityCredential = new azure.armmsi.FederatedIdentityCredential("example", {
///     name: "example",
///     audience: "foo",
///     issuer: "https://foo",
///     userAssignedIdentityId: exampleUserAssignedIdentity.id,
///     subject: "foo",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example",
///     location="West Europe")
/// example_user_assigned_identity = azure.authorization.UserAssignedIdentity("example",
///     location=example.location,
///     name="example",
///     resource_group_name=example.name)
/// example_federated_identity_credential = azure.armmsi.FederatedIdentityCredential("example",
///     name="example",
///     audience="foo",
///     issuer="https://foo",
///     user_assigned_identity_id=example_user_assigned_identity.id,
///     subject="foo")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example",
///         Location = "West Europe",
///     });
///
///     var exampleUserAssignedIdentity = new Azure.Authorization.UserAssignedIdentity("example", new()
///     {
///         Location = example.Location,
///         Name = "example",
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleFederatedIdentityCredential = new Azure.ArmMsi.FederatedIdentityCredential("example", new()
///     {
///         Name = "example",
///         Audience = "foo",
///         Issuer = "https://foo",
///         UserAssignedIdentityId = exampleUserAssignedIdentity.Id,
///         Subject = "foo",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/armmsi"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/authorization"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleUserAssignedIdentity, err := authorization.NewUserAssignedIdentity(ctx, "example", &authorization.UserAssignedIdentityArgs{
/// 			Location:          example.Location,
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = armmsi.NewFederatedIdentityCredential(ctx, "example", &armmsi.FederatedIdentityCredentialArgs{
/// 			Name:                   pulumi.String("example"),
/// 			Audience:               pulumi.String("foo"),
/// 			Issuer:                 pulumi.String("https://foo"),
/// 			UserAssignedIdentityId: exampleUserAssignedIdentity.ID(),
/// 			Subject:                pulumi.String("foo"),
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
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example"
///   location = "West Europe"
/// }
/// resource "azure_authorization_userassignedidentity" "example" {
///   location            = azure_core_resourcegroup.example.location
///   name                = "example"
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_armmsi_federatedidentitycredential" "example" {
///   name                      = "example"
///   audience                  = "foo"
///   issuer                    = "https://foo"
///   user_assigned_identity_id = azure_authorization_userassignedidentity.example.id
///   subject                   = "foo"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.authorization.UserAssignedIdentity;
/// import com.pulumi.azure.authorization.UserAssignedIdentityArgs;
/// import com.pulumi.azure.armmsi.FederatedIdentityCredential;
/// import com.pulumi.azure.armmsi.FederatedIdentityCredentialArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example")
///             .location("West Europe")
///             .build());
///
///         var exampleUserAssignedIdentity = new UserAssignedIdentity("exampleUserAssignedIdentity", UserAssignedIdentityArgs.builder()
///             .location(example.location())
///             .name("example")
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleFederatedIdentityCredential = new FederatedIdentityCredential("exampleFederatedIdentityCredential", FederatedIdentityCredentialArgs.builder()
///             .name("example")
///             .audience("foo")
///             .issuer("https://foo")
///             .userAssignedIdentityId(exampleUserAssignedIdentity.id())
///             .subject("foo")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example
///       location: West Europe
///   exampleUserAssignedIdentity:
///     type: azure:authorization:UserAssignedIdentity
///     name: example
///     properties:
///       location: ${example.location}
///       name: example
///       resourceGroupName: ${example.name}
///   exampleFederatedIdentityCredential:
///     type: azure:armmsi:FederatedIdentityCredential
///     name: example
///     properties:
///       name: example
///       audience: foo
///       issuer: https://foo
///       userAssignedIdentityId: ${exampleUserAssignedIdentity.id}
///       subject: foo
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ManagedIdentity` - 2024-11-30
///
/// ## Import
///
/// An existing Federated Identity Credential can be imported into Pulumi using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:armmsi/federatedIdentityCredential:FederatedIdentityCredential example /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/{parentIdentityName}/federatedIdentityCredentials/{resourceName}
/// ```
class FederatedIdentityCredential extends pulumi.CustomResource {
  /// Specifies the audience for this Federated Identity Credential.
  late final pulumi.Output<String> audience;
  /// Specifies the issuer of this Federated Identity Credential.
  late final pulumi.Output<String> issuer;
  /// Specifies the name of this Federated Identity Credential. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> parentId;
  late final pulumi.Output<String> resourceGroupName;
  /// Specifies the subject for this Federated Identity Credential.
  late final pulumi.Output<String> subject;
  /// Specifies the ID of the User Assigned Identity for this Federated Identity Credential. Changing this forces a new Federated Identity Credential to be created.
  late final pulumi.Output<String> userAssignedIdentityId;

  /// Creates a new [FederatedIdentityCredential].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FederatedIdentityCredential]. {@macro pulumi_armmsi_federated_identity_credential_federated_identity_credential_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FederatedIdentityCredential(
    String name, {
    FederatedIdentityCredentialArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:armmsi/federatedIdentityCredential:FederatedIdentityCredential',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    audience = registerOutput<String>('audience');
    issuer = registerOutput<String>('issuer');
    this.name = registerOutput<String>('name');
    parentId = registerOutput<String>('parentId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    subject = registerOutput<String>('subject');
    userAssignedIdentityId = registerOutput<String>('userAssignedIdentityId');
  }

  /// Gets an existing [FederatedIdentityCredential] resource's state with the given [name] and [id].
  static FederatedIdentityCredential get(
    String name,
    pulumi.Input<String> id, {
    FederatedIdentityCredentialState? state,
  }) {
    return FederatedIdentityCredential._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FederatedIdentityCredential._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:armmsi/federatedIdentityCredential:FederatedIdentityCredential',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    audience = registerOutput<String>('audience');
    issuer = registerOutput<String>('issuer');
    this.name = registerOutput<String>('name');
    parentId = registerOutput<String>('parentId');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    subject = registerOutput<String>('subject');
    userAssignedIdentityId = registerOutput<String>('userAssignedIdentityId');
  }
}
