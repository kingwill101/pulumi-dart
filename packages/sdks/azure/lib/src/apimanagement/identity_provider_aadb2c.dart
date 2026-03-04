import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_provider_aadb2c_args.dart';
import 'identity_provider_aadb2c_state.dart';

/// Manages an API Management Azure AD B2C Identity Provider.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleService = new azure.apimanagement.Service("example", {
///     name: "example-apim",
///     location: example.location,
///     resourceGroupName: example.name,
///     publisherName: "My Company",
///     publisherEmail: "company@terraform.io",
///     skuName: "Developer_1",
/// });
/// const exampleApplication = new azuread.Application("example", {displayName: "acctestam-example"});
/// const exampleApplicationPassword = new azuread.ApplicationPassword("example", {
///     applicationObjectId: exampleApplication.objectId,
///     endDateRelative: "36h",
/// });
/// const exampleIdentityProviderAadb2c = new azure.apimanagement.IdentityProviderAadb2c("example", {
///     resourceGroupName: example.name,
///     apiManagementName: exampleService.name,
///     clientId: exampleApplication.applicationId,
///     clientSecret: "P@55w0rD!",
///     allowedTenant: "myb2ctenant.onmicrosoft.com",
///     signinTenant: "myb2ctenant.onmicrosoft.com",
///     authority: "myb2ctenant.b2clogin.com",
///     signinPolicy: "B2C_1_Login",
///     signupPolicy: "B2C_1_Signup",
/// }, {
///     dependsOn: [exampleApplicationPassword],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
/// import pulumi_azuread as azuread
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_service = azure.apimanagement.Service("example",
///     name="example-apim",
///     location=example.location,
///     resource_group_name=example.name,
///     publisher_name="My Company",
///     publisher_email="company@terraform.io",
///     sku_name="Developer_1")
/// example_application = azuread.Application("example", display_name="acctestam-example")
/// example_application_password = azuread.ApplicationPassword("example",
///     application_object_id=example_application.object_id,
///     end_date_relative="36h")
/// example_identity_provider_aadb2c = azure.apimanagement.IdentityProviderAadb2c("example",
///     resource_group_name=example.name,
///     api_management_name=example_service.name,
///     client_id=example_application.application_id,
///     client_secret="P@55w0rD!",
///     allowed_tenant="myb2ctenant.onmicrosoft.com",
///     signin_tenant="myb2ctenant.onmicrosoft.com",
///     authority="myb2ctenant.b2clogin.com",
///     signin_policy="B2C_1_Login",
///     signup_policy="B2C_1_Signup",
///     opts = pulumi.ResourceOptions(depends_on=[example_application_password]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleService = new Azure.ApiManagement.Service("example", new()
///     {
///         Name = "example-apim",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         PublisherName = "My Company",
///         PublisherEmail = "company@terraform.io",
///         SkuName = "Developer_1",
///     });
///
///     var exampleApplication = new AzureAD.Application("example", new()
///     {
///         DisplayName = "acctestam-example",
///     });
///
///     var exampleApplicationPassword = new AzureAD.ApplicationPassword("example", new()
///     {
///         ApplicationObjectId = exampleApplication.ObjectId,
///         EndDateRelative = "36h",
///     });
///
///     var exampleIdentityProviderAadb2c = new Azure.ApiManagement.IdentityProviderAadb2c("example", new()
///     {
///         ResourceGroupName = example.Name,
///         ApiManagementName = exampleService.Name,
///         ClientId = exampleApplication.ApplicationId,
///         ClientSecret = "P@55w0rD!",
///         AllowedTenant = "myb2ctenant.onmicrosoft.com",
///         SigninTenant = "myb2ctenant.onmicrosoft.com",
///         Authority = "myb2ctenant.b2clogin.com",
///         SigninPolicy = "B2C_1_Login",
///         SignupPolicy = "B2C_1_Signup",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleApplicationPassword,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/apimanagement"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleService, err := apimanagement.NewService(ctx, "example", &apimanagement.ServiceArgs{
/// 			Name:              pulumi.String("example-apim"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			PublisherName:     pulumi.String("My Company"),
/// 			PublisherEmail:    pulumi.String("company@terraform.io"),
/// 			SkuName:           pulumi.String("Developer_1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleApplication, err := azuread.NewApplication(ctx, "example", &azuread.ApplicationArgs{
/// 			DisplayName: pulumi.String("acctestam-example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleApplicationPassword, err := azuread.NewApplicationPassword(ctx, "example", &azuread.ApplicationPasswordArgs{
/// 			ApplicationObjectId: exampleApplication.ObjectId,
/// 			EndDateRelative:     pulumi.String("36h"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apimanagement.NewIdentityProviderAadb2c(ctx, "example", &apimanagement.IdentityProviderAadb2cArgs{
/// 			ResourceGroupName: example.Name,
/// 			ApiManagementName: exampleService.Name,
/// 			ClientId:          exampleApplication.ApplicationId,
/// 			ClientSecret:      pulumi.String("P@55w0rD!"),
/// 			AllowedTenant:     pulumi.String("myb2ctenant.onmicrosoft.com"),
/// 			SigninTenant:      pulumi.String("myb2ctenant.onmicrosoft.com"),
/// 			Authority:         pulumi.String("myb2ctenant.b2clogin.com"),
/// 			SigninPolicy:      pulumi.String("B2C_1_Login"),
/// 			SignupPolicy:      pulumi.String("B2C_1_Signup"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleApplicationPassword,
/// 		}))
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.apimanagement.Service;
/// import com.pulumi.azure.apimanagement.ServiceArgs;
/// import com.pulumi.azuread.Application;
/// import com.pulumi.azuread.ApplicationArgs;
/// import com.pulumi.azuread.ApplicationPassword;
/// import com.pulumi.azuread.ApplicationPasswordArgs;
/// import com.pulumi.azure.apimanagement.IdentityProviderAadb2c;
/// import com.pulumi.azure.apimanagement.IdentityProviderAadb2cArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleService = new Service("exampleService", ServiceArgs.builder()
///             .name("example-apim")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .publisherName("My Company")
///             .publisherEmail("company@terraform.io")
///             .skuName("Developer_1")
///             .build());
///
///         var exampleApplication = new Application("exampleApplication", ApplicationArgs.builder()
///             .displayName("acctestam-example")
///             .build());
///
///         var exampleApplicationPassword = new ApplicationPassword("exampleApplicationPassword", ApplicationPasswordArgs.builder()
///             .applicationObjectId(exampleApplication.objectId())
///             .endDateRelative("36h")
///             .build());
///
///         var exampleIdentityProviderAadb2c = new IdentityProviderAadb2c("exampleIdentityProviderAadb2c", IdentityProviderAadb2cArgs.builder()
///             .resourceGroupName(example.name())
///             .apiManagementName(exampleService.name())
///             .clientId(exampleApplication.applicationId())
///             .clientSecret("P@55w0rD!")
///             .allowedTenant("myb2ctenant.onmicrosoft.com")
///             .signinTenant("myb2ctenant.onmicrosoft.com")
///             .authority("myb2ctenant.b2clogin.com")
///             .signinPolicy("B2C_1_Login")
///             .signupPolicy("B2C_1_Signup")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleApplicationPassword)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleService:
///     type: azure:apimanagement:Service
///     name: example
///     properties:
///       name: example-apim
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       publisherName: My Company
///       publisherEmail: company@terraform.io
///       skuName: Developer_1
///   exampleApplication:
///     type: azuread:Application
///     name: example
///     properties:
///       displayName: acctestam-example
///   exampleApplicationPassword:
///     type: azuread:ApplicationPassword
///     name: example
///     properties:
///       applicationObjectId: ${exampleApplication.objectId}
///       endDateRelative: 36h
///   exampleIdentityProviderAadb2c:
///     type: azure:apimanagement:IdentityProviderAadb2c
///     name: example
///     properties:
///       resourceGroupName: ${example.name}
///       apiManagementName: ${exampleService.name}
///       clientId: ${exampleApplication.applicationId}
///       clientSecret: P@55w0rD!
///       allowedTenant: myb2ctenant.onmicrosoft.com
///       signinTenant: myb2ctenant.onmicrosoft.com
///       authority: myb2ctenant.b2clogin.com
///       signinPolicy: B2C_1_Login
///       signupPolicy: B2C_1_Signup
///     options:
///       dependsOn:
///         - ${exampleApplicationPassword}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2022-08-01
///
/// ## Import
///
/// API Management Azure AD B2C Identity Providers can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/identityProviderAadb2c:IdentityProviderAadb2c example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.ApiManagement/service/service1/identityProviders/aadB2C
/// ```
class IdentityProviderAadb2c extends pulumi.CustomResource {
  /// The allowed AAD tenant, usually your B2C tenant domain.
  late final pulumi.Output<String> allowedTenant;

  /// The Name of the API Management Service where this AAD Identity Provider should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> apiManagementName;

  /// OpenID Connect discovery endpoint hostname, usually your b2clogin.com domain.
  late final pulumi.Output<String> authority;

  /// Client ID of the Application in your B2C tenant.
  late final pulumi.Output<String> clientId;

  /// The client library to be used in the Azure AD B2C Identity Provider.
  late final pulumi.Output<String?> clientLibrary;

  /// Client secret of the Application in your B2C tenant.
  late final pulumi.Output<String> clientSecret;

  /// Password reset Policy Name.
  late final pulumi.Output<String?> passwordResetPolicy;

  /// Profile editing Policy Name.
  late final pulumi.Output<String?> profileEditingPolicy;

  /// The Name of the Resource Group where the API Management Service exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Signin Policy Name.
  late final pulumi.Output<String> signinPolicy;

  /// The tenant to use instead of Common when logging into Active Directory, usually your B2C tenant domain.
  late final pulumi.Output<String> signinTenant;

  /// Signup Policy Name.
  late final pulumi.Output<String> signupPolicy;

  /// Creates a new [IdentityProviderAadb2c].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IdentityProviderAadb2c]. {@macro pulumi_apimanagement_identity_provider_aadb2c_identity_provider_aadb2c_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IdentityProviderAadb2c(
    String name, {
    IdentityProviderAadb2cArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:apimanagement/identityProviderAadb2c:IdentityProviderAadb2c',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allowedTenant = registerOutput<String>('allowedTenant');
    apiManagementName = registerOutput<String>('apiManagementName');
    authority = registerOutput<String>('authority');
    clientId = registerOutput<String>('clientId');
    clientLibrary = registerOutput<String?>('clientLibrary');
    clientSecret = registerOutput<String>('clientSecret');
    passwordResetPolicy = registerOutput<String?>('passwordResetPolicy');
    profileEditingPolicy = registerOutput<String?>('profileEditingPolicy');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    signinPolicy = registerOutput<String>('signinPolicy');
    signinTenant = registerOutput<String>('signinTenant');
    signupPolicy = registerOutput<String>('signupPolicy');
  }

  /// Gets an existing [IdentityProviderAadb2c] resource's state with the given [name] and [id].
  static IdentityProviderAadb2c get(
    String name,
    pulumi.Input<String> id, {
    IdentityProviderAadb2cState? state,
  }) {
    return IdentityProviderAadb2c._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IdentityProviderAadb2c._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:apimanagement/identityProviderAadb2c:IdentityProviderAadb2c',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    allowedTenant = registerOutput<String>('allowedTenant');
    apiManagementName = registerOutput<String>('apiManagementName');
    authority = registerOutput<String>('authority');
    clientId = registerOutput<String>('clientId');
    clientLibrary = registerOutput<String?>('clientLibrary');
    clientSecret = registerOutput<String>('clientSecret');
    passwordResetPolicy = registerOutput<String?>('passwordResetPolicy');
    profileEditingPolicy = registerOutput<String?>('profileEditingPolicy');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    signinPolicy = registerOutput<String>('signinPolicy');
    signinTenant = registerOutput<String>('signinTenant');
    signupPolicy = registerOutput<String>('signupPolicy');
  }
}
