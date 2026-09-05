import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_address_args.dart';
import 'nat_address_state.dart';

/// Apigee NAT (network address translation) address. A NAT address is a static external IP address used for Internet egress traffic. This is not avaible for Apigee hybrid.
///
///
/// To get more information about NatAddress, see:
///
/// * [API documentation](https://cloud.google.com/apigee/docs/reference/apis/apigee/rest/v1/organizations.instances.natAddresses)
/// * How-to Guides
/// * [Provisioning NAT IPs](https://cloud.google.com/apigee/docs/api-platform/security/nat-provisioning)
///
/// ## Example Usage
///
/// ### Apigee Nat Address Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const current = gcp.organizations.getClientConfig({});
/// const apigeeNetwork = new gcp.compute.Network("apigee_network", {name: "apigee-network"});
/// const apigeeRange = new gcp.compute.GlobalAddress("apigee_range", {
///     name: "apigee-range",
///     purpose: "VPC_PEERING",
///     addressType: "INTERNAL",
///     prefixLength: 21,
///     network: apigeeNetwork.id,
/// });
/// const apigeeVpcConnection = new gcp.servicenetworking.Connection("apigee_vpc_connection", {
///     network: apigeeNetwork.id,
///     service: "servicenetworking.googleapis.com",
///     reservedPeeringRanges: [apigeeRange.name],
/// });
/// const apigeeKeyring = new gcp.kms.KeyRing("apigee_keyring", {
///     name: "apigee-keyring",
///     location: "us-central1",
/// });
/// const apigeeKey = new gcp.kms.CryptoKey("apigee_key", {
///     name: "apigee-key",
///     keyRing: apigeeKeyring.id,
/// });
/// const apigeeSa = new gcp.projects.ServiceIdentity("apigee_sa", {
///     project: project.projectId,
///     service: apigee.service,
/// });
/// const apigeeSaKeyuser = new gcp.kms.CryptoKeyIAMMember("apigee_sa_keyuser", {
///     cryptoKeyId: apigeeKey.id,
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member: apigeeSa.member,
/// });
/// const apigeeOrg = new gcp.apigee.Organization("apigee_org", {
///     analyticsRegion: "us-central1",
///     displayName: "apigee-org",
///     description: "Terraform-provisioned Apigee Org.",
///     projectId: current.then(current => current.project),
///     authorizedNetwork: apigeeNetwork.id,
///     runtimeDatabaseEncryptionKeyName: apigeeKey.id,
/// }, {
///     dependsOn: [
///         apigeeVpcConnection,
///         apigeeSaKeyuser,
///     ],
/// });
/// const apigeeInstance = new gcp.apigee.Instance("apigee_instance", {
///     name: "apigee-instance",
///     location: "us-central1",
///     description: "Terraform-managed Apigee Runtime Instance",
///     displayName: "apigee-instance",
///     orgId: apigeeOrg.id,
///     diskEncryptionKeyName: apigeeKey.id,
/// });
/// const apigee_nat = new gcp.apigee.NatAddress("apigee-nat", {
///     name: "my-nat-address",
///     instanceId: apigeeInstance.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// current = gcp.organizations.get_client_config()
/// apigee_network = gcp.compute.Network("apigee_network", name="apigee-network")
/// apigee_range = gcp.compute.GlobalAddress("apigee_range",
///     name="apigee-range",
///     purpose="VPC_PEERING",
///     address_type="INTERNAL",
///     prefix_length=21,
///     network=apigee_network.id)
/// apigee_vpc_connection = gcp.servicenetworking.Connection("apigee_vpc_connection",
///     network=apigee_network.id,
///     service="servicenetworking.googleapis.com",
///     reserved_peering_ranges=[apigee_range.name])
/// apigee_keyring = gcp.kms.KeyRing("apigee_keyring",
///     name="apigee-keyring",
///     location="us-central1")
/// apigee_key = gcp.kms.CryptoKey("apigee_key",
///     name="apigee-key",
///     key_ring=apigee_keyring.id)
/// apigee_sa = gcp.projects.ServiceIdentity("apigee_sa",
///     project=project["projectId"],
///     service=apigee["service"])
/// apigee_sa_keyuser = gcp.kms.CryptoKeyIAMMember("apigee_sa_keyuser",
///     crypto_key_id=apigee_key.id,
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member=apigee_sa.member)
/// apigee_org = gcp.apigee.Organization("apigee_org",
///     analytics_region="us-central1",
///     display_name="apigee-org",
///     description="Terraform-provisioned Apigee Org.",
///     project_id=current.project,
///     authorized_network=apigee_network.id,
///     runtime_database_encryption_key_name=apigee_key.id,
///     opts = pulumi.ResourceOptions(depends_on=[
///             apigee_vpc_connection,
///             apigee_sa_keyuser,
///         ]))
/// apigee_instance = gcp.apigee.Instance("apigee_instance",
///     name="apigee-instance",
///     location="us-central1",
///     description="Terraform-managed Apigee Runtime Instance",
///     display_name="apigee-instance",
///     org_id=apigee_org.id,
///     disk_encryption_key_name=apigee_key.id)
/// apigee_nat = gcp.apigee.NatAddress("apigee-nat",
///     name="my-nat-address",
///     instance_id=apigee_instance.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Gcp.Organizations.GetClientConfig.Invoke();
///
///     var apigeeNetwork = new Gcp.Compute.Network("apigee_network", new()
///     {
///         Name = "apigee-network",
///     });
///
///     var apigeeRange = new Gcp.Compute.GlobalAddress("apigee_range", new()
///     {
///         Name = "apigee-range",
///         Purpose = "VPC_PEERING",
///         AddressType = "INTERNAL",
///         PrefixLength = 21,
///         Network = apigeeNetwork.Id,
///     });
///
///     var apigeeVpcConnection = new Gcp.ServiceNetworking.Connection("apigee_vpc_connection", new()
///     {
///         Network = apigeeNetwork.Id,
///         Service = "servicenetworking.googleapis.com",
///         ReservedPeeringRanges = new[]
///         {
///             apigeeRange.Name,
///         },
///     });
///
///     var apigeeKeyring = new Gcp.Kms.KeyRing("apigee_keyring", new()
///     {
///         Name = "apigee-keyring",
///         Location = "us-central1",
///     });
///
///     var apigeeKey = new Gcp.Kms.CryptoKey("apigee_key", new()
///     {
///         Name = "apigee-key",
///         KeyRing = apigeeKeyring.Id,
///     });
///
///     var apigeeSa = new Gcp.Projects.ServiceIdentity("apigee_sa", new()
///     {
///         Project = project.ProjectId,
///         Service = apigee.Service,
///     });
///
///     var apigeeSaKeyuser = new Gcp.Kms.CryptoKeyIAMMember("apigee_sa_keyuser", new()
///     {
///         CryptoKeyId = apigeeKey.Id,
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Member = apigeeSa.Member,
///     });
///
///     var apigeeOrg = new Gcp.Apigee.Organization("apigee_org", new()
///     {
///         AnalyticsRegion = "us-central1",
///         DisplayName = "apigee-org",
///         Description = "Terraform-provisioned Apigee Org.",
///         ProjectId = current.Apply(getClientConfigResult => getClientConfigResult.Project),
///         AuthorizedNetwork = apigeeNetwork.Id,
///         RuntimeDatabaseEncryptionKeyName = apigeeKey.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             apigeeVpcConnection,
///             apigeeSaKeyuser,
///         },
///     });
///
///     var apigeeInstance = new Gcp.Apigee.Instance("apigee_instance", new()
///     {
///         Name = "apigee-instance",
///         Location = "us-central1",
///         Description = "Terraform-managed Apigee Runtime Instance",
///         DisplayName = "apigee-instance",
///         OrgId = apigeeOrg.Id,
///         DiskEncryptionKeyName = apigeeKey.Id,
///     });
///
///     var apigee_nat = new Gcp.Apigee.NatAddress("apigee-nat", new()
///     {
///         Name = "my-nat-address",
///         InstanceId = apigeeInstance.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigee"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := organizations.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeNetwork, err := compute.NewNetwork(ctx, "apigee_network", &compute.NetworkArgs{
/// 			Name: pulumi.String("apigee-network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeRange, err := compute.NewGlobalAddress(ctx, "apigee_range", &compute.GlobalAddressArgs{
/// 			Name:         pulumi.String("apigee-range"),
/// 			Purpose:      pulumi.String("VPC_PEERING"),
/// 			AddressType:  pulumi.String("INTERNAL"),
/// 			PrefixLength: pulumi.Int(21),
/// 			Network:      apigeeNetwork.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeVpcConnection, err := servicenetworking.NewConnection(ctx, "apigee_vpc_connection", &servicenetworking.ConnectionArgs{
/// 			Network: apigeeNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Service: pulumi.String("servicenetworking.googleapis.com"),
/// 			ReservedPeeringRanges: pulumi.StringArray{
/// 				apigeeRange.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeKeyring, err := kms.NewKeyRing(ctx, "apigee_keyring", &kms.KeyRingArgs{
/// 			Name:     pulumi.String("apigee-keyring"),
/// 			Location: pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeKey, err := kms.NewCryptoKey(ctx, "apigee_key", &kms.CryptoKeyArgs{
/// 			Name:    pulumi.String("apigee-key"),
/// 			KeyRing: apigeeKeyring.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeSa, err := projects.NewServiceIdentity(ctx, "apigee_sa", &projects.ServiceIdentityArgs{
/// 			Project: pulumi.Any(project.ProjectId),
/// 			Service: pulumi.Any(apigee.Service),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeSaKeyuser, err := kms.NewCryptoKeyIAMMember(ctx, "apigee_sa_keyuser", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: apigeeKey.ID().ToIDOutput().ToStringOutput(),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Member:      apigeeSa.Member,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeOrg, err := apigee.NewOrganization(ctx, "apigee_org", &apigee.OrganizationArgs{
/// 			AnalyticsRegion:                  pulumi.String("us-central1"),
/// 			DisplayName:                      pulumi.String("apigee-org"),
/// 			Description:                      pulumi.String("Terraform-provisioned Apigee Org."),
/// 			ProjectId:                        pulumi.String(current.Project),
/// 			AuthorizedNetwork:                apigeeNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			RuntimeDatabaseEncryptionKeyName: apigeeKey.ID().ToIDOutput().ToStringOutput(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			apigeeVpcConnection,
/// 			apigeeSaKeyuser,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeInstance, err := apigee.NewInstance(ctx, "apigee_instance", &apigee.InstanceArgs{
/// 			Name:                  pulumi.String("apigee-instance"),
/// 			Location:              pulumi.String("us-central1"),
/// 			Description:           pulumi.String("Terraform-managed Apigee Runtime Instance"),
/// 			DisplayName:           pulumi.String("apigee-instance"),
/// 			OrgId:                 apigeeOrg.ID().ToIDOutput().ToStringOutput(),
/// 			DiskEncryptionKeyName: apigeeKey.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigee.NewNatAddress(ctx, "apigee-nat", &apigee.NatAddressArgs{
/// 			Name:       pulumi.String("my-nat-address"),
/// 			InstanceId: apigeeInstance.ID().ToIDOutput().ToStringOutput(),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_getclientconfig" "current" {
/// }
///
/// resource "gcp_compute_network" "apigee_network" {
///   name = "apigee-network"
/// }
/// resource "gcp_compute_globaladdress" "apigee_range" {
///   name          = "apigee-range"
///   purpose       = "VPC_PEERING"
///   address_type  = "INTERNAL"
///   prefix_length = 21
///   network       = gcp_compute_network.apigee_network.id
/// }
/// resource "gcp_servicenetworking_connection" "apigee_vpc_connection" {
///   network                 = gcp_compute_network.apigee_network.id
///   service                 = "servicenetworking.googleapis.com"
///   reserved_peering_ranges = [gcp_compute_globaladdress.apigee_range.name]
/// }
/// resource "gcp_kms_keyring" "apigee_keyring" {
///   name     = "apigee-keyring"
///   location = "us-central1"
/// }
/// resource "gcp_kms_cryptokey" "apigee_key" {
///   name     = "apigee-key"
///   key_ring = gcp_kms_keyring.apigee_keyring.id
/// }
/// resource "gcp_projects_serviceidentity" "apigee_sa" {
///   project = project.projectId
///   service = apigee.service
/// }
/// resource "gcp_kms_cryptokeyiammember" "apigee_sa_keyuser" {
///   crypto_key_id = gcp_kms_cryptokey.apigee_key.id
///   role          = "roles/cloudkms.cryptoKeyEncrypterDecrypter"
///   member        = gcp_projects_serviceidentity.apigee_sa.member
/// }
/// resource "gcp_apigee_organization" "apigee_org" {
///   depends_on                           = [gcp_servicenetworking_connection.apigee_vpc_connection, gcp_kms_cryptokeyiammember.apigee_sa_keyuser]
///   analytics_region                     = "us-central1"
///   display_name                         = "apigee-org"
///   description                          = "Terraform-provisioned Apigee Org."
///   project_id                           = data.gcp_organizations_getclientconfig.current.project
///   authorized_network                   = gcp_compute_network.apigee_network.id
///   runtime_database_encryption_key_name = gcp_kms_cryptokey.apigee_key.id
/// }
/// resource "gcp_apigee_instance" "apigee_instance" {
///   name                     = "apigee-instance"
///   location                 = "us-central1"
///   description              = "Terraform-managed Apigee Runtime Instance"
///   display_name             = "apigee-instance"
///   org_id                   = gcp_apigee_organization.apigee_org.id
///   disk_encryption_key_name = gcp_kms_cryptokey.apigee_key.id
/// }
/// resource "gcp_apigee_nataddress" "apigee-nat" {
///   name        = "my-nat-address"
///   instance_id = gcp_apigee_instance.apigee_instance.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.kms.CryptoKey;
/// import com.pulumi.gcp.kms.CryptoKeyArgs;
/// import com.pulumi.gcp.projects.ServiceIdentity;
/// import com.pulumi.gcp.projects.ServiceIdentityArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.apigee.Organization;
/// import com.pulumi.gcp.apigee.OrganizationArgs;
/// import com.pulumi.gcp.apigee.Instance;
/// import com.pulumi.gcp.apigee.InstanceArgs;
/// import com.pulumi.gcp.apigee.NatAddress;
/// import com.pulumi.gcp.apigee.NatAddressArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var current = OrganizationsFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var apigeeNetwork = new Network("apigeeNetwork", NetworkArgs.builder()
///             .name("apigee-network")
///             .build());
///
///         var apigeeRange = new GlobalAddress("apigeeRange", GlobalAddressArgs.builder()
///             .name("apigee-range")
///             .purpose("VPC_PEERING")
///             .addressType("INTERNAL")
///             .prefixLength(21)
///             .network(apigeeNetwork.id())
///             .build());
///
///         var apigeeVpcConnection = new Connection("apigeeVpcConnection", ConnectionArgs.builder()
///             .network(apigeeNetwork.id())
///             .service("servicenetworking.googleapis.com")
///             .reservedPeeringRanges(apigeeRange.name())
///             .build());
///
///         var apigeeKeyring = new KeyRing("apigeeKeyring", KeyRingArgs.builder()
///             .name("apigee-keyring")
///             .location("us-central1")
///             .build());
///
///         var apigeeKey = new CryptoKey("apigeeKey", CryptoKeyArgs.builder()
///             .name("apigee-key")
///             .keyRing(apigeeKeyring.id())
///             .build());
///
///         var apigeeSa = new ServiceIdentity("apigeeSa", ServiceIdentityArgs.builder()
///             .project(project.get("projectId"))
///             .service(apigee.get("service"))
///             .build());
///
///         var apigeeSaKeyuser = new CryptoKeyIAMMember("apigeeSaKeyuser", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId(apigeeKey.id())
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .member(apigeeSa.member())
///             .build());
///
///         var apigeeOrg = new Organization("apigeeOrg", OrganizationArgs.builder()
///             .analyticsRegion("us-central1")
///             .displayName("apigee-org")
///             .description("Terraform-provisioned Apigee Org.")
///             .projectId(current.project())
///             .authorizedNetwork(apigeeNetwork.id())
///             .runtimeDatabaseEncryptionKeyName(apigeeKey.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     apigeeVpcConnection,
///                     apigeeSaKeyuser)
///                 .build());
///
///         var apigeeInstance = new Instance("apigeeInstance", InstanceArgs.builder()
///             .name("apigee-instance")
///             .location("us-central1")
///             .description("Terraform-managed Apigee Runtime Instance")
///             .displayName("apigee-instance")
///             .orgId(apigeeOrg.id())
///             .diskEncryptionKeyName(apigeeKey.id())
///             .build());
///
///         var apigee_nat = new NatAddress("apigee-nat", NatAddressArgs.builder()
///             .name("my-nat-address")
///             .instanceId(apigeeInstance.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   apigeeNetwork:
///     type: gcp:compute:Network
///     name: apigee_network
///     properties:
///       name: apigee-network
///   apigeeRange:
///     type: gcp:compute:GlobalAddress
///     name: apigee_range
///     properties:
///       name: apigee-range
///       purpose: VPC_PEERING
///       addressType: INTERNAL
///       prefixLength: 21
///       network: ${apigeeNetwork.id}
///   apigeeVpcConnection:
///     type: gcp:servicenetworking:Connection
///     name: apigee_vpc_connection
///     properties:
///       network: ${apigeeNetwork.id}
///       service: servicenetworking.googleapis.com
///       reservedPeeringRanges:
///         - ${apigeeRange.name}
///   apigeeKeyring:
///     type: gcp:kms:KeyRing
///     name: apigee_keyring
///     properties:
///       name: apigee-keyring
///       location: us-central1
///   apigeeKey:
///     type: gcp:kms:CryptoKey
///     name: apigee_key
///     properties:
///       name: apigee-key
///       keyRing: ${apigeeKeyring.id}
///   apigeeSa:
///     type: gcp:projects:ServiceIdentity
///     name: apigee_sa
///     properties:
///       project: ${project.projectId}
///       service: ${apigee.service}
///   apigeeSaKeyuser:
///     type: gcp:kms:CryptoKeyIAMMember
///     name: apigee_sa_keyuser
///     properties:
///       cryptoKeyId: ${apigeeKey.id}
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       member: ${apigeeSa.member}
///   apigeeOrg:
///     type: gcp:apigee:Organization
///     name: apigee_org
///     properties:
///       analyticsRegion: us-central1
///       displayName: apigee-org
///       description: Terraform-provisioned Apigee Org.
///       projectId: ${current.project}
///       authorizedNetwork: ${apigeeNetwork.id}
///       runtimeDatabaseEncryptionKeyName: ${apigeeKey.id}
///     options:
///       dependsOn:
///         - ${apigeeVpcConnection}
///         - ${apigeeSaKeyuser}
///   apigeeInstance:
///     type: gcp:apigee:Instance
///     name: apigee_instance
///     properties:
///       name: apigee-instance
///       location: us-central1
///       description: Terraform-managed Apigee Runtime Instance
///       displayName: apigee-instance
///       orgId: ${apigeeOrg.id}
///       diskEncryptionKeyName: ${apigeeKey.id}
///   apigee-nat:
///     type: gcp:apigee:NatAddress
///     properties:
///       name: my-nat-address
///       instanceId: ${apigeeInstance.id}
/// variables:
///   current:
///     fn::invoke:
///       function: gcp:organizations:getClientConfig
///       arguments: {}
/// ```
///
/// ### Apigee Nat Address With Activate
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const current = gcp.organizations.getClientConfig({});
/// const apigeeNetwork = new gcp.compute.Network("apigee_network", {name: "apigee-network"});
/// const apigeeRange = new gcp.compute.GlobalAddress("apigee_range", {
///     name: "apigee-range",
///     purpose: "VPC_PEERING",
///     addressType: "INTERNAL",
///     prefixLength: 21,
///     network: apigeeNetwork.id,
/// });
/// const apigeeVpcConnection = new gcp.servicenetworking.Connection("apigee_vpc_connection", {
///     network: apigeeNetwork.id,
///     service: "servicenetworking.googleapis.com",
///     reservedPeeringRanges: [apigeeRange.name],
/// });
/// const apigeeKeyring = new gcp.kms.KeyRing("apigee_keyring", {
///     name: "apigee-keyring",
///     location: "us-central1",
/// });
/// const apigeeKey = new gcp.kms.CryptoKey("apigee_key", {
///     name: "apigee-key",
///     keyRing: apigeeKeyring.id,
/// });
/// const apigeeSa = new gcp.projects.ServiceIdentity("apigee_sa", {
///     project: project.projectId,
///     service: apigee.service,
/// });
/// const apigeeSaKeyuser = new gcp.kms.CryptoKeyIAMMember("apigee_sa_keyuser", {
///     cryptoKeyId: apigeeKey.id,
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member: apigeeSa.member,
/// });
/// const apigeeOrg = new gcp.apigee.Organization("apigee_org", {
///     analyticsRegion: "us-central1",
///     displayName: "apigee-org",
///     description: "Terraform-provisioned Apigee Org.",
///     projectId: current.then(current => current.project),
///     authorizedNetwork: apigeeNetwork.id,
///     runtimeDatabaseEncryptionKeyName: apigeeKey.id,
/// }, {
///     dependsOn: [
///         apigeeVpcConnection,
///         apigeeSaKeyuser,
///     ],
/// });
/// const apigeeInstance = new gcp.apigee.Instance("apigee_instance", {
///     name: "apigee-instance",
///     location: "us-central1",
///     description: "Terraform-managed Apigee Runtime Instance",
///     displayName: "apigee-instance",
///     orgId: apigeeOrg.id,
///     diskEncryptionKeyName: apigeeKey.id,
/// });
/// const apigee_nat = new gcp.apigee.NatAddress("apigee-nat", {
///     name: "my-nat-address",
///     activate: true,
///     instanceId: apigeeInstance.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// current = gcp.organizations.get_client_config()
/// apigee_network = gcp.compute.Network("apigee_network", name="apigee-network")
/// apigee_range = gcp.compute.GlobalAddress("apigee_range",
///     name="apigee-range",
///     purpose="VPC_PEERING",
///     address_type="INTERNAL",
///     prefix_length=21,
///     network=apigee_network.id)
/// apigee_vpc_connection = gcp.servicenetworking.Connection("apigee_vpc_connection",
///     network=apigee_network.id,
///     service="servicenetworking.googleapis.com",
///     reserved_peering_ranges=[apigee_range.name])
/// apigee_keyring = gcp.kms.KeyRing("apigee_keyring",
///     name="apigee-keyring",
///     location="us-central1")
/// apigee_key = gcp.kms.CryptoKey("apigee_key",
///     name="apigee-key",
///     key_ring=apigee_keyring.id)
/// apigee_sa = gcp.projects.ServiceIdentity("apigee_sa",
///     project=project["projectId"],
///     service=apigee["service"])
/// apigee_sa_keyuser = gcp.kms.CryptoKeyIAMMember("apigee_sa_keyuser",
///     crypto_key_id=apigee_key.id,
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member=apigee_sa.member)
/// apigee_org = gcp.apigee.Organization("apigee_org",
///     analytics_region="us-central1",
///     display_name="apigee-org",
///     description="Terraform-provisioned Apigee Org.",
///     project_id=current.project,
///     authorized_network=apigee_network.id,
///     runtime_database_encryption_key_name=apigee_key.id,
///     opts = pulumi.ResourceOptions(depends_on=[
///             apigee_vpc_connection,
///             apigee_sa_keyuser,
///         ]))
/// apigee_instance = gcp.apigee.Instance("apigee_instance",
///     name="apigee-instance",
///     location="us-central1",
///     description="Terraform-managed Apigee Runtime Instance",
///     display_name="apigee-instance",
///     org_id=apigee_org.id,
///     disk_encryption_key_name=apigee_key.id)
/// apigee_nat = gcp.apigee.NatAddress("apigee-nat",
///     name="my-nat-address",
///     activate=True,
///     instance_id=apigee_instance.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Gcp.Organizations.GetClientConfig.Invoke();
///
///     var apigeeNetwork = new Gcp.Compute.Network("apigee_network", new()
///     {
///         Name = "apigee-network",
///     });
///
///     var apigeeRange = new Gcp.Compute.GlobalAddress("apigee_range", new()
///     {
///         Name = "apigee-range",
///         Purpose = "VPC_PEERING",
///         AddressType = "INTERNAL",
///         PrefixLength = 21,
///         Network = apigeeNetwork.Id,
///     });
///
///     var apigeeVpcConnection = new Gcp.ServiceNetworking.Connection("apigee_vpc_connection", new()
///     {
///         Network = apigeeNetwork.Id,
///         Service = "servicenetworking.googleapis.com",
///         ReservedPeeringRanges = new[]
///         {
///             apigeeRange.Name,
///         },
///     });
///
///     var apigeeKeyring = new Gcp.Kms.KeyRing("apigee_keyring", new()
///     {
///         Name = "apigee-keyring",
///         Location = "us-central1",
///     });
///
///     var apigeeKey = new Gcp.Kms.CryptoKey("apigee_key", new()
///     {
///         Name = "apigee-key",
///         KeyRing = apigeeKeyring.Id,
///     });
///
///     var apigeeSa = new Gcp.Projects.ServiceIdentity("apigee_sa", new()
///     {
///         Project = project.ProjectId,
///         Service = apigee.Service,
///     });
///
///     var apigeeSaKeyuser = new Gcp.Kms.CryptoKeyIAMMember("apigee_sa_keyuser", new()
///     {
///         CryptoKeyId = apigeeKey.Id,
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Member = apigeeSa.Member,
///     });
///
///     var apigeeOrg = new Gcp.Apigee.Organization("apigee_org", new()
///     {
///         AnalyticsRegion = "us-central1",
///         DisplayName = "apigee-org",
///         Description = "Terraform-provisioned Apigee Org.",
///         ProjectId = current.Apply(getClientConfigResult => getClientConfigResult.Project),
///         AuthorizedNetwork = apigeeNetwork.Id,
///         RuntimeDatabaseEncryptionKeyName = apigeeKey.Id,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             apigeeVpcConnection,
///             apigeeSaKeyuser,
///         },
///     });
///
///     var apigeeInstance = new Gcp.Apigee.Instance("apigee_instance", new()
///     {
///         Name = "apigee-instance",
///         Location = "us-central1",
///         Description = "Terraform-managed Apigee Runtime Instance",
///         DisplayName = "apigee-instance",
///         OrgId = apigeeOrg.Id,
///         DiskEncryptionKeyName = apigeeKey.Id,
///     });
///
///     var apigee_nat = new Gcp.Apigee.NatAddress("apigee-nat", new()
///     {
///         Name = "my-nat-address",
///         Activate = true,
///         InstanceId = apigeeInstance.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/apigee"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/servicenetworking"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := organizations.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeNetwork, err := compute.NewNetwork(ctx, "apigee_network", &compute.NetworkArgs{
/// 			Name: pulumi.String("apigee-network"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeRange, err := compute.NewGlobalAddress(ctx, "apigee_range", &compute.GlobalAddressArgs{
/// 			Name:         pulumi.String("apigee-range"),
/// 			Purpose:      pulumi.String("VPC_PEERING"),
/// 			AddressType:  pulumi.String("INTERNAL"),
/// 			PrefixLength: pulumi.Int(21),
/// 			Network:      apigeeNetwork.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeVpcConnection, err := servicenetworking.NewConnection(ctx, "apigee_vpc_connection", &servicenetworking.ConnectionArgs{
/// 			Network: apigeeNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			Service: pulumi.String("servicenetworking.googleapis.com"),
/// 			ReservedPeeringRanges: pulumi.StringArray{
/// 				apigeeRange.Name,
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeKeyring, err := kms.NewKeyRing(ctx, "apigee_keyring", &kms.KeyRingArgs{
/// 			Name:     pulumi.String("apigee-keyring"),
/// 			Location: pulumi.String("us-central1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeKey, err := kms.NewCryptoKey(ctx, "apigee_key", &kms.CryptoKeyArgs{
/// 			Name:    pulumi.String("apigee-key"),
/// 			KeyRing: apigeeKeyring.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeSa, err := projects.NewServiceIdentity(ctx, "apigee_sa", &projects.ServiceIdentityArgs{
/// 			Project: pulumi.Any(project.ProjectId),
/// 			Service: pulumi.Any(apigee.Service),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeSaKeyuser, err := kms.NewCryptoKeyIAMMember(ctx, "apigee_sa_keyuser", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: apigeeKey.ID().ToIDOutput().ToStringOutput(),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Member:      apigeeSa.Member,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeOrg, err := apigee.NewOrganization(ctx, "apigee_org", &apigee.OrganizationArgs{
/// 			AnalyticsRegion:                  pulumi.String("us-central1"),
/// 			DisplayName:                      pulumi.String("apigee-org"),
/// 			Description:                      pulumi.String("Terraform-provisioned Apigee Org."),
/// 			ProjectId:                        pulumi.String(current.Project),
/// 			AuthorizedNetwork:                apigeeNetwork.ID().ToIDOutput().ToStringOutput(),
/// 			RuntimeDatabaseEncryptionKeyName: apigeeKey.ID().ToIDOutput().ToStringOutput(),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			apigeeVpcConnection,
/// 			apigeeSaKeyuser,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		apigeeInstance, err := apigee.NewInstance(ctx, "apigee_instance", &apigee.InstanceArgs{
/// 			Name:                  pulumi.String("apigee-instance"),
/// 			Location:              pulumi.String("us-central1"),
/// 			Description:           pulumi.String("Terraform-managed Apigee Runtime Instance"),
/// 			DisplayName:           pulumi.String("apigee-instance"),
/// 			OrgId:                 apigeeOrg.ID().ToIDOutput().ToStringOutput(),
/// 			DiskEncryptionKeyName: apigeeKey.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = apigee.NewNatAddress(ctx, "apigee-nat", &apigee.NatAddressArgs{
/// 			Name:       pulumi.String("my-nat-address"),
/// 			Activate:   pulumi.Bool(true),
/// 			InstanceId: apigeeInstance.ID().ToIDOutput().ToStringOutput(),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// data "gcp_organizations_getclientconfig" "current" {
/// }
///
/// resource "gcp_compute_network" "apigee_network" {
///   name = "apigee-network"
/// }
/// resource "gcp_compute_globaladdress" "apigee_range" {
///   name          = "apigee-range"
///   purpose       = "VPC_PEERING"
///   address_type  = "INTERNAL"
///   prefix_length = 21
///   network       = gcp_compute_network.apigee_network.id
/// }
/// resource "gcp_servicenetworking_connection" "apigee_vpc_connection" {
///   network                 = gcp_compute_network.apigee_network.id
///   service                 = "servicenetworking.googleapis.com"
///   reserved_peering_ranges = [gcp_compute_globaladdress.apigee_range.name]
/// }
/// resource "gcp_kms_keyring" "apigee_keyring" {
///   name     = "apigee-keyring"
///   location = "us-central1"
/// }
/// resource "gcp_kms_cryptokey" "apigee_key" {
///   name     = "apigee-key"
///   key_ring = gcp_kms_keyring.apigee_keyring.id
/// }
/// resource "gcp_projects_serviceidentity" "apigee_sa" {
///   project = project.projectId
///   service = apigee.service
/// }
/// resource "gcp_kms_cryptokeyiammember" "apigee_sa_keyuser" {
///   crypto_key_id = gcp_kms_cryptokey.apigee_key.id
///   role          = "roles/cloudkms.cryptoKeyEncrypterDecrypter"
///   member        = gcp_projects_serviceidentity.apigee_sa.member
/// }
/// resource "gcp_apigee_organization" "apigee_org" {
///   depends_on                           = [gcp_servicenetworking_connection.apigee_vpc_connection, gcp_kms_cryptokeyiammember.apigee_sa_keyuser]
///   analytics_region                     = "us-central1"
///   display_name                         = "apigee-org"
///   description                          = "Terraform-provisioned Apigee Org."
///   project_id                           = data.gcp_organizations_getclientconfig.current.project
///   authorized_network                   = gcp_compute_network.apigee_network.id
///   runtime_database_encryption_key_name = gcp_kms_cryptokey.apigee_key.id
/// }
/// resource "gcp_apigee_instance" "apigee_instance" {
///   name                     = "apigee-instance"
///   location                 = "us-central1"
///   description              = "Terraform-managed Apigee Runtime Instance"
///   display_name             = "apigee-instance"
///   org_id                   = gcp_apigee_organization.apigee_org.id
///   disk_encryption_key_name = gcp_kms_cryptokey.apigee_key.id
/// }
/// resource "gcp_apigee_nataddress" "apigee-nat" {
///   name        = "my-nat-address"
///   activate    = "true"
///   instance_id = gcp_apigee_instance.apigee_instance.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.GlobalAddress;
/// import com.pulumi.gcp.compute.GlobalAddressArgs;
/// import com.pulumi.gcp.servicenetworking.Connection;
/// import com.pulumi.gcp.servicenetworking.ConnectionArgs;
/// import com.pulumi.gcp.kms.KeyRing;
/// import com.pulumi.gcp.kms.KeyRingArgs;
/// import com.pulumi.gcp.kms.CryptoKey;
/// import com.pulumi.gcp.kms.CryptoKeyArgs;
/// import com.pulumi.gcp.projects.ServiceIdentity;
/// import com.pulumi.gcp.projects.ServiceIdentityArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.apigee.Organization;
/// import com.pulumi.gcp.apigee.OrganizationArgs;
/// import com.pulumi.gcp.apigee.Instance;
/// import com.pulumi.gcp.apigee.InstanceArgs;
/// import com.pulumi.gcp.apigee.NatAddress;
/// import com.pulumi.gcp.apigee.NatAddressArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var current = OrganizationsFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var apigeeNetwork = new Network("apigeeNetwork", NetworkArgs.builder()
///             .name("apigee-network")
///             .build());
///
///         var apigeeRange = new GlobalAddress("apigeeRange", GlobalAddressArgs.builder()
///             .name("apigee-range")
///             .purpose("VPC_PEERING")
///             .addressType("INTERNAL")
///             .prefixLength(21)
///             .network(apigeeNetwork.id())
///             .build());
///
///         var apigeeVpcConnection = new Connection("apigeeVpcConnection", ConnectionArgs.builder()
///             .network(apigeeNetwork.id())
///             .service("servicenetworking.googleapis.com")
///             .reservedPeeringRanges(apigeeRange.name())
///             .build());
///
///         var apigeeKeyring = new KeyRing("apigeeKeyring", KeyRingArgs.builder()
///             .name("apigee-keyring")
///             .location("us-central1")
///             .build());
///
///         var apigeeKey = new CryptoKey("apigeeKey", CryptoKeyArgs.builder()
///             .name("apigee-key")
///             .keyRing(apigeeKeyring.id())
///             .build());
///
///         var apigeeSa = new ServiceIdentity("apigeeSa", ServiceIdentityArgs.builder()
///             .project(project.get("projectId"))
///             .service(apigee.get("service"))
///             .build());
///
///         var apigeeSaKeyuser = new CryptoKeyIAMMember("apigeeSaKeyuser", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId(apigeeKey.id())
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .member(apigeeSa.member())
///             .build());
///
///         var apigeeOrg = new Organization("apigeeOrg", OrganizationArgs.builder()
///             .analyticsRegion("us-central1")
///             .displayName("apigee-org")
///             .description("Terraform-provisioned Apigee Org.")
///             .projectId(current.project())
///             .authorizedNetwork(apigeeNetwork.id())
///             .runtimeDatabaseEncryptionKeyName(apigeeKey.id())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(
///                     apigeeVpcConnection,
///                     apigeeSaKeyuser)
///                 .build());
///
///         var apigeeInstance = new Instance("apigeeInstance", InstanceArgs.builder()
///             .name("apigee-instance")
///             .location("us-central1")
///             .description("Terraform-managed Apigee Runtime Instance")
///             .displayName("apigee-instance")
///             .orgId(apigeeOrg.id())
///             .diskEncryptionKeyName(apigeeKey.id())
///             .build());
///
///         var apigee_nat = new NatAddress("apigee-nat", NatAddressArgs.builder()
///             .name("my-nat-address")
///             .activate(true)
///             .instanceId(apigeeInstance.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   apigeeNetwork:
///     type: gcp:compute:Network
///     name: apigee_network
///     properties:
///       name: apigee-network
///   apigeeRange:
///     type: gcp:compute:GlobalAddress
///     name: apigee_range
///     properties:
///       name: apigee-range
///       purpose: VPC_PEERING
///       addressType: INTERNAL
///       prefixLength: 21
///       network: ${apigeeNetwork.id}
///   apigeeVpcConnection:
///     type: gcp:servicenetworking:Connection
///     name: apigee_vpc_connection
///     properties:
///       network: ${apigeeNetwork.id}
///       service: servicenetworking.googleapis.com
///       reservedPeeringRanges:
///         - ${apigeeRange.name}
///   apigeeKeyring:
///     type: gcp:kms:KeyRing
///     name: apigee_keyring
///     properties:
///       name: apigee-keyring
///       location: us-central1
///   apigeeKey:
///     type: gcp:kms:CryptoKey
///     name: apigee_key
///     properties:
///       name: apigee-key
///       keyRing: ${apigeeKeyring.id}
///   apigeeSa:
///     type: gcp:projects:ServiceIdentity
///     name: apigee_sa
///     properties:
///       project: ${project.projectId}
///       service: ${apigee.service}
///   apigeeSaKeyuser:
///     type: gcp:kms:CryptoKeyIAMMember
///     name: apigee_sa_keyuser
///     properties:
///       cryptoKeyId: ${apigeeKey.id}
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       member: ${apigeeSa.member}
///   apigeeOrg:
///     type: gcp:apigee:Organization
///     name: apigee_org
///     properties:
///       analyticsRegion: us-central1
///       displayName: apigee-org
///       description: Terraform-provisioned Apigee Org.
///       projectId: ${current.project}
///       authorizedNetwork: ${apigeeNetwork.id}
///       runtimeDatabaseEncryptionKeyName: ${apigeeKey.id}
///     options:
///       dependsOn:
///         - ${apigeeVpcConnection}
///         - ${apigeeSaKeyuser}
///   apigeeInstance:
///     type: gcp:apigee:Instance
///     name: apigee_instance
///     properties:
///       name: apigee-instance
///       location: us-central1
///       description: Terraform-managed Apigee Runtime Instance
///       displayName: apigee-instance
///       orgId: ${apigeeOrg.id}
///       diskEncryptionKeyName: ${apigeeKey.id}
///   apigee-nat:
///     type: gcp:apigee:NatAddress
///     properties:
///       name: my-nat-address
///       activate: 'true'
///       instanceId: ${apigeeInstance.id}
/// variables:
///   current:
///     fn::invoke:
///       function: gcp:organizations:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// NatAddress can be imported using any of these accepted formats:
///
/// * `{{instance_id}}/natAddresses/{{name}}`
/// * `{{instance_id}}/{{name}}`
///
///
/// When using the `pulumi import` command, NatAddress can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:apigee/natAddress:NatAddress default {{instance_id}}/natAddresses/{{name}}
/// $ pulumi import gcp:apigee/natAddress:NatAddress default {{instance_id}}/{{name}}
/// ```
class NatAddress extends pulumi.CustomResource {
  /// Flag that specifies whether the reserved NAT address should be activate.
  late final pulumi.Output<bool?> activate;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The Apigee instance associated with the Apigee environment,
  /// in the format `organizations/{{org_name}}/instances/{{instance_name}}`.
  late final pulumi.Output<String> instanceId;
  /// The allocated NAT IP address.
  late final pulumi.Output<String> ipAddress;
  /// Resource ID of the NAT address.
  late final pulumi.Output<String> name;
  /// State of the NAT IP address.
  late final pulumi.Output<String> state;

  /// Creates a new [NatAddress].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NatAddress]. {@macro pulumi_apigee_nat_address_nat_address_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NatAddress(
    String name, {
    NatAddressArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/natAddress:NatAddress',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    activate = registerOutput<bool?>('activate');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    instanceId = registerOutput<String>('instanceId');
    ipAddress = registerOutput<String>('ipAddress');
    this.name = registerOutput<String>('name');
    state = registerOutput<String>('state');
  }

  /// Gets an existing [NatAddress] resource's state with the given [name] and [id].
  static NatAddress get(
    String name,
    pulumi.Input<String> id, {
    NatAddressState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return NatAddress._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  NatAddress._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:apigee/natAddress:NatAddress',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activate = registerOutput<bool?>('activate');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    instanceId = registerOutput<String>('instanceId');
    ipAddress = registerOutput<String>('ipAddress');
    this.name = registerOutput<String>('name');
    this.state = registerOutput<String>('state');
  }

  /// Creates a typed reference to an existing [NatAddress] resource.
  NatAddress.reference(String urn)
    : super(
        'gcp:apigee/natAddress:NatAddress',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    activate = registerOutput<bool?>('activate');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    instanceId = registerOutput<String>('instanceId');
    ipAddress = registerOutput<String>('ipAddress');
    this.name = registerOutput<String>('name');
    state = registerOutput<String>('state');
  }
}
