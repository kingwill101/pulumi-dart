import 'package:pulumi/pulumi.dart' as pulumi;
import 'landing_zone_account_operation_args.dart';
import 'landing_zone_account_resource_properties_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// The Landing zone account resource type. A Landing zone account is the container for configuring, deploying and managing multiple landing zones.
///
/// Uses Azure REST API version 2025-02-27-preview. In version 2.x of the Azure Native provider, it used API version 2025-02-27-preview.
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:sovereign:LandingZoneAccountOperation lza-RemApiExample /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sovereign/landingZoneAccounts/{landingZoneAccountName}
/// ```
class LandingZoneAccountOperation extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The managed service identities assigned to this resource.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The resource-specific properties for this resource.
  late final pulumi.Output<LandingZoneAccountResourcePropertiesResponse>
  properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [LandingZoneAccountOperation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LandingZoneAccountOperation]. {@macro pulumi_sovereign_landing_zone_account_operation_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LandingZoneAccountOperation(
    String name, {
    LandingZoneAccountOperationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:sovereign:LandingZoneAccountOperation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<LandingZoneAccountResourcePropertiesResponse>(
      'properties',
    );
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
