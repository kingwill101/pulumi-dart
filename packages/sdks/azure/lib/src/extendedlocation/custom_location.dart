import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_location_args.dart';
import 'custom_location_authentication.dart';
import 'custom_location_state.dart';

/// Manages a Custom Location within an Extended Location.
///
/// &gt; **Note:** Installing and configuring the Azure Arc Agent on your Kubernetes Cluster to establish connectivity is outside the scope of this document. For more details refer to [Deploy agents to your cluster](https://learn.microsoft.com/en-us/azure/azure-arc/kubernetes/conceptual-agent-overview#deploy-agents-to-your-cluster) and [Connect an existing Kubernetes Cluster](https://learn.microsoft.com/en-us/azure/azure-arc/kubernetes/quickstart-connect-cluster?tabs=azure-cli#connect-an-existing-kubernetes-cluster). If you encounter issues connecting your Kubernetes Cluster to Azure Arc, we'd recommend opening a ticket with Microsoft Support.
///
/// ## Import
///
/// Custom Locations can be imported using the resource id, e.g.
///
/// ```sh
/// $ pulumi import azure:extendedlocation/customLocation:CustomLocation example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-resources/providers/Microsoft.ExtendedLocation/customLocations/example-custom-location
/// ```
class CustomLocation extends pulumi.CustomResource {
  /// An `authentication` block as defined below.
  late final pulumi.Output<CustomLocationAuthentication?> authentication;
  /// Specifies the list of Cluster Extension IDs.
  late final pulumi.Output<List<String>> clusterExtensionIds;
  /// Specifies the display name of the Custom Location.
  late final pulumi.Output<String?> displayName;
  /// Specifies the host resource ID. Changing this forces a new resource to be created.
  late final pulumi.Output<String> hostResourceId;
  /// Specifies the host type of the Custom Location. The only possible values is `KubernetesCluster`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> hostType;
  /// Specifies the Azure location where the Custom Location should exist. Changing this forces a new Custom Location to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name which should be used for this Custom Location. Changing this forces a new Custom Location to be created.
  late final pulumi.Output<String> name;
  /// Specifies the namespace of the Custom Location. Changing this forces a new Custom Location to be created.
  late final pulumi.Output<String> namespace;
  /// Specifies the name of the Resource Group where the Custom Location should exist. Changing this forces a new Custom Location to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Creates a new [CustomLocation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomLocation]. {@macro pulumi_extendedlocation_custom_location_custom_location_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomLocation(
    String name, {
    CustomLocationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:extendedlocation/customLocation:CustomLocation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authentication = registerOutput<CustomLocationAuthentication?>('authentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomLocationAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clusterExtensionIds = registerOutput<List<String>>('clusterExtensionIds');
    displayName = registerOutput<String?>('displayName');
    hostResourceId = registerOutput<String>('hostResourceId');
    hostType = registerOutput<String?>('hostType');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    namespace = registerOutput<String>('namespace');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }

  /// Gets an existing [CustomLocation] resource's state with the given [name] and [id].
  static CustomLocation get(
    String name,
    pulumi.Input<String> id, {
    CustomLocationState? state,
  }) {
    return CustomLocation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CustomLocation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:extendedlocation/customLocation:CustomLocation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    authentication = registerOutput<CustomLocationAuthentication?>('authentication', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CustomLocationAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    clusterExtensionIds = registerOutput<List<String>>('clusterExtensionIds');
    displayName = registerOutput<String?>('displayName');
    hostResourceId = registerOutput<String>('hostResourceId');
    hostType = registerOutput<String?>('hostType');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    namespace = registerOutput<String>('namespace');
    resourceGroupName = registerOutput<String>('resourceGroupName');
  }
}
