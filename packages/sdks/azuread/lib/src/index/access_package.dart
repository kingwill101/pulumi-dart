import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_package_args.dart';
import 'access_package_state.dart';

/// Manages an Access Package within Identity Governance in Azure Active Directory.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires the following application role: `EntitlementManagement.ReadWrite.All`.
///
/// When authenticated with a user principal, this resource requires one of the following directory roles: `Catalog owner`, `Access package manager` or `Global Administrator`
///
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = new azuread.AccessPackageCatalog("example", {
///     displayName: "example-catalog",
///     description: "Example catalog",
/// });
/// const exampleAccessPackage = new azuread.AccessPackage("example", {
///     catalogId: example.id,
///     displayName: "access-package",
///     description: "Access Package",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.AccessPackageCatalog("example",
///     display_name="example-catalog",
///     description="Example catalog")
/// example_access_package = azuread.AccessPackage("example",
///     catalog_id=example.id,
///     display_name="access-package",
///     description="Access Package")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AzureAD.AccessPackageCatalog("example", new()
///     {
///         DisplayName = "example-catalog",
///         Description = "Example catalog",
///     });
///
///     var exampleAccessPackage = new AzureAD.AccessPackage("example", new()
///     {
///         CatalogId = example.Id,
///         DisplayName = "access-package",
///         Description = "Access Package",
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
/// 		example, err := azuread.NewAccessPackageCatalog(ctx, "example", &azuread.AccessPackageCatalogArgs{
/// 			DisplayName: pulumi.String("example-catalog"),
/// 			Description: pulumi.String("Example catalog"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewAccessPackage(ctx, "example", &azuread.AccessPackageArgs{
/// 			CatalogId:   example.ID(),
/// 			DisplayName: pulumi.String("access-package"),
/// 			Description: pulumi.String("Access Package"),
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
/// import com.pulumi.azuread.AccessPackageCatalog;
/// import com.pulumi.azuread.AccessPackageCatalogArgs;
/// import com.pulumi.azuread.AccessPackage;
/// import com.pulumi.azuread.AccessPackageArgs;
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
///         var example = new AccessPackageCatalog("example", AccessPackageCatalogArgs.builder()
///             .displayName("example-catalog")
///             .description("Example catalog")
///             .build());
///
///         var exampleAccessPackage = new AccessPackage("exampleAccessPackage", AccessPackageArgs.builder()
///             .catalogId(example.id())
///             .displayName("access-package")
///             .description("Access Package")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:AccessPackageCatalog
///     properties:
///       displayName: example-catalog
///       description: Example catalog
///   exampleAccessPackage:
///     type: azuread:AccessPackage
///     name: example
///     properties:
///       catalogId: ${example.id}
///       displayName: access-package
///       description: Access Package
/// ```
///
///
/// ## Import
///
/// Access Packages can be imported using the `id`, e.g.
///
/// ```sh
/// $ pulumi import azuread:index/accessPackage:AccessPackage example_package 00000000-0000-0000-0000-000000000000
/// ```
class AccessPackage extends pulumi.CustomResource {
  /// The ID of the Catalog this access package will be created in.
  late final pulumi.Output<String> catalogId;
  /// The description of the access package.
  late final pulumi.Output<String> description;
  /// The display name of the access package.
  late final pulumi.Output<String> displayName;
  /// Whether the access package is hidden from the requestor.
  late final pulumi.Output<bool?> hidden;

  /// Creates a new [AccessPackage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessPackage]. {@macro pulumi_index_access_package_access_package_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessPackage(
    String name, {
    AccessPackageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/accessPackage:AccessPackage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.catalogId = registerOutput<String>('catalogId');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.hidden = registerOutput<bool?>('hidden');
  }

  /// Gets an existing [AccessPackage] resource's state with the given [name] and [id].
  static AccessPackage get(
    String name,
    pulumi.Input<String> id, {
    AccessPackageState? state,
  }) {
    return AccessPackage._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccessPackage._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/accessPackage:AccessPackage',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.catalogId = registerOutput<String>('catalogId');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.hidden = registerOutput<bool?>('hidden');
  }
}
