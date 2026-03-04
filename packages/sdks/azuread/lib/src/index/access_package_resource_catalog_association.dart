import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_package_resource_catalog_association_args.dart';
import 'access_package_resource_catalog_association_state.dart';

/// Manages the resources added to access package catalogs within Identity Governance in Azure Active Directory.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires the following application role: `EntitlementManagement.ReadWrite.All`.
///
/// When authenticated with a user principal, this resource requires one of the following directory roles: `Catalog owner` or `Global Administrator`
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azuread.Group("example", {
///     displayName: "example-group",
///     securityEnabled: true,
/// });
/// const exampleAccessPackageCatalog = new azuread.AccessPackageCatalog("example", {
///     displayName: "example-catalog",
///     description: "Example catalog",
/// });
/// const exampleAccessPackageResourceCatalogAssociation = new azuread.AccessPackageResourceCatalogAssociation("example", {
///     catalogId: exampleCatalog.id,
///     resourceOriginId: exampleGroup.objectId,
///     resourceOriginSystem: "AadGroup",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.Group("example",
///     display_name="example-group",
///     security_enabled=True)
/// example_access_package_catalog = azuread.AccessPackageCatalog("example",
///     display_name="example-catalog",
///     description="Example catalog")
/// example_access_package_resource_catalog_association = azuread.AccessPackageResourceCatalogAssociation("example",
///     catalog_id=example_catalog["id"],
///     resource_origin_id=example_group["objectId"],
///     resource_origin_system="AadGroup")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AzureAD.Group("example", new()
///     {
///         DisplayName = "example-group",
///         SecurityEnabled = true,
///     });
///
///     var exampleAccessPackageCatalog = new AzureAD.AccessPackageCatalog("example", new()
///     {
///         DisplayName = "example-catalog",
///         Description = "Example catalog",
///     });
///
///     var exampleAccessPackageResourceCatalogAssociation = new AzureAD.AccessPackageResourceCatalogAssociation("example", new()
///     {
///         CatalogId = exampleCatalog.Id,
///         ResourceOriginId = exampleGroup.ObjectId,
///         ResourceOriginSystem = "AadGroup",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := azuread.NewGroup(ctx, "example", &azuread.GroupArgs{
/// 			DisplayName:     pulumi.String("example-group"),
/// 			SecurityEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewAccessPackageCatalog(ctx, "example", &azuread.AccessPackageCatalogArgs{
/// 			DisplayName: pulumi.String("example-catalog"),
/// 			Description: pulumi.String("Example catalog"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewAccessPackageResourceCatalogAssociation(ctx, "example", &azuread.AccessPackageResourceCatalogAssociationArgs{
/// 			CatalogId:            pulumi.Any(exampleCatalog.Id),
/// 			ResourceOriginId:     pulumi.Any(exampleGroup.ObjectId),
/// 			ResourceOriginSystem: pulumi.String("AadGroup"),
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
/// import com.pulumi.azuread.Group;
/// import com.pulumi.azuread.GroupArgs;
/// import com.pulumi.azuread.AccessPackageCatalog;
/// import com.pulumi.azuread.AccessPackageCatalogArgs;
/// import com.pulumi.azuread.AccessPackageResourceCatalogAssociation;
/// import com.pulumi.azuread.AccessPackageResourceCatalogAssociationArgs;
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
///         var example = new Group("example", GroupArgs.builder()
///             .displayName("example-group")
///             .securityEnabled(true)
///             .build());
///
///         var exampleAccessPackageCatalog = new AccessPackageCatalog("exampleAccessPackageCatalog", AccessPackageCatalogArgs.builder()
///             .displayName("example-catalog")
///             .description("Example catalog")
///             .build());
///
///         var exampleAccessPackageResourceCatalogAssociation = new AccessPackageResourceCatalogAssociation("exampleAccessPackageResourceCatalogAssociation", AccessPackageResourceCatalogAssociationArgs.builder()
///             .catalogId(exampleCatalog.id())
///             .resourceOriginId(exampleGroup.objectId())
///             .resourceOriginSystem("AadGroup")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:Group
///     properties:
///       displayName: example-group
///       securityEnabled: true
///   exampleAccessPackageCatalog:
///     type: azuread:AccessPackageCatalog
///     name: example
///     properties:
///       displayName: example-catalog
///       description: Example catalog
///   exampleAccessPackageResourceCatalogAssociation:
///     type: azuread:AccessPackageResourceCatalogAssociation
///     name: example
///     properties:
///       catalogId: ${exampleCatalog.id}
///       resourceOriginId: ${exampleGroup.objectId}
///       resourceOriginSystem: AadGroup
/// ```
///
///
/// ## Import
///
/// The resource and catalog association can be imported using the catalog ID and the resource origin ID, e.g.
///
/// ```sh
/// $ pulumi import azuread:index/accessPackageResourceCatalogAssociation:AccessPackageResourceCatalogAssociation example 00000000-0000-0000-0000-000000000000/11111111-1111-1111-1111-111111111111
/// ```
///
/// &gt; This ID format is unique to Terraform and is composed of the Catalog ID and the Resource Origin ID in the format `{CatalogID}/{ResourceOriginID}`.
class AccessPackageResourceCatalogAssociation extends pulumi.CustomResource {
  /// The unique ID of the access package catalog. Changing this forces a new resource to be created.
  late final pulumi.Output<String> catalogId;

  /// The unique identifier of the resource in the origin system. In the case of an Azure AD group, this is the identifier of the group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceOriginId;

  /// The type of the resource in the origin system, such as `SharePointOnline`, `AadApplication` or `AadGroup`. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceOriginSystem;

  /// Creates a new [AccessPackageResourceCatalogAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessPackageResourceCatalogAssociation]. {@macro pulumi_index_access_package_resource_catalog_association_access_package_resource_catalog_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessPackageResourceCatalogAssociation(
    String name, {
    AccessPackageResourceCatalogAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azuread:index/accessPackageResourceCatalogAssociation:AccessPackageResourceCatalogAssociation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    catalogId = registerOutput<String>('catalogId');
    resourceOriginId = registerOutput<String>('resourceOriginId');
    resourceOriginSystem = registerOutput<String>('resourceOriginSystem');
  }

  /// Gets an existing [AccessPackageResourceCatalogAssociation] resource's state with the given [name] and [id].
  static AccessPackageResourceCatalogAssociation get(
    String name,
    pulumi.Input<String> id, {
    AccessPackageResourceCatalogAssociationState? state,
  }) {
    return AccessPackageResourceCatalogAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccessPackageResourceCatalogAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azuread:index/accessPackageResourceCatalogAssociation:AccessPackageResourceCatalogAssociation',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    catalogId = registerOutput<String>('catalogId');
    resourceOriginId = registerOutput<String>('resourceOriginId');
    resourceOriginSystem = registerOutput<String>('resourceOriginSystem');
  }
}
