import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_sku_response.dart';
import 'workspace_collection_args.dart';

/// Uses Azure REST API version 2016-01-29. In version 2.x of the Azure Native provider, it used API version 2016-01-29.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:powerbi:WorkspaceCollection myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.PowerBI/workspaceCollections/{workspaceCollectionName}
/// ```
class WorkspaceCollection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Azure location
  late final pulumi.Output<String?> location;
  /// Workspace collection name
  late final pulumi.Output<String?> name;
  /// Properties
  late final pulumi.Output<dynamic> properties;
  late final pulumi.Output<AzureSkuResponse?> sku;
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type
  late final pulumi.Output<String?> type;

  /// Creates a new [WorkspaceCollection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WorkspaceCollection]. {@macro pulumi_powerbi_workspace_collection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WorkspaceCollection(
    String name, {
    WorkspaceCollectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:powerbi:WorkspaceCollection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String?>('name');
    properties = registerOutput<dynamic>('properties');
    sku = registerOutput<AzureSkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String?>('type');
  }

  /// Creates a typed reference to an existing [WorkspaceCollection] resource.
  WorkspaceCollection.reference(String urn)
    : super(
        'azure-native:powerbi:WorkspaceCollection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String?>('name');
    properties = registerOutput<dynamic>('properties');
    sku = registerOutput<AzureSkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AzureSkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    type = registerOutput<String?>('type');
  }
}
