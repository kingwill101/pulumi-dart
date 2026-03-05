import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_args.dart';
import 'service_delegation.dart';
import 'service_hostname_configuration.dart';
import 'service_identity.dart';
import 'service_protocols.dart';
import 'service_security.dart';
import 'service_sign_in.dart';
import 'service_sign_up.dart';
import 'service_state.dart';
import 'service_tenant_access.dart';
import 'service_virtual_network_configuration.dart';

/// Manages an API Management Service.
///
/// ## Disclaimers
///
/// &gt; **Note:** When creating a new API Management resource in version 3.0 of the AzureRM Provider and later, please be aware that the AzureRM Provider will now clean up any sample APIs and Products created by the Azure API during the creation of the API Management resource.
///
/// &gt; **Note:** Version 2.77 and later of the Azure Provider include a Feature Toggle which will purge an API Management resource on destroy, rather than the default soft-delete. See the Features block documentation for more information on Feature Toggles within Terraform.
///
/// &gt; **Note:** It's possible to define Custom Domains both within the `azure.apimanagement.Service` resource via the `hostname_configurations` block and by using the `azure.apimanagement.CustomDomain` resource. However it's not possible to use both methods to manage Custom Domains within an API Management Service, since there'll be conflicts.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
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
///     publisherEmail: "company@exmaple.com",
///     skuName: "Developer_1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_service = azure.apimanagement.Service("example",
///     name="example-apim",
///     location=example.location,
///     resource_group_name=example.name,
///     publisher_name="My Company",
///     publisher_email="company@exmaple.com",
///     sku_name="Developer_1")
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
///         PublisherEmail = "company@exmaple.com",
///         SkuName = "Developer_1",
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
/// 		_, err = apimanagement.NewService(ctx, "example", &apimanagement.ServiceArgs{
/// 			Name:              pulumi.String("example-apim"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			PublisherName:     pulumi.String("My Company"),
/// 			PublisherEmail:    pulumi.String("company@exmaple.com"),
/// 			SkuName:           pulumi.String("Developer_1"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.apimanagement.Service;
/// import com.pulumi.azure.apimanagement.ServiceArgs;
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
///             .publisherEmail("company@exmaple.com")
///             .skuName("Developer_1")
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
///       publisherEmail: company@exmaple.com
///       skuName: Developer_1
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.ApiManagement` - 2024-05-01, 2022-08-01
///
/// ## Import
///
/// API Management Services can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:apimanagement/service:Service example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.ApiManagement/service/instance1
/// ```
class Service extends pulumi.CustomResource {
  /// One or more `additional_location` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> additionalLocations;
  /// One or more `certificate` blocks (up to 10) as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> certificates;
  /// Enforce a client certificate to be presented on each request to the gateway? This is only supported when SKU type is `Consumption`.
  late final pulumi.Output<bool?> clientCertificateEnabled;
  /// A `delegation` block as defined below.
  late final pulumi.Output<ServiceDelegation> delegation;
  /// The URL for the Developer Portal associated with this API Management service.
  late final pulumi.Output<String> developerPortalUrl;
  /// Disable the gateway in main region? This is only supported when `additional_location` is set.
  late final pulumi.Output<bool?> gatewayDisabled;
  /// The URL of the Regional Gateway for the API Management Service in the specified region.
  late final pulumi.Output<String> gatewayRegionalUrl;
  /// The URL of the Gateway for the API Management Service.
  late final pulumi.Output<String> gatewayUrl;
  /// A `hostname_configuration` block as defined below.
  late final pulumi.Output<ServiceHostnameConfiguration> hostnameConfiguration;
  /// An `identity` block as defined below.
  late final pulumi.Output<ServiceIdentity?> identity;
  /// The Azure location where the API Management Service exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The URL for the Management API associated with this API Management service.
  late final pulumi.Output<String> managementApiUrl;
  /// The version which the control plane API calls to API Management service are limited with version equal to or newer than.
  late final pulumi.Output<String?> minApiVersion;
  /// The name of the API Management Service. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Email address from which the notification will be sent.
  late final pulumi.Output<String> notificationSenderEmail;
  /// The URL for the Publisher Portal associated with this API Management service.
  late final pulumi.Output<String> portalUrl;
  /// The Private IP addresses of the API Management Service. Available only when the API Manager instance is using Virtual Network mode.
  late final pulumi.Output<List<String>> privateIpAddresses;
  /// A `protocols` block as defined below.
  late final pulumi.Output<ServiceProtocols> protocols;
  /// ID of a standard SKU IPv4 Public IP.
  ///
  /// &gt; **Note:** Custom public IPs are only supported on the `Premium` and `Developer` tiers when deployed in a virtual network.
  late final pulumi.Output<String?> publicIpAddressId;
  /// Public Static Load Balanced IP addresses of the API Management service in the additional location. Available only for Basic, Standard and Premium SKU.
  late final pulumi.Output<List<String>> publicIpAddresses;
  /// Is public access to the service allowed? Defaults to `true`.
  ///
  /// &gt; **Note:** This option is applicable only to the Management plane, not the API gateway or Developer portal. It is required to be `true` on the creation.
  late final pulumi.Output<bool?> publicNetworkAccessEnabled;
  /// The email of publisher/company.
  late final pulumi.Output<String> publisherEmail;
  /// The name of publisher/company.
  late final pulumi.Output<String> publisherName;
  /// The name of the Resource Group in which the API Management Service should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The URL for the SCM (Source Code Management) Endpoint associated with this API Management service.
  late final pulumi.Output<String> scmUrl;
  /// A `security` block as defined below.
  late final pulumi.Output<ServiceSecurity> security;
  /// A `sign_in` block as defined below.
  late final pulumi.Output<ServiceSignIn> signIn;
  /// A `sign_up` block as defined below.
  late final pulumi.Output<ServiceSignUp> signUp;
  /// `sku_name` is a string consisting of two parts separated by an underscore(\_). The first part is the `name`, valid values include: `Consumption`, `Developer`, `Basic`, `BasicV2`, `Standard`, `StandardV2`, `Premium` and `PremiumV2`. The second part is the `capacity` (e.g. the number of deployed units of the `sku`), which must be a positive `integer` (e.g. `Developer_1`).
  ///
  /// &gt; **Note:** Premium SKUs are limited to a default maximum of 12 (i.e. `Premium_12`), this can, however, be increased via support request.
  ///
  /// &gt; **Note:** Consumption SKU capacity should be 0 (e.g. `Consumption_0`) as this tier includes automatic scaling.
  late final pulumi.Output<String> skuName;
  /// A mapping of tags assigned to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A `tenant_access` block as defined below.
  late final pulumi.Output<ServiceTenantAccess> tenantAccess;
  /// A `virtual_network_configuration` block as defined below. Required when `virtual_network_type` is `External` or `Internal`.
  late final pulumi.Output<ServiceVirtualNetworkConfiguration?> virtualNetworkConfiguration;
  /// The type of virtual network you want to use, valid values include: `None`, `External`, `Internal`. Defaults to `None`.
  ///
  /// &gt; **Note:** Please ensure that in the subnet, inbound port 3443 is open when `virtual_network_type` is `Internal` or `External`. Additionally, please ensure other necessary ports are open according to [api management network configuration](https://learn.microsoft.com/azure/api-management/virtual-network-reference).
  late final pulumi.Output<String?> virtualNetworkType;
  /// Specifies a list of Availability Zones in which this API Management service should be located.
  ///
  /// &gt; **Note:** Availability zones are only supported in the Premium tier.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [Service].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Service]. {@macro pulumi_apimanagement_service_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Service(
    String name, {
    ServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/service:Service',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalLocations = registerOutput<List<Map<String, dynamic>>?>('additionalLocations');
    certificates = registerOutput<List<Map<String, dynamic>>?>('certificates');
    clientCertificateEnabled = registerOutput<bool?>('clientCertificateEnabled');
    delegation = registerOutput<ServiceDelegation>('delegation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceDelegation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    developerPortalUrl = registerOutput<String>('developerPortalUrl');
    gatewayDisabled = registerOutput<bool?>('gatewayDisabled');
    gatewayRegionalUrl = registerOutput<String>('gatewayRegionalUrl');
    gatewayUrl = registerOutput<String>('gatewayUrl');
    hostnameConfiguration = registerOutput<ServiceHostnameConfiguration>('hostnameConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceHostnameConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<ServiceIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    managementApiUrl = registerOutput<String>('managementApiUrl');
    minApiVersion = registerOutput<String?>('minApiVersion');
    this.name = registerOutput<String>('name');
    notificationSenderEmail = registerOutput<String>('notificationSenderEmail');
    portalUrl = registerOutput<String>('portalUrl');
    privateIpAddresses = registerOutput<List<String>>('privateIpAddresses');
    protocols = registerOutput<ServiceProtocols>('protocols', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceProtocols.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    publicIpAddressId = registerOutput<String?>('publicIpAddressId');
    publicIpAddresses = registerOutput<List<String>>('publicIpAddresses');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    publisherEmail = registerOutput<String>('publisherEmail');
    publisherName = registerOutput<String>('publisherName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    scmUrl = registerOutput<String>('scmUrl');
    security = registerOutput<ServiceSecurity>('security', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceSecurity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    signIn = registerOutput<ServiceSignIn>('signIn', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceSignIn.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    signUp = registerOutput<ServiceSignUp>('signUp', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceSignUp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    skuName = registerOutput<String>('skuName');
    tags = registerOutput<Map<String, String>?>('tags');
    tenantAccess = registerOutput<ServiceTenantAccess>('tenantAccess', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceTenantAccess.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    virtualNetworkConfiguration = registerOutput<ServiceVirtualNetworkConfiguration?>('virtualNetworkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceVirtualNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    virtualNetworkType = registerOutput<String?>('virtualNetworkType');
    zones = registerOutput<List<String>?>('zones');
  }

  /// Gets an existing [Service] resource's state with the given [name] and [id].
  static Service get(
    String name,
    pulumi.Input<String> id, {
    ServiceState? state,
  }) {
    return Service._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Service._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:apimanagement/service:Service',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalLocations = registerOutput<List<Map<String, dynamic>>?>('additionalLocations');
    certificates = registerOutput<List<Map<String, dynamic>>?>('certificates');
    clientCertificateEnabled = registerOutput<bool?>('clientCertificateEnabled');
    delegation = registerOutput<ServiceDelegation>('delegation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceDelegation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    developerPortalUrl = registerOutput<String>('developerPortalUrl');
    gatewayDisabled = registerOutput<bool?>('gatewayDisabled');
    gatewayRegionalUrl = registerOutput<String>('gatewayRegionalUrl');
    gatewayUrl = registerOutput<String>('gatewayUrl');
    hostnameConfiguration = registerOutput<ServiceHostnameConfiguration>('hostnameConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceHostnameConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identity = registerOutput<ServiceIdentity?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    managementApiUrl = registerOutput<String>('managementApiUrl');
    minApiVersion = registerOutput<String?>('minApiVersion');
    this.name = registerOutput<String>('name');
    notificationSenderEmail = registerOutput<String>('notificationSenderEmail');
    portalUrl = registerOutput<String>('portalUrl');
    privateIpAddresses = registerOutput<List<String>>('privateIpAddresses');
    protocols = registerOutput<ServiceProtocols>('protocols', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceProtocols.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    publicIpAddressId = registerOutput<String?>('publicIpAddressId');
    publicIpAddresses = registerOutput<List<String>>('publicIpAddresses');
    publicNetworkAccessEnabled = registerOutput<bool?>('publicNetworkAccessEnabled');
    publisherEmail = registerOutput<String>('publisherEmail');
    publisherName = registerOutput<String>('publisherName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    scmUrl = registerOutput<String>('scmUrl');
    security = registerOutput<ServiceSecurity>('security', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceSecurity.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    signIn = registerOutput<ServiceSignIn>('signIn', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceSignIn.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    signUp = registerOutput<ServiceSignUp>('signUp', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceSignUp.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    skuName = registerOutput<String>('skuName');
    tags = registerOutput<Map<String, String>?>('tags');
    tenantAccess = registerOutput<ServiceTenantAccess>('tenantAccess', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceTenantAccess.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    virtualNetworkConfiguration = registerOutput<ServiceVirtualNetworkConfiguration?>('virtualNetworkConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ServiceVirtualNetworkConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    virtualNetworkType = registerOutput<String?>('virtualNetworkType');
    zones = registerOutput<List<String>?>('zones');
  }
}
