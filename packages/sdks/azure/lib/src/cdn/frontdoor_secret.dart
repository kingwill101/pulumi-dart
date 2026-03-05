import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_secret_args.dart';
import 'frontdoor_secret_secret.dart';
import 'frontdoor_secret_state.dart';

/// Manages a Front Door (standard/premium) Secret.
///
/// ## Required Key Vault Permissions
///
/// !&gt; **Note:** You must add an `Access Policy` to your `azure.keyvault.KeyVault` for the `Microsoft.AzurefrontDoor-Cdn` Enterprise Application Object ID.
///
/// This can be created by running Az Powershell command like this:
///
/// ```New-AzADServicePrincipal -ApplicationId "00000000-0000-0000-0000-000000000000"```
///
/// | Object ID                                | Key Permissions | Secret Permissions   | Certificate Permissions                       |
/// |:-----------------------------------------|:---------------:|:--------------------:|:---------------------------------------------:|
/// | `Microsoft.Azure.Cdn` Object ID          | -               | **Get**              | -                                             |
/// | Your Personal AAD Object ID              | -               | **Get** and **List** | **Get**, **List**, **Purge** and **Recover**  |
/// | Terraform Service Principal              | -               | **Get**              | **Get**, **Import**, **Delete** and **Purge** |
///
/// -> **Note:** You only need to add the `Access Policy` for your personal AAD Object ID if you are planning to view the `secrets` via the Azure Portal.
///
/// ## Import
///
/// Front Door Secrets can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cdn/frontdoorSecret:FrontdoorSecret example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Cdn/profiles/profile1/secrets/secrets1
/// ```
class FrontdoorSecret extends pulumi.CustomResource {
  /// The Resource ID of the Front Door Profile. Changing this forces a new Front Door Secret to be created.
  late final pulumi.Output<String> cdnFrontdoorProfileId;
  /// The name of the Front Door Profile containing this Front Door Secret.
  late final pulumi.Output<String> cdnFrontdoorProfileName;
  /// The name which should be used for this Front Door Secret. Possible values must start with a letter or a number, only contain letters, numbers and hyphens and have a length of between 2 and 260 characters. Changing this forces a new Front Door Secret to be created.
  late final pulumi.Output<String> name;
  /// A `secret` block as defined below. Changing this forces a new Front Door Secret to be created.
  late final pulumi.Output<FrontdoorSecretSecret> secret;

  /// Creates a new [FrontdoorSecret].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FrontdoorSecret]. {@macro pulumi_cdn_frontdoor_secret_frontdoor_secret_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FrontdoorSecret(
    String name, {
    FrontdoorSecretArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cdn/frontdoorSecret:FrontdoorSecret',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cdnFrontdoorProfileId = registerOutput<String>('cdnFrontdoorProfileId');
    cdnFrontdoorProfileName = registerOutput<String>('cdnFrontdoorProfileName');
    this.name = registerOutput<String>('name');
    secret = registerOutput<FrontdoorSecretSecret>('secret', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FrontdoorSecretSecret.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [FrontdoorSecret] resource's state with the given [name] and [id].
  static FrontdoorSecret get(
    String name,
    pulumi.Input<String> id, {
    FrontdoorSecretState? state,
  }) {
    return FrontdoorSecret._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FrontdoorSecret._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cdn/frontdoorSecret:FrontdoorSecret',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cdnFrontdoorProfileId = registerOutput<String>('cdnFrontdoorProfileId');
    cdnFrontdoorProfileName = registerOutput<String>('cdnFrontdoorProfileName');
    this.name = registerOutput<String>('name');
    secret = registerOutput<FrontdoorSecretSecret>('secret', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FrontdoorSecretSecret.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
