import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_package_resource_package_association_args.dart';
import 'access_package_resource_package_association_state.dart';

/// Manages the resources added to access packages within Identity Governance in Azure Active Directory.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires the following application role: `EntitlementManagement.ReadWrite.All`.
///
/// When authenticated with a user principal, this resource requires one of the following directory roles: `Catalog owner`, `Access package manager` or `Global Administrator`.
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
/// const exampleAccessPackage = new azuread.AccessPackage("example", {
///     displayName: "example-package",
///     description: "Example Package",
///     catalogId: exampleCatalog.id,
/// });
/// const exampleAccessPackageResourcePackageAssociation = new azuread.AccessPackageResourcePackageAssociation("example", {
///     accessPackageId: exampleAccessPackage.id,
///     catalogResourceAssociationId: exampleAccessPackageResourceCatalogAssociation.id,
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
/// example_access_package = azuread.AccessPackage("example",
///     display_name="example-package",
///     description="Example Package",
///     catalog_id=example_catalog["id"])
/// example_access_package_resource_package_association = azuread.AccessPackageResourcePackageAssociation("example",
///     access_package_id=example_access_package.id,
///     catalog_resource_association_id=example_access_package_resource_catalog_association.id)
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
///     var exampleAccessPackage = new AzureAD.AccessPackage("example", new()
///     {
///         DisplayName = "example-package",
///         Description = "Example Package",
///         CatalogId = exampleCatalog.Id,
///     });
///
///     var exampleAccessPackageResourcePackageAssociation = new AzureAD.AccessPackageResourcePackageAssociation("example", new()
///     {
///         AccessPackageId = exampleAccessPackage.Id,
///         CatalogResourceAssociationId = exampleAccessPackageResourceCatalogAssociation.Id,
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
/// 		exampleAccessPackageResourceCatalogAssociation, err := azuread.NewAccessPackageResourceCatalogAssociation(ctx, "example", &azuread.AccessPackageResourceCatalogAssociationArgs{
/// 			CatalogId:            pulumi.Any(exampleCatalog.Id),
/// 			ResourceOriginId:     pulumi.Any(exampleGroup.ObjectId),
/// 			ResourceOriginSystem: pulumi.String("AadGroup"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccessPackage, err := azuread.NewAccessPackage(ctx, "example", &azuread.AccessPackageArgs{
/// 			DisplayName: pulumi.String("example-package"),
/// 			Description: pulumi.String("Example Package"),
/// 			CatalogId:   pulumi.Any(exampleCatalog.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewAccessPackageResourcePackageAssociation(ctx, "example", &azuread.AccessPackageResourcePackageAssociationArgs{
/// 			AccessPackageId:              exampleAccessPackage.ID(),
/// 			CatalogResourceAssociationId: exampleAccessPackageResourceCatalogAssociation.ID(),
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
/// import com.pulumi.azuread.AccessPackage;
/// import com.pulumi.azuread.AccessPackageArgs;
/// import com.pulumi.azuread.AccessPackageResourcePackageAssociation;
/// import com.pulumi.azuread.AccessPackageResourcePackageAssociationArgs;
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
///         var exampleAccessPackage = new AccessPackage("exampleAccessPackage", AccessPackageArgs.builder()
///             .displayName("example-package")
///             .description("Example Package")
///             .catalogId(exampleCatalog.id())
///             .build());
///
///         var exampleAccessPackageResourcePackageAssociation = new AccessPackageResourcePackageAssociation("exampleAccessPackageResourcePackageAssociation", AccessPackageResourcePackageAssociationArgs.builder()
///             .accessPackageId(exampleAccessPackage.id())
///             .catalogResourceAssociationId(exampleAccessPackageResourceCatalogAssociation.id())
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
///   exampleAccessPackage:
///     type: azuread:AccessPackage
///     name: example
///     properties:
///       displayName: example-package
///       description: Example Package
///       catalogId: ${exampleCatalog.id}
///   exampleAccessPackageResourcePackageAssociation:
///     type: azuread:AccessPackageResourcePackageAssociation
///     name: example
///     properties:
///       accessPackageId: ${exampleAccessPackage.id}
///       catalogResourceAssociationId: ${exampleAccessPackageResourceCatalogAssociation.id}
/// ```
///
///
/// ## Import
///
/// The resource and catalog association can be imported using the access package ID, the access package ResourceRoleScope, the resource origin ID, and the access type, e.g.
///
/// ```sh
/// $ pulumi import azuread:index/accessPackageResourcePackageAssociation:AccessPackageResourcePackageAssociation example 00000000-0000-0000-0000-000000000000/11111111-1111-1111-1111-111111111111_22222222-2222-2222-2222-22222222/33333333-3333-3333-3333-33333333/Member
/// ```
///
/// &gt; This ID format is unique to Terraform and is composed of the Access Package ID, the access package ResourceRoleScope (in the format Role_Scope), the Resource Origin ID, and the Access Type, in the format `{AccessPackageID}/{ResourceRoleScope}/{ResourceOriginID}/{AccessType}`.
class AccessPackageResourcePackageAssociation extends pulumi.CustomResource {
  /// The ID of access package this resource association is configured to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> accessPackageId;
  /// The role of access type to the specified resource. Valid values are `Member`, or `Owner` The default is `Member`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> accessType;
  /// The ID of the catalog association from the `azuread.AccessPackageResourceCatalogAssociation` resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> catalogResourceAssociationId;

  /// Creates a new [AccessPackageResourcePackageAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessPackageResourcePackageAssociation]. {@macro pulumi_index_access_package_resource_package_association_access_package_resource_package_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessPackageResourcePackageAssociation(
    String name, {
    AccessPackageResourcePackageAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/accessPackageResourcePackageAssociation:AccessPackageResourcePackageAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessPackageId = registerOutput<String>('accessPackageId');
    accessType = registerOutput<String?>('accessType');
    catalogResourceAssociationId = registerOutput<String>('catalogResourceAssociationId');
  }

  /// Gets an existing [AccessPackageResourcePackageAssociation] resource's state with the given [name] and [id].
  static AccessPackageResourcePackageAssociation get(
    String name,
    pulumi.Input<String> id, {
    AccessPackageResourcePackageAssociationState? state,
  }) {
    return AccessPackageResourcePackageAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccessPackageResourcePackageAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/accessPackageResourcePackageAssociation:AccessPackageResourcePackageAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessPackageId = registerOutput<String>('accessPackageId');
    accessType = registerOutput<String?>('accessType');
    catalogResourceAssociationId = registerOutput<String>('catalogResourceAssociationId');
  }
}
